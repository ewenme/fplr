#' userPerformance
#'
#' Gives a tibble containing performance info for a given user in the current FPL season.
#' @param user_id FPL user ID (retrieve from the corresponding user's \link{fantasy.premierleague.com} team page URL).
#' @param type FPL competition type. Choose one of "classic", "h2h" (head-to-head) or "cup". Defaults to "classic".
#' @keywords user
#' @export
#' @examples
#' userPerformance(user_id = 123)
#' userPerformance(user_id = 123, type = "h2h")

userPerformance <- function(user_id, type="classic") {

  #check the input is numeric, stop if not
  if (!is.numeric(user_id))
    stop("user_id isn't numeric format.")

  #check the input is a specified choice, stop if not
  if (!type %in% c("classic", "h2h", "cup"))
    stop("Type not found. Try classic, h2h or cup.")

  #get data
  data <- jsonlite::read_json(paste0("https://fantasy.premierleague.com/drf/entry/",
                                     user_id),
                              simplifyVector = TRUE)

  if(type == "classic")
    return(data$leagues$classic)

  else if(type == "h2h")
    return(data$leagues$h2h)

  else if(type == "cup")
    return(data$leagues$cup)

}
