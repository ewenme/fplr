#' Get data on fixtures
#'
#' Retrieve data on fixtures for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/drf/fixtures/}{fixtures endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' fpl_get_fixtures()

fpl_get_fixtures <- function() {

    # read in fixtures data
    data <- read_lines(fpl_fixtures_url)

    # parse JSON
    parsed_data <- fromJSON(data)

    # # fix date variables
    parsed_data$deadline_time <- as.POSIXct(parsed_data$deadline_time)
    parsed_data$kickoff_time <- as.POSIXct(parsed_data$kickoff_time)

    as_tibble(parsed_data)

}
