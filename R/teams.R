#' Get data on teams
#'
#' Retrieve data on teams in the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/teams}{teams endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_teams()
#' }

fpl_get_teams <- function() {

  as_tibble(fpl_get_bootstrap()$teams)

}
