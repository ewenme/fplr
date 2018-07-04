#' Retrieve an FPL user's performance data
#'
#' Retrieve an FPL user's performance data, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @param user_id FPL user ID (retrieve from a user's team page on the \href{https://fantasy.premierleague.com}{FPL site}).
#'
#' @export
#'
#' @return a list
#'
#' @examples
#' fpl_get_user_performance(user_id = 123)

fpl_get_user_performance <- function(user_id) {

  # get data
  data <- jsonlite::read_json(paste0(fpl_user_entry, user_id, "/history"), simplifyVector = TRUE)

  return(data)

}


#' Retrieve an FPL user's data for a gameweek in the current FPL season
#'
#' Retrieve an FPL user's gameweek player picks, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}
#' (season has to be in-play).
#'
#' @param user_id FPL user ID (retrieve from a user's team page on the \href{https://fantasy.premierleague.com}{FPL site}).
#'
#' @param gameweek FPL gameweek (1-38).
#'
#' @export
#'
#' @return a list
#'
#' @examples
#' fpl_get_user_gameweek(user_id = 123, gameweek = 1)

fpl_get_user_gameweek <- function(user_id, gameweek) {

  # check the input is in range, stop if not
  if (!gameweek %in% 1:38)
    stop("gameweek isn't in expected range (1-38).")

  # get player/teams list
  players <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

  # get user picks data
  user_gameweek <- jsonlite::read_json(paste0(fpl_user_entry, user_id, "/event/", gameweek,
                                           "/picks"), simplifyVector = TRUE)

  # get user picks
  user_picks <- user_gameweek$picks

  # read fpl data
  extract <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

  # extract player data
  players <- extract$elements

  # get detailed info for players picked
  user_picks_detailed <- purrr::map_dfr(user_picks$element, fpl_get_player_detailed)

  # isolate data for gameweek specified
  user_picks_detailed <- subset(user_picks_detailed, round == gameweek)

  # merge player data with picks
  user_picks <- merge(user_picks, user_picks_detailed, by="element")

  # put back into gameweek data object
  user_gameweek$picks <- tibble::as_tibble(user_picks)

  return(user_gameweek)

}
