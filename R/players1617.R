#' Summary player data for the 2016/17 FPL season
#'
#' Summary data for all players in the 2016/17 FPL season.
#' @source \url{https://fantasy.premierleague.com/drf/bootstrap-static}, downloaded 2017-06-06
#' @format A tibble with columns:
#' \describe{
#'  \item{id}{unique player id}
#'  \item{code}{FPL player code}
#'  \item{first_name}{player first name}
#'  \item{second_name}{player second name}
#'  \item{web_name}{player name displayed on FPL team pages}
#'  \item{team_name}{team name of player}
#'  \item{position}{player position}
#'  \item{price}{player price, millions}
#'  \item{price_change_abs}{player price change, millions, over the season}
#'  \item{value_season}{player points per million price}
#'  \item{dreamteam_count}{no. times player in dream team of the week}
#'  \item{selected_by_percent}{% of FPL teams player selected by}
#'  \item{transfers_out}{no. of FPL transfers out over the season}
#'  \item{transfers_in}{no. of FPL transfers in over the season}
#'  \item{points_per_game}{average no. of points per game}
#'  \item{minutes}{no. of minutes played over the season}
#'  \item{goals_scored}{no. of goals scored over the season}
#'  \item{assists}{no. of assists provided over the season}
#'  \item{clean_sheets}{no. of clean_sheets involved in over the season}
#'  \item{goals_conceded}{no. of goals conceded over the season}
#'  \item{penalties_saved}{no. of penalties saved over the season}
#'  \item{penalties_missed}{no. of penalties missed over the season}
#'  \item{yellow_cards}{no. of yellow cards received over the season}
#'  \item{red_cards}{no. of red cards received over the season}
#'  \item{saves}{no. of saves made over the season}
#'  \item{bonus}{no. of bonus points recieved over the season}
#'  \item{bps}{bonus points system, BPS, total over the season}
#'  \item{influence}{FPL influence score over the season}
#'  \item{creativity}{FPL creativity score over the season}
#'  \item{threat}{FPL threat score over the season}
#'  \item{ict_index}{FPL influence/creativity/threat index over the season}
#'  \item{ea_index}{EA index over the season}
#' }
#' @examples
#' data(players1617)
"players1617"
