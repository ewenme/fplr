#' Retrieve fixture data for the current FPL season
#'
#' Retrieve fixture data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/bootstrap-static}{bootstrap-static JSON}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fixtures <- fpl_get_fixtures()

fpl_get_fixtures <- function() {

    # read fpl data
    extract <- jsonlite::read_json(fpl_static, simplifyVector = TRUE)

    # get fpl fixtures
    fixtures <- jsonlite::read_json(fpl_fixtures, simplifyVector = TRUE)

    # replace team codes with team names
    fixtures$team_a <- with(extract$teams, name[match(fixtures$team_a, id)])
    fixtures$team_h <- with(extract$teams, name[match(fixtures$team_h, id)])

    # fix date variables
    fixtures$deadline_time <- lubridate::ymd_hms(fixtures$deadline_time)
    fixtures$kickoff_time <- lubridate::ymd_hms(fixtures$kickoff_time)

    return(tibble::as_tibble(fixtures))

}
