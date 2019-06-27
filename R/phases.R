#' Get data on phases
#'
#' Retrieve phases data for the current FPL season, obtained via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static API endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_phases()
#' }
fpl_get_phases <- function() {

  as_tibble(fpl_get_bootstrap()$phases)

}
