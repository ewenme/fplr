#' Summary player data for the current FPL season
#'
#' Gives a tibble containing summary data for all players in the current FPL season.
#' @export
#' @examples
#' players()

players <- function() {
    
    # look-up table of player statuses
    status <- data.frame(id = c("a", "d", "i", "s", "u"), player_status = c("Available", "Doubtful", "Injured", 
        "Suspended", "Unavailable"))
    
    # read in json player data, simplify vectors to make easy transfer to dataframe
    extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static", simplifyVector = TRUE)
    
    # extract player data ONLY, convert to tibble format
    data <- tibble::as.tibble(extract$elements)
    
    # replace codes with matching values
    data$team_name <- with(extract$teams, name[match(data$team_code, code)])
    data$position <- with(extract$element_types, singular_name[match(data$element_type, id)])
    data$status <- with(status, player_status[match(data$status, id)])
    
    # convert values to fpl-familiar style
    data$price <- data$now_cost/10
    data$price_change_abs <- data$cost_change_start/10
    data$price_change_round <- data$cost_change_event/10
    
    # convert var names
    data$transfers_out_round <- data$transfers_out_event
    data$transfers_in_round <- data$transfers_in_event
    data$round_points <- data$event_points
    
    # convert var types
    data$value_form <- as.numeric(data$value_form)
    data$value_season <- as.numeric(data$value_season)
    data$selected_by_percent <- as.numeric(data$selected_by_percent)
    data$form <- as.numeric(data$form)
    data$points_per_game <- as.numeric(data$points_per_game)
    data$ep_this <- as.numeric(data$ep_this)
    data$ep_next <- as.numeric(data$ep_next)
    data$influence <- as.numeric(data$influence)
    data$creativity <- as.numeric(data$creativity)
    data$threat <- as.numeric(data$threat)
    data$ict_index <- as.numeric(data$ict_index)
    
    # subset columns
    data <- subset(data, select = c(id, code, first_name, second_name, web_name, team_name, position, status, 
        news, price, price_change_abs, price_change_round, chance_of_playing_this_round, chance_of_playing_next_round, 
        value_form, value_season, in_dreamteam, dreamteam_count, selected_by_percent, form, transfers_out, transfers_in, 
        transfers_out_round, transfers_in_round, total_points, round_points, points_per_game, ep_this, ep_next, 
        minutes, goals_scored, assists, clean_sheets, goals_conceded, own_goals, penalties_saved, penalties_missed, 
        yellow_cards, red_cards, saves, bonus, bps, influence, creativity, threat, ict_index, ea_index))
    
    return(data)
    
}
