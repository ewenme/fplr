#' Get data on gameweeks
#'
#' Retrieve gameweeks data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/events/}{events endpoint}.
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

  # read data
  data <- read_lines(fpl_events_url)

  # parse JSON
  as_tibble(fromJSON(data, simplifyVector = TRUE))

}

#' Get current gameweek
#'
#' Retrieve current gameweek via the
#'  \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static endpoint}.
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
#'  \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static endpoint}.
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
