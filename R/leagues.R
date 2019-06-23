#' Get data on a classic league
#'
#' Retrieve a classic league's data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/leagues-classic-standings/1137}{leagues classic standings endpoint}.
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_leagues_classic(league_id = 1137)
#' }
fpl_get_leagues_classic <- function(league_id) {

  # read league data
  league_data <- read_lines(paste(fpl_league_classic_url, league_id, sep = "/"))
  fromJSON(league_data, simplifyVector = TRUE)
}

#' Get data on a head-to-head league
#'
#' Retrieve a head-to-head league's data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/leagues-h2h-standings/829116}{leagues h2h standings endpoint}.
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_leagues_h2h(league_id = 829116)
#' }
fpl_get_leagues_h2h <- function(league_id) {

  # read league data
  league_data <- read_lines(paste(fpl_league_h2h_url, league_id, sep = "/"))
  fromJSON(league_data, simplifyVector = TRUE)
}
