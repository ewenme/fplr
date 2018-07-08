#' Retrieve player data for the current FPL season
#'
#' Retrieve player data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' players <- fpl_get_players()

fpl_get_players <- function() {

    # read fpl data
    extract <- fpl_get_bootstrap()

    # extract player data
    players <- extract$elements

    # replace codes with matching values
    players$team_name <- with(extract$teams, name[match(players$team_code, code)])
    players$position <- with(extract$element_types, singular_name[match(players$element_type, id)])
    players$status <- with(player_statuses, player_status[match(players$status, id)])

    # convert price values to be an fpl-familiar denomination
    price_vars <- c("now_cost", "cost_change_start", "cost_change_event")
    players[price_vars] <- lapply(players[price_vars], function(x) x / 10)

    # convert numeric vars to numeric class
    numeric_vars <- c("value_form", "value_season", "selected_by_percent", "form",
                      "points_per_game", "ep_this", "ep_next", "influence",
                      "creativity", "threat", "ict_index")
    players[numeric_vars] <- sapply(players[numeric_vars], as.numeric)

    return(tibble::as_tibble(players))

}


#' Retrieve detailed data for a player in the current FPL season
#'
#' Retrieve detailed data for a player in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @param player_id \code{id} field from \code{\link{fpl_get_players}}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \dontrun{
#' fpl_get_player_detailed(player_id = 2)
#' }

fpl_get_player_detailed <- function(player_id) {

  # get player list
  players <- fpl_get_bootstrap()

  # check the input is in range, stop if not
  if (!player_id %in% 1:length(players$elements$id))
    stop("player_id out of range.")

  # read in json player data, simplify vectors to make easy transfer to dataframe
  player_summary <- jsonlite::read_json(paste0(fpl_player_summary, player_id), simplifyVector = TRUE)

  # check if player has season history
  if(length(player_summary$history_past) >= 1) {

    # extract historic seasons data ONLY
    player_summary_history <- player_summary$history_past

    # convert numeric vars to numeric class
    numeric_vars <- c("influence", "creativity", "threat", "ict_index")
    player_summary_history[numeric_vars] <- sapply(player_summary_history[numeric_vars], as.numeric)

    # convert prices to fpl-familiar denomination
    player_summary_history[c("start_cost", "end_cost")] <- lapply(player_summary_history[c("start_cost", "end_cost")],
                                                                  function(x) x / 10)

    # re-add history past
    player_summary$history_past <- player_summary_history
  }

  # extract current seasons data
  player_summary_history <- player_summary$history

  if (length(player_summary_history) >= 1) {

    # replace codes with matching values
    player_summary_history$opponent_team <- with(players$teams, name[match(player_summary_history$opponent_team, id)])

    # convert price values to fpl-familiar denomination
    player_summary_history$value <- player_summary_history$value / 10

    # convert numeric vars to numeric class
    numeric_vars <- c("influence", "creativity", "threat", "ict_index")
    player_summary_history[numeric_vars] <- sapply(player_summary_history[numeric_vars], as.numeric)
  }

  return(player_summary)
}
