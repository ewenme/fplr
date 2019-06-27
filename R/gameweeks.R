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

#' Get current gameweek
#'
#' Retrieve current gameweek via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static endpoint}.
#'
#' @export
#'
#' @return numeric vector
#'
#' @examples
#' \donttest{
#' fpl_get_gameweek_current()
#' }
fpl_get_gameweek_current <- function() {

  fpl_get_bootstrap()$`current-event`
}

#' Get next gameweek
#'
#' Retrieve next gameweek via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static endpoint}.
#'
#' @export
#'
#' @return numeric vector
#'
#' @examples
#' \donttest{
#' fpl_get_gameweek_next()
#' }
fpl_get_gameweek_next <- function() {

  fpl_get_bootstrap()$`next-event`
}
