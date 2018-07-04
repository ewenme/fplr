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
    extract <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

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

    return(players)

}


#' Retrieve detailed data for a player in the current FPL season
#'
#' Retrieve detailed (gameweek-level) data for a player in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @param player_id \code{id} field from \code{\link{fpl_get_players}} tibble for a desired player.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fpl_get_player_detailed(player_id = 1)
#' fpl_get_player_detailed(player_id = 54)

fpl_get_player_detailed <- function(player_id) {

  # get player list
  players <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

  # check the input is in range, stop if not
  if (!player_id %in% 1:length(players$elements$id))
    stop("player_id out of range.")

  # read in json player data, simplify vectors to make easy transfer to dataframe
  player_summary <- jsonlite::read_json(paste0(fpl_player_summary, player_id), simplifyVector = TRUE)

  # extract current seasons data
  player_summary <- player_summary$history

  if (length(player_summary) < 1)
    stop("No data for the current season.")

  # replace codes with matching values
  player_summary$opponent_team <- with(players$teams, name[match(player_summary$opponent_team, id)])

  # convert price values to fpl-familiar denomination
  player_summary$value <- player_summary$value / 10

  # convert numeric vars to numeric class
  numeric_vars <- c("influence", "creativity", "threat", "ict_index")
  player_summary[numeric_vars] <- sapply(player_summary[numeric_vars], as.numeric)

  return(tibble::as_tibble(player_summary))

}


#' Historic FPL seasons overview for a player in the current season
#'
#' Returns a tibble containing a season history overview for a given player in the current FPL season.
#' @param player_id \code{id} field from \code{\link{players}} tibble for a desired player.
#' @export
#' @examples
#' playerSeasons(player_id = 1)

playerSeasons <- function(player_id) {

  # check the input is numeric, stop if not
  player_id <- as.numeric(player_id)

  # get player list
  players <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static", simplifyVector = TRUE)

  # check the input is in range, stop if not
  if (!player_id %in% 1:length(players$elements$id))
    stop("player_id not in range.")

  # read in json player data, simplify vectors to make easy transfer to dataframe
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/element-summary/", player_id), simplifyVector = TRUE)

  # check if player has season history, stop if not
  if(length(data$history_past) == 0)
    stop("player_id has no historic data.")

  # extract current seasons data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$history_past)

  # convert var types
  data$influence <- as.numeric(data$influence)
  data$creativity <- as.numeric(data$creativity)
  data$threat <- as.numeric(data$threat)
  data$ict_index <- as.numeric(data$ict_index)

  # convert values to fpl-familiar style
  data$start_price <- data$start_cost/10
  data$end_price <- data$end_cost/10

  # append player id
  data$player_id <- player_id

  data <- subset(data, select = -c(start_cost, end_cost))

  return(data)
}
