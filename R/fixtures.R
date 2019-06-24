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
#' \donttest{
#' fpl_get_fixtures()
#' }
fpl_get_fixtures <- function() {

    # read in fixtures data
    data <- read_lines(fpl_fixtures_url)

    # parse JSON
    parsed_data <- fromJSON(data)

    # fix date variables
    parsed_data$deadline_time <- as.POSIXct(parsed_data$deadline_time)
    parsed_data$kickoff_time <- as.POSIXct(parsed_data$kickoff_time)

    as_tibble(parsed_data)
}

#' Get detailed data on a gameweek's fixtures
#'
#' Retrieve detailed data on a gameweek's fixtures for the current FPL season,
#' obtained via the
#' \href{https://fantasy.premierleague.com/drf/fixtures/?event=1}{fixtures event endpoint}.
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

    # read in fixtures data
    data <- read_lines(paste0(fpl_fixtures_url, "/?event=", gameweek))

    # parse JSON
    parsed <- fromJSON(data, simplifyDataFrame = FALSE)

    # isolate stats
    stats <- lapply(parsed, "[[", "stats")

    # rm stats from JSON
    parsed <- lapply(parsed, function(x){x$stats <- NULL; x})

    # convert to df
    parsed_df <- do.call(rbind.data.frame, c(parsed, stringsAsFactors = FALSE))

    # append stats
    parsed_df$stats <- stats

    # fix date variables
    parsed_df$deadline_time <- as.POSIXct(parsed_df$deadline_time)
    parsed_df$kickoff_time <- as.POSIXct(parsed_df$kickoff_time)

    as_tibble(parsed_df)
}
