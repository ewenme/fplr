#' Detailed user performance data for the current FPL season.
#'
#' Returns a tibble containing round-by-round performance info for a given user in the current FPL season.
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @export
#' @examples
#' userPerformance(user_id = 123)

userPerformance <- function(user_id) {
    
    # make the input numeric
    user_id <- as.numeric(user_id)
    
    # get data
    data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/", user_id, "/history"), simplifyVector = TRUE)
    
    if (length(data$history) < 1) 
        stop("No user performance data for this season, yet")
    
    return(data$history)
    
}
