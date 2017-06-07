#' Summary fixture data for the 2016/17 FPL season
#'
#' Summary data for all fixtures in the 2016/17 FPL season.
#' @source \url{https://fantasy.premierleague.com/drf/fixtures/}, downloaded 2017-06-07
#' @format A tibble with columns
#' \describe{
#'  \item{id}{unique fixture id}
#'  \item{event_day}{day of event/round of fixtures}
#'  \item{team_h_difficulty}{difficulty rating of home team (1 to 5, 5 being the most difficult)}
#'  \item{team_a_difficulty}{difficulty rating of away team (1 to 5, 5 being the most difficult)}
#'  \item{code}{FPL fixture code}
#'  \item{kickoff_time}{kick-off time}
#'  \item{team_h_score}{No. times the home team scored}
#'  \item{team_a_score}{No. times the away team scored}
#'  \item{event}{Season round no.}
#'  \item{team_a}{Name of away team}
#'  \item{team_h}{Name of home team}
#' }
#' @examples
#' data(fixtures1617)
"fixtures1617"

