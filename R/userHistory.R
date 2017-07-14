#' Get previous season's performance for an FPL user
#'
#' Gives a tibble containing previous FPL season's performance info for a given user.
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @export
#' @examples
#' userHistory(user_id = 123)

userHistory <- function(user_id) {
    
    # make the input numeric
    user_id <- as.numeric(user_id)
    
    # get data
    data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/", user_id, "/history"), simplifyVector = TRUE)
    
    return(tibble::as.tibble(data$season))
    
}
