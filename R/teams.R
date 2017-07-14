#' Summary data for teams in the current FPL season
#'
#' Gives a tibble containing summary data for all teams in the current FPL season.
#' @export
#' @examples
#' teams()

teams <- function() {
    
    # read in json player data, simplify vectors to make easy transfer to dataframe
    extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static", simplifyVector = TRUE)
    
    return(tibble::as.tibble(extract$teams))
    
}
