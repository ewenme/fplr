#' Get FPL's bootstrap-static data
#'
#' Retrieve FPL's \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static}
#' JSON data in full.
#'
#' @export
#'
#' @return a list
#'
#' @examples
#' \donttest{
#' fpl_get_bootstrap()
#' }

fpl_get_bootstrap <- function() {

  # read data
  data <- read_lines(fpl_bootstrap_static_url)

  # parse JSON
  fromJSON(data, simplifyVector = TRUE)

}
