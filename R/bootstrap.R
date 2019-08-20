#' Get all bootstrap-static data
#'
#' Retrieve all available data via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static API endpoint}.
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
  data <- curl(fpl_bootstrap_static_url)

  # parse JSON
  fromJSON(data, simplifyVector = TRUE)

}

#' Get statistics variables' label/name values
#'
#' Retrieve statistic variable label and name lookup values via the
#'  \href{https://fantasy.premierleague.com/api/bootstrap-static}{bootstrap-static API endpoint}.
#'
#' @export
#'
#' @return a tibble
#'
#' @examples
#' \donttest{
#' fpl_get_stats_lookup()
#' }
fpl_get_stats_lookup <- function() {

  as_tibble(fpl_get_bootstrap()$element_stats)
}
