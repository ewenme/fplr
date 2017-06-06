#' userInfo
#'
#' Gives a tibble containing summary info for a given user in the current FPL season.
#' @param user_id FPL user ID.
#' @keywords user
#' @export
#' @examples
#' userInfo(user_id = 123)

userInfo <- function(user_id) {

  #check the input is numeric, stop if not
  if (!is.numeric(user_id))
    stop("user_id isn't numeric format.")

  #get data
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/",
                                     user_id),
                              simplifyVector = TRUE)

  return(data$entry)

}
