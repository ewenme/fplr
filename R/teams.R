#' Retrieve team data for the current FPL season
#'
#' Retrieve team data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' teams <- fpl_get_teams()

fpl_get_teams <- function() {

    # read in json player data, simplify vectors to make easy transfer to dataframe
    extract <- fpl_get_bootstrap()

    return(tibble::as_tibble(extract$teams))

}
