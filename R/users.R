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
#' \donttest{
#' fpl_get_user(user_id = 3808385)
#' }
fpl_get_user <- function(user_id) {

  # read user data
  user_data <- curl(paste(fpl_user_entry_url, user_id, "history", sep = "/"))
  fromJSON(user_data, simplifyVector = TRUE)
}

#' Get current season data on a user
#'
#' Retrieve entry information for a user in the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/drf/entry/3808385}{user entry history endpoint}.
#'
#' @inheritParams fpl_get_user
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_user_current(user_id = 3808385)
#' }
fpl_get_user_current <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$current)
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
#' \donttest{
#' fpl_get_user_leagues(user_id = 3808385)
#' }
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
#' \donttest{
#' fpl_get_user_history(user_id = 3808385)
#' }
fpl_get_user_history <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$past)
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
#' \donttest{
#' fpl_get_user_chips(user_id = 3808385)
#' }
fpl_get_user_chips <- function(user_id) {

  as_tibble(fpl_get_user(user_id)$chips)
}
