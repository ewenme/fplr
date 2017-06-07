#' getPlayerSeasons
#'
#' Returns a tibble containing a season history overview for a given player in the current FPL season.
#' @param player_id \code{id} field from \code{\link{getPlayers}} tibble for a desired player.
#' @export
#' @examples
#' getPlayerSeasons(player_id = 1)
#' getPlayerSeasons(player_id = 54)

getPlayerSeasons <- function(player_id) {

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
