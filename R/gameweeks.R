#' Get data on gameweeks
#'
#' Retrieve gameweeks data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/api/events/}{events endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_gameweeks()
#' }
fpl_get_gameweeks <- function() {

  as_tibble(fpl_get_bootstrap()$events)

}

#' Get data on current gameweek
#'
#' Retrieve current gameweek via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static endpoint}.
#'
#' @export
#'
#' @return a tibble
#'
#' @examples
#' \donttest{
#' fpl_get_gameweek_current()
#' }
fpl_get_gameweek_current <- function() {

  gameweeks <- fpl_get_gameweeks()

  gameweeks[gameweeks$is_current, ]
}

#' Get data on next gameweek
#'
#' Retrieve next gameweek via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static endpoint}.
#'
#' @export
#'
#' @return a tibble
#'
#' @examples
#' \donttest{
#' fpl_get_gameweek_next()
#' }
fpl_get_gameweek_next <- function() {

  gameweeks <- fpl_get_gameweeks()

  gameweeks[gameweeks$is_next, ]
}
