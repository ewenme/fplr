#' Get previous season's performance for an FPL user
#'
#' Gives a tibble containing previous FPL season's performance info for a given user.
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @export
#' @examples
#' userHistory(user_id = 123)

userHistory <- function(user_id) {

  #check the input is numeric, stop if not
  if (!is.numeric(user_id))
    stop("user_id isn't numeric format.")

  #get data
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/",
                                     user_id, "/history"),
                              simplifyVector = TRUE)

  return(data$season)

}
