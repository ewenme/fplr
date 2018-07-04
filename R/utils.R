
# global params -----------------------------------------------------------

# fpl bootstrap static
fpl_static <- "https://fantasy.premierleague.com/drf/bootstrap-static"

# fpl fixtures
fpl_fixtures <- "https://fantasy.premierleague.com/drf/fixtures/"

# fpl player summary
fpl_player_summary <- "https://fantasy.premierleague.com/drf/element-summary/"

# fpl user competition entry
fpl_user_entry <- "https://fantasy.premierleague.com/drf/entry/"

# look-up table of player statuses
player_statuses <- data.frame(
  id = c("a", "d", "i", "s", "u"),
  player_status = c("Available", "Doubtful", "Injured",
                    "Suspended", "Unavailable"),
  stringsAsFactors = FALSE
  )
