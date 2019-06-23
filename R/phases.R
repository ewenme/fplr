#' Get data on phases
#'
#' Retrieve phases data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/phases/}{phases endpoint}.
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

  # read data
  data <- read_lines(fpl_phases_url)

  # parse JSON
  as_tibble(fromJSON(data, simplifyVector = TRUE))

}
