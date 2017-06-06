#' playerNames
#'
#' Returns the current FPL season's player names, along with their team and squad number. This is used in calls to other functions (see \code{getPlayerId}).
#' @keywords players
#' @export
#' @examples
#' playerNames()

playerNames <- function() {

  #read in json player data, simplify vectors to make easy transfer to dataframe
  extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                              simplifyVector = TRUE)

  #extract player data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$elements)

  #add player name field
  data$player_name <- paste(data$first_name, data$second_name)

  #replace codes with matching values
  data$team_name <- with(extract$teams, name[match(data$team_code, code)])

  return(tibble::as.tibble(subset(data, select=c(player_name, team_name, squad_number))))

}
