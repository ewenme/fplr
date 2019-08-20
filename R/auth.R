fpl_auth_email <- function() {

  # check if e-mail env var exists
  fpl_email <- Sys.getenv('FPL_EMAIL')
  if (!identical(fpl_email, "")) return(fpl_email)

  # otherwise, e-mail entry
  if (!interactive()) {
    stop("Please set env var FPL_EMAIL to your FPL e-mail address",
         call. = FALSE)
  }

  message("Couldn't find environment var FPL_EMAIL See ?fpl_auth_email for more details.")
  message("Please enter your FPL e-mail address log-in and press enter:")
  pat <- readline(": ")

  if (identical(pat, "")) {
    stop("FPL e-mail adddress entry failed", call. = FALSE)
  }

  message("Updating FPL_EMAIL env var")
  Sys.setenv(FPL_EMAIL = pat)

  pat

}

fpl_auth_pw <- function() {

  # check if e-mail env var exists
  fpl_pw <- Sys.getenv('FPL_PW')
  if (!identical(fpl_pw, "")) return(fpl_pw)

  # otherwise, e-mail entry
  if (!interactive()) {
    stop("Please set env var FPL_PW to your FPL password",
         call. = FALSE)
  }

  pat <- askpass("Please enter your FPL password:")

  message("Updating FPL_PW env var")
  Sys.setenv(FPL_PW = pat)

  pat

}
