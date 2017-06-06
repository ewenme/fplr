#' playerNames
#'
#' Returns the current FPL season's player names, along with their team and squad number. This is used in calls to other functions (see \code{getPlayerId}).
#' @keywords players
#' @export
#' @examples
#' playerNames()

playerNames <- function() {

  #look-up table of teams
  teams <- data.frame(id=c(1, 3, 6, 8, 11, 13, 14, 20, 21, 25, 31, 35, 43, 56, 57, 80, 88, 90, 91,
                           110),
                      team_name=c("Manchester United", "Arsenal", "Tottenham Hotspur", "Chelsea",
                                  "Everton", "Leicester City", "Liverpool", "Southampton",
                                  "West Ham", "Middlesbrough", "Crystal Palace",
                                  "West Bromwich Albion", "Manchester City", "Sunderland",
                                  "Watford", "Swansea City", "Hull City", "Burnley",
                                  "Bournemouth", "Stoke City"))

  #read in json player data, simplify vectors to make easy transfer to dataframe
  data <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                              simplifyVector = TRUE)

  #extract player data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$elements)

  #add player name field
  data$player_name <- paste(data$first_name, data$second_name)

  #replace codes with matching values
  data$team_name <- with(teams, team_name[match(data$team_code, id)])

  data <- tibble::as.tibble(subset(data, select=c(player_name, team_name, squad_number)))

}
