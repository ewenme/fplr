#' Detailed user performance data for the current FPL season.
#'
#' Returns a tibble containing round-by-round performance info for a given user in the current FPL season.
#' @param user_id FPL user ID (retrieve from the corresponding user's \url{https://fantasy.premierleague.com} team page URL).
#' @export
#' @examples
#' userPerformance(user_id = 123)

userPerformance <- function(user_id) {

  #check the input is numeric, stop if not
  if (!is.numeric(user_id))
    stop("user_id isn't numeric format.")

  #get data
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/",
                                     user_id, "/history"),
                              simplifyVector = TRUE)

  return(data$history)

}
