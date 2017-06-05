#' getPlayerDetailed
#'
#' Returns a tibble containing round-by-round data for a player in the current FPL season.
#' @param player_id Player ID.
#' @keywords player
#' @export
#' @examples
#' getPlayerDetailed()

getPlayerDetailed <- function(player_id) {

  #look-up table of teams
  teams <- data.frame(id=1:20,
                      team_name=c( "Arsenal", "Bournemouth", "Burnley", "Chelsea", "Crystal Palace",
                                   "Everton", "Hull City", "Leicester City", "Liverpool",
                                   "Manchester City", "Manchester United", "Middlesbrough",
                                   "Southampton", "Stoke City", "Sunderland", "Swansea City",
                                   "Tottenham Hotspur", "Watford", "West Bromwich Albion",
                                   "West Ham"))

  #read in json player data, simplify vectors to make easy transfer to dataframe
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/element-summary/",
                                     player_id),
                    simplifyVector = TRUE)

  #extract current seasons data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$history)

  #replace codes with matching values
  data$opponent_team <- with(teams, team_name[match(data$opponent_team, teams$id)])

  #convert var types
  data$influence <- as.numeric(data$influence)
  data$creativity <- as.numeric(data$creativity)
  data$threat <- as.numeric(data$threat)
  data$ict_index <- as.numeric(data$ict_index)

  #append player id
  data$player_id <- data$element

  data <- subset(data, select=-element)

  return(data)

}
