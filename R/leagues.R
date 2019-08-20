#' Get data on a classic league
#'
#' Retrieve a classic league's data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/api/leagues-classic-standings/1137}{leagues classic standings endpoint}.
#'
#' @param league_id league id (found in a league's page URL on the \href{https://fantasy.premierleague.com}{main FPL site}).
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_leagues_classic(league_id = 1137)
#' }
fpl_get_leagues_classic <- function(league_id) {

  # start new curl handle
  fpl_league_handle <- new_handle()

  # authorise user
  handle_setform(
    fpl_league_handle,
    login = fpl_auth_email(),
    password = fpl_auth_pw(),
    redirect_uri = "https://fantasy.premierleague.com/a/login",
    app = "plfpl-web"
    )

  login <- curl_fetch_memory(
    "https://users.premierleague.com/accounts/login/",
    handle = fpl_league_handle
    )

  if(login$url != "https://fantasy.premierleague.com/a/login?state=success")
    stop("The authentication didn't work. You've most likely entered an incorrect FPL email and/or password.")

  # read league data
  league_data <- fromJSON(
    curl(
      paste0(
        fpl_league_url, "-classic/", league_id, "/standings/"
        ),
      handle = fpl_league_handle
      )
    )

  # parse data
  fromJSON(league_data, simplifyVector = TRUE)
}

#' Get data on a head-to-head league
#'
#' Retrieve a head-to-head league's data for the current FPL season, obtained via the
#' \href{https://fantasy.premierleague.com/api/leagues-h2h-standings/829116}{leagues h2h standings endpoint}.
#'
#' @inheritParams fpl_get_leagues_classic
#'
#' @return a list
#'
#' @export
#'
#' @examples
#' \donttest{
#' fpl_get_leagues_h2h(league_id = 829116)
#' }
fpl_get_leagues_h2h <- function(league_id) {

  # read league data
  league_data <- curl(paste(fpl_league_h2h_url, league_id, sep = "/"))
  fromJSON(league_data, simplifyVector = TRUE)
}
