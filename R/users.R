#' Get data on a user
#'
#' Retrieve comprehensive data for a user in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385/history}{user entry history endpoint}.
#'
#' @param user_id user ID (found in a user's team page URL on the \href{https://fantasy.premierleague.com}{main FPL site}).
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' fpl_get_user(user_id = 3808385)
fpl_get_user <- function(user_id) {

  # read user data
  user_data <- read_lines(paste(fpl_user_entry_url, user_id, "history", sep = "/"))
  fromJSON(user_data, simplifyVector = TRUE)
}

#' Get entry data on a user
#'
#' Retrieve entry information for a user in the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' fpl_get_user_entry(user_id = 3808385)
fpl_get_user_entry <- function(user_id) {

  fpl_get_user(user_id)$entry
}

#' Get league data on a user
#'
#' Retrieve league information for a user in the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' fpl_get_user_leagues(user_id = 3808385)
fpl_get_user_leagues <- function(user_id) {

  fpl_get_user(user_id)$leagues
}

#' Get history data on a user
#'
#' Retrieve an FPL user's history data, obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @export
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fpl_get_user_history(user_id = 3808385)
fpl_get_user_history <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$history)
}

#' Get chips data on a user
#'
#' Retrieve an FPL user's chips data, obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @export
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fpl_get_user_chips(user_id = 3808385)
fpl_get_user_chips <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$chips)
}

#' Get season data on a user
#'
#' Retrieve an FPL user's season data, obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @export
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fpl_get_user_season(user_id = 3808385)
fpl_get_user_season <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$season)
}


#' Retrieve an FPL user's data for a gameweek in the current FPL season
#'
#' Retrieve an FPL user's gameweek player picks, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#' N.B. the current season must have started for this function to return data.
#'
#' @param user_id FPL user ID (retrieve from a user's team page on the \href{https://fantasy.premierleague.com}{FPL site}).
#'
#' @param gameweek FPL gameweek (1-38).
#'
#' @return a list
#'
#' @examples
#' \dontrun{
#' fpl_get_user_gameweek(user_id = 123, gameweek = 1)
#' }
#'

fpl_get_user_gameweek <- function(user_id, gameweek) {

  bootstrap <- fpl_get_bootstrap()

  if (is.null(bootstrap$`current-event`))
    stop("season hasn't started.")

  if(gameweek > bootstrap$`current-event`)
    stop("gameweek hasn't taken place yet.")

  # check the input is in range, stop if not
  if (!gameweek %in% 1:38)
    stop("gameweek isn't in expected range (1-38).")

  # get user picks data
  user_gameweek <- jsonlite::read_json(paste0(fpl_user_entry, user_id, "/event/", gameweek,
                                           "/picks"), simplifyVector = TRUE)

  # get user picks
  user_picks <- user_gameweek$picks

  # read fpl data
  extract <- fpl_get_bootstrap()

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
