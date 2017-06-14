#' Summary data for fixtures in the current FPL season
#'
#' Gives a tibble containing data on all fixtures in the current FPL season.
#' @export
#' @examples
#' fixtures()

fixtures <- function() {

  #read in json player data, simplify vectors to make easy transfer to dataframe
  extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                                 simplifyVector = TRUE)

  teams <- extract$teams

  #get fixtures
  fixtures <- jsonlite::read_json("https://fantasy.premierleague.com/drf/fixtures/",
                                      simplifyVector = TRUE)

  #replace codes with matching values
  fixtures$team_a <- with(teams, name[match(fixtures$team_a, id)])
  fixtures$team_h <- with(teams, name[match(fixtures$team_h, id)])

  fixtures <- subset(fixtures, select = -c(provisional_start_time,
                                           finished_provisional, started,
                                           deadline_time, deadline_time_formatted))

  return(tibble::as.tibble(fixtures))

}
