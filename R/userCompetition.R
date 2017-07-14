#' Get a user's data for a competition in the current FPL season.
#'
#' Gives a tibble containing performance info for a given user in the current FPL season.
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @param type FPL competition type. Choose one of 'classic', 'h2h' (head-to-head) or 'cup'. Defaults to 'classic'.
#' @export
#' @examples
#' userCompetition(user_id = 123)
#' userCompetition(user_id = 123, type = 'h2h')

userCompetition <- function(user_id, type = "classic") {
    
    # make the input numeric
    user_id <- as.numeric(user_id)
    
    # check the input is a specified choice, stop if not
    if (!type %in% c("classic", "h2h", "cup")) 
        stop("Type not found. Try classic, h2h or cup.")
    
    # get data
    data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/", user_id), simplifyVector = TRUE)
    
    if (type == "classic") 
        return(tibble::as.tibble(data$leagues$classic)) else if (type == "h2h") 
        return(tibble::as.tibble(data$leagues$h2h)) else if (type == "cup") 
        return(tibble::as.tibble(data$leagues$cup))
    
}
