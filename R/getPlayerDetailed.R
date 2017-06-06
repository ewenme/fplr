#' getPlayerDetailed
#'
#' Returns a tibble containing round-by-round data for a given player in the current FPL season.
#' @param player_id \code{id} field from \code{getPlayers()} tibble for a desired player.
#' @keywords player
#' @export
#' @examples
#' getPlayerDetailed(player_id = 1)
#' getPlayerDetailed(player_id = 54)

getPlayerDetailed <- function(player_id) {

  #check the input is numeric, stop if not
  if (!is.numeric(player_id))
    stop("player_id isn't numeric format.")

  #get player list
  players <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                              simplifyVector = TRUE)

  #check the input is in range, stop if not
  if (!player_id %in% 1:length(players$elements$id))
    stop("player_id not found.")

  #read in json player data, simplify vectors to make easy transfer to dataframe
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/element-summary/",
                                     player_id),
                    simplifyVector = TRUE)

  #extract current seasons data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$history)

  #replace codes with matching values
  data$opponent_team <- with(players$teams, name[match(data$opponent_team, id)])

  #convert values to fpl-familiar style
  data$price <- data$value / 10

  #convert var types
  data$influence <- as.numeric(data$influence)
  data$creativity <- as.numeric(data$creativity)
  data$threat <- as.numeric(data$threat)
  data$ict_index <- as.numeric(data$ict_index)

  #append player id
  data$player_id <- data$element

  data <- subset(data, select= -c(element, value))

  return(data)

}
