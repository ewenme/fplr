#' Summary player data for the 2016/17 FPL season
#'
#' Summary data for all players in the 2016/17 FPL season.
#' @source \url{https://fantasy.premierleague.com/drf/bootstrap-static/}, downloaded 2017-06-06
#' @format A tibble with columns
#' \describe{
#'  \item{id}{unique player id}
#'  \item{code}{FPL player code}
#'  \item{first_name}{player first name}
#'  \item{second_name}{player second name}
#'  \item{web_name}{player name displayed on FPL team pages}
#'  \item{team_name}{team name of player}
#'  \item{position}{player position}
#'  \item{status}{player status}
#'  \item{news}{player news}
#'  \item{price}{player price, millions}
#'  \item{price_change_abs}{player price change (millions) over the season}
#'  \item{price_change_round}{player price change (millions) in the latest round}
#'  \item{chance_of_playing_this_round}{chance of playing in this round}
#'  \item{chance_of_playing_next_round}{chance of playing in the next round}
#'  \item{value_form}{recent player points per million price}
#'  \item{value_season}{total player points per million price}
#'  \item{in_dreamteam}{logical if in latest gameweek's dreamteam}
#'  \item{dreamteam_count}{no. times player in dream team of the week}
#'  \item{selected_by_percent}{% of FPL teams player selected by}
#'  \item{form}{recent points per game}
#'  \item{transfers_out}{no. of FPL transfers out over season}
#'  \item{transfers_in}{no. of FPL transfers in over season}
#'  \item{transfers_out_round}{no. of FPL transfers out this gameweek}
#'  \item{transfers_in_round}{no. of FPL transfers in this gameweek}
#'  \item{total_points}{total no. of FPL points}
#'  \item{round_points}{no. of FPL points this gameweek}
#'  \item{points_per_game}{average no. of points per game}
#'  \item{ep_this}{expected points in this gameweek}
#'  \item{ep_next}{expected points in the next gameweek}
#'  \item{minutes}{no. of minutes played}
#'  \item{goals_scored}{no. of goals scored}
#'  \item{assists}{no. of assists provided}
#'  \item{clean_sheets}{no. of clean_sheets involved in}
#'  \item{goals_conceded}{no. of goals conceded}
#'  \item{own_goals}{no. of own goals scored}
#'  \item{penalties_saved}{no. of penalties saved}
#'  \item{penalties_missed}{no. of penalties missed}
#'  \item{yellow_cards}{no. of yellow cards received}
#'  \item{red_cards}{no. of red cards received}
#'  \item{saves}{no. of saves made}
#'  \item{bonus}{no. of bonus points recieved}
#'  \item{bps}{bonus points system total}
#'  \item{influence}{FPL influence score}
#'  \item{creativity}{FPL creativity score}
#'  \item{threat}{FPL threat score}
#'  \item{ict_index}{FPL influence/creativity/threat index}
#'  \item{ea_index}{EA index}
#' }
#' @examples
#' data(players1617)
"players1617"
