#' Retrieve FPL bootstrap-static JSON in full
#'
#' Retrieve FPL \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}
#' JSON in full.
#'
#' @export
#'
#' @return a list
#'
#' @examples
#' fpl_get_bootstrap()

fpl_get_bootstrap <- function() {

  data <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

  return(data)

}

