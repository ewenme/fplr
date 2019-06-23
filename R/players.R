#' Get data on all players
#'
#' Retrieve player data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/elements/}{elements endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_player_all()
#' }
fpl_get_player_all <- function() {

    # read player data
    players <- read_lines(fpl_player_url)
    players <- fromJSON(players)

    # convert price vars into familiar denomination
    price_vars <- c("now_cost", "cost_change_start", "cost_change_event")
    players[price_vars] <- lapply(players[price_vars], function(x) x / 10)

    # convert numeric vars to numeric
    numeric_vars <- c(
      "value_form", "value_season", "selected_by_percent", "form",
      "points_per_game", "ep_this", "ep_next", "influence",
      "creativity", "threat", "ict_index"
      )

    players[numeric_vars] <- sapply(players[numeric_vars], as.numeric)

    as_tibble(players)
}

#' Get data on all players
#'
#' Retrieve player data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/elements/}{elements endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_player_all()
#' }
fpl_get_players <- function() {

  warning("This function is soft-deprecated, and will throw an error in future versions. Please use fpl_get_player_all() instead.")
  fpl_get_player_all()
}

#' Get data on a single player
#'
#' Retrieve data for a player in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/element-summary/1}{element summary endpoint}.
#'
#' @param player_id player's ID (\code{id} field from \code{\link{fpl_get_player_all}} output).
#'
#' @return a list
#'
#' @noRd
fpl_get_player <- function(player_id) {

  # get player list
  players <- fpl_get_player_all()

  # check player_id input is in range
  if (player_id > max(players$id)) stop(paste("player_id must be between", min(players$id),
                                              "and", max(players$id)), call. = FALSE)

  # read player data
  player_summary <- read_lines(paste(fpl_player_summary_url, player_id, sep = "/"))
  fromJSON(player_summary, simplifyVector = TRUE)
}

#' Get current season data on a player
#'
#' Retrieve gameweek-level data for a player in the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/drf/element-summary/1}{element summary endpoint}.
#'
#' @param player_id player's ID (\code{id} field from \code{\link{fpl_get_player_all}} output).
#'
#' @param convert_prices Convert player price-related metrics to familiar denominations
#' (TRUE by default)
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_player_current(player_id = 3)
#' }
fpl_get_player_current <- function(player_id, convert_prices = TRUE) {

  # get player data
  player <- fpl_get_player(player_id)

  # check player has current-season data
  if (!length(player$history) >= 1) stop("No data in this season is currently available for this player.",
                                         call. = FALSE)

  player_season <- player$history

  # convert price values to fpl-familiar denomination
  if (convert_prices) {

    player_season$value <- player_season$value / 10
  }

  # convert numeric vars to numeric class
  numeric_vars <- c("influence", "creativity", "threat", "ict_index")
  player_season[numeric_vars] <- sapply(player_season[numeric_vars], as.numeric)

  as_tibble(player_season)
}

#' Get historic season data on a player
#'
#' Retrieve historic seasons data for a player in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/element-summary/1}{element summary endpoint}.
#'
#' @inheritParams fpl_get_player_current
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_player_historic(player_id = 3)
#' }
fpl_get_player_historic <- function(player_id, convert_prices = TRUE) {

  # get player data
  player <- fpl_get_player(player_id)

  # check if player has season history
  if(!length(player$history_past) >= 1) stop("No historic data is currently available for this player.")

  player_history <- player$history_past

  # convert prices to fpl-familiar denomination
  if (convert_prices) {

    price_vars <- c("start_cost", "end_cost")
    player_history[price_vars] <- lapply(
      player_history[price_vars], function(x) x / 10
    )
  }

  as_tibble(player_history)
}

#' Get comprehensive data on a player
#'
#' Retrieve detailed data for a player in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/element-summary/1}{element summary endpoint}.
#'
#' @inheritParams fpl_get_player_current
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_player_detailed(player_id = 3)
#' }
fpl_get_player_detailed <- function(player_id, convert_prices = TRUE) {

  # get player list
  player <- fpl_get_player(player_id)

  # check if player has season history
  if(length(player$history_past) >= 1) {

    # convert prices to fpl-familiar denomination
    if (convert_prices) {

      price_vars <- c("start_cost", "end_cost")
      player$history_past[price_vars] <- lapply(
        player$history_past[price_vars], function(x) x / 10
      )
    }
  }

  # check if player has current-season data
  if (length(player$history) >= 1) {

    # convert price values to fpl-familiar denomination
    if (convert_prices) {

      player$history$value <- player$history$value / 10
    }

    # convert numeric vars to numeric class
    numeric_vars <- c("influence", "creativity", "threat", "ict_index")
    player$history[numeric_vars] <- sapply(player$history[numeric_vars], as.numeric)
  }

  player
}
