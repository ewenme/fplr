#' Get data on fixtures
#'
#' Retrieve data on fixtures for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/api/fixtures/}{fixtures endpoint}.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_fixtures()
#' }
fpl_get_fixtures <- function() {

    # read in fixtures data
    data <- read_lines(fpl_fixtures_url)

    # parse JSON
    parsed_data <- fromJSON(data)

    # fix date variables
    parsed_data$kickoff_time <- as.POSIXct(parsed_data$kickoff_time)

    as_tibble(parsed_data)
}

#' Get detailed data on a gameweek's fixtures
#'
#' Retrieve detailed data on a gameweek's fixtures for the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/api/fixtures/?event=1}{fixtures event endpoint}.
#'
#' @param gameweek Gameweek no.
#'
#' @return a tibble
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_fixtures_gameweek(gameweek = 8)
#' }
fpl_get_fixtures_gameweek <- function(gameweek) {

    if (gameweek > 38) stop("gameweek must be a number between 1 and 38.")

    # read in fixtures data
    data <- read_lines(paste0(fpl_fixtures_url, "/?event=", gameweek))

    # parse JSON
    parsed <- fromJSON(data)

    # fix date variables
    parsed$kickoff_time <- as.POSIXct(parsed$kickoff_time)

    as_tibble(parsed)
}
