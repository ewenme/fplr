#' getPlayerId
#'
#' Returns the player_id for a given FPL player in the current FPL season. This is used in calls to other functions (see \code{getPlayerDetailed} and \code{getPlayerSeasons}).
#' @param player_name Name of player.
#' @param team_name Name of team.
#' @keywords player
#' @export
#' @examples
#' getPlayerId(player_name = "Petr Cech", team_name = "Arsenal")

getPlayerId <- function(player_name, team_name) {

  #check the inputs are character, stop if not
  if (!is.character(player_name))
    stop("player_name isn't character format.")

  if (!is.character(team_name))
    stop("team_name isn't character format.")

  #read in json player data, simplify vectors to make easy transfer to dataframe
  extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                                 simplifyVector = TRUE)

  # #look-up table of teams
  # teams <- data.frame(id=c(1, 3, 6, 8, 11, 13, 14, 20, 21, 25, 31, 35, 43, 56, 57, 80, 88, 90, 91,
  #                          110),
  #                     team_name=c("Manchester United", "Arsenal", "Tottenham Hotspur", "Chelsea",
  #                                 "Everton", "Leicester City", "Liverpool", "Southampton",
  #                                 "West Ham", "Middlesbrough", "Crystal Palace",
  #                                 "West Bromwich Albion", "Manchester City", "Sunderland",
  #                                 "Watford", "Swansea City", "Hull City", "Burnley",
  #                                 "Bournemouth", "Stoke City"))

  #check the team name is in the list
  if (!team_name %in% extract$teams$name)
    stop("team_name not found.")

  #extract player data ONLY
  data <- data$elements

  #add player name field
  data$player_name <- paste(data$first_name, data$second_name)

  #check the player name is in the list
  stopifnot(player_name %in% data$player_name)

  #data frame of inputs
  inputs <- data.frame(name=player_name, team=team_name)

  #replace codes with matching values
  data$team_name <- with(extract$teams, name[match(data$team_code, code)])

  #match inputs with corresponding player in fpl list
  player_match <- data$id[match(interaction(data$player_name, data$team_name),
                       interaction(inputs$name, inputs$team))]

  return(data$id[which(player_match == 1)])

}

test <- getPlayerId("Calum Chambers", "Arsenal")
