#' Detailed data for a user's player picks for a gameweek in the current FPL season
#'
#' Returns a tibble containing player data for a given user's selection for a gameweek during the current FPL season (season has to be in-play).
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @param gameweek FPL competition gameweek (1-38).
#' @export
#' @examples
#' userPicks(user_id = 123, gameweek = 10)

userPicks <- function(user_id, gameweek) {
    
    # make the input numeric
    user_id <- as.numeric(user_id)
    
    # check the input is numeric, stop if not
    if (!is.numeric(gameweek)) 
        stop("gameweek isn't numeric format.")
    
    # check the input is in range, stop if not
    if (!gameweek %in% 1:38) 
        stop("gameweek isn't in expected range (1-38).")
    
    # get player/teams list
    players <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static", simplifyVector = TRUE)
    teams <- subset(players$teams, select = c(id, name, strength, code))
    players <- subset(players$elements, select = c(id, web_name, team_code))
    
    # get user picks data
    data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/", user_id, "/event/", gameweek, 
        "/picks"), simplifyVector = TRUE)
    picks <- data$picks
    
    # get player points data
    points <- list()
    
    for (i in picks$element) {
        data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/element-summary/", i), simplifyVector = TRUE)
        
        data <- subset(data$history, round == gameweek, select = c(id, kickoff_time, team_h_score:value, selected:transfers_out, 
            minutes:dribbles, fixture, opponent_team))
        data$element <- i
        points[[i]] <- data
        
    }
    
    points <- do.call(rbind, points)
    
    # replace player/team codes with matching values
    points <- merge(points, teams, by.x = "opponent_team", by.y = "id")
    points <- merge(points, teams, by.x = "code", by.y = "code")
    
    # convert player values to fpl-familiar style
    points$price <- points$value/10
    
    # convert var types
    points$influence <- as.numeric(points$influence)
    points$creativity <- as.numeric(points$creativity)
    points$threat <- as.numeric(points$threat)
    points$ict_index <- as.numeric(points$ict_index)
    
    # drop cols
    points <- subset(points, select = -c(opponent_team, value, id.y, code))
    
    # merge player picks with metadata
    picks <- merge(picks, players, by.x = "element", by.y = "id")
    picks <- merge(picks, points, by = "element")
    
    # rename cols
    picks <- dplyr::rename(picks, opponent_team = name.x, player_name = web_name, opponent_team_strength = strength.x, 
        player_team_strength = strength.y, player_team = name.y)
    
    # reorder cols
    picks <- picks[c("round", "fixture", "element", "position", "player_name", "player_team", "player_team_strength", 
        "opponent_team", "opponent_team_strength", "kickoff_time", "team_h_score", "team_a_score", "was_home", 
        "is_captain", "is_vice_captain", "multiplier", "total_points", "price", "selected", "transfers_in", "transfers_out", 
        "minutes", "goals_scored", "assists", "clean_sheets", "goals_conceded", "own_goals", "penalties_saved", 
        "penalties_missed", "yellow_cards", "red_cards", "saves", "bonus", "bps", "influence", "creativity", "threat", 
        "ict_index", "ea_index", "open_play_crosses", "big_chances_created", "clearances_blocks_interceptions", 
        "recoveries", "key_passes", "tackles", "winning_goals", "attempted_passes", "completed_passes", "penalties_conceded", 
        "big_chances_missed", "errors_leading_to_goal", "errors_leading_to_goal_attempt", "tackled", "offside", 
        "target_missed", "fouls", "dribbles")]
    
    return(tibble::as.tibble(picks[order(picks$position), ]))
    
}
