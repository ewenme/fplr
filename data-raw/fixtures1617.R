library(dplyr)
library(jsonlite)
library(tibble)

getTeams <- function() {

  #read in json player data, simplify vectors to make easy transfer to dataframe
  extract <- jsonlite::read_json("https://fantasy.premierleague.com/drf/bootstrap-static",
                                 simplifyVector = TRUE)

  extract <- extract$teams %>%
    select(id, name)

  return(tibble::as.tibble(extract))

}

#get teams metadata
teams <- getTeams()

#get 2016/17 fixtures data
fixtures1617 <- jsonlite::read_json("https://fantasy.premierleague.com/drf/fixtures/",
                            simplifyVector = TRUE) %>%
  select(-stats, -provisional_start_time, -finished_provisional, -minutes, -finished, -started,
         -deadline_time, -deadline_time_formatted, -kickoff_time_formatted)

#replace codes with matching values
fixtures1617$team_a <- with(teams, name[match(fixtures1617$team_a, id)])
fixtures1617$team_h <- with(teams, name[match(fixtures1617$team_h, id)])

use_data(fixtures1617, overwrite = TRUE)
