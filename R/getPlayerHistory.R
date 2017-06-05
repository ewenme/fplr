#' getPlayerHistory
#'
#' Returns a tibble containing historical seasons data for a player in the current FPL season.
#' @param player_id Player ID.
#' @keywords players
#' @export
#' @examples
#' getPlayersHistory()

getPlayerHistory <- function(player_id) {

  #read in json player data, simplify vectors to make easy transfer to dataframe
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/element-summary/",
                                     player_id),
                    simplifyVector = TRUE)

  #extract current seasons data ONLY, convert to tibble format
  data <- tibble::as.tibble(data$history_past)

  #convert var types
  data$influence <- as.numeric(data$influence)
  data$creativity <- as.numeric(data$creativity)
  data$threat <- as.numeric(data$threat)
  data$ict_index <- as.numeric(data$ict_index)

  #convert values to fpl-familiar style
  data$start_price <- data$start_cost / 10
  data$end_price <- data$end_cost / 10

  #append player id
  data$player_id <- player_id

  data <- subset(data, select=-c(start_cost, end_cost))

  return(data)
}
