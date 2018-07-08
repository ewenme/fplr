
fplr <img alt="fplr Logo" title="fplr" align="right" src="man/figures/fplr_logo.png" width="100" style="float:right;width:100px;"/>
===================================================================================================================================

[![Build Status](https://travis-ci.org/ewenme/fplr.png)](https://travis-ci.org/ewenme/fplr) [![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

An R package that provides a compendium of tools for working with [Fantasy Premier League](https://fantasy.premierleague.com) (FPL) data in R.

Installation
------------

Get the development version from GitHub. Because of the lack of dev support from FPL, the package is unlikely to be submitted to CRAN anytime soon.

``` r
if (!require(remotes)) {
  install.packages("remotes") 
  }

# install package from github
remotes::install_github("ewenme/fplr")
```

Usage
-----

### Example analysis

[FPL Mythbusting with fplr](https://ewen.io/2017/06/25/fpl-mythbusting-with-fplr/)

### Player data

Get data on all players in the current FPL season:

``` r
# load package
library(fplr)

fpl_get_players()
## # A tibble: 438 x 60
##       id photo   web_name  team_code status    code first_name second_name
##  * <int> <chr>   <chr>         <int> <chr>    <int> <chr>      <chr>      
##  1     1 11334.… Cech              3 Availa…  11334 Petr       Cech       
##  2     2 80201.… Leno              3 Availa…  80201 Bernd      Leno       
##  3     3 51507.… Koscielny         3 Injured  51507 Laurent    Koscielny  
##  4     4 98745.… Bellerín          3 Availa…  98745 Héctor     Bellerín   
##  5     5 38411.… Monreal           3 Availa…  38411 Nacho      Monreal    
##  6     6 156074… Holding           3 Availa… 156074 Rob        Holding    
##  7     7 69140.… Mustafi           3 Availa…  69140 Shkodran   Mustafi    
##  8     8 111457… Kolasinac         3 Availa… 111457 Sead       Kolasinac  
##  9     9 101184… Chambers          3 Availa… 101184 Calum      Chambers   
## 10    10 233963… Mavropan…         3 Availa… 233963 Konstanti… Mavropanos 
## # ... with 428 more rows, and 52 more variables: squad_number <int>,
## #   news <chr>, now_cost <dbl>, news_added <chr>,
## #   chance_of_playing_this_round <lgl>,
## #   chance_of_playing_next_round <int>, value_form <dbl>,
## #   value_season <dbl>, cost_change_start <dbl>, cost_change_event <dbl>,
## #   cost_change_start_fall <int>, cost_change_event_fall <int>,
## #   in_dreamteam <lgl>, dreamteam_count <int>, selected_by_percent <dbl>,
## #   form <dbl>, transfers_out <int>, transfers_in <int>,
## #   transfers_out_event <int>, transfers_in_event <int>, loans_in <int>,
## #   loans_out <int>, loaned_in <int>, loaned_out <int>,
## #   total_points <int>, event_points <int>, points_per_game <dbl>,
## #   ep_this <dbl>, ep_next <dbl>, special <lgl>, minutes <int>,
## #   goals_scored <int>, assists <int>, clean_sheets <int>,
## #   goals_conceded <int>, own_goals <int>, penalties_saved <int>,
## #   penalties_missed <int>, yellow_cards <int>, red_cards <int>,
## #   saves <int>, bonus <int>, bps <int>, influence <dbl>,
## #   creativity <dbl>, threat <dbl>, ict_index <dbl>, ea_index <int>,
## #   element_type <int>, team <int>, team_name <chr>, position <chr>
```

### User data

Get data on a user's performance in the current FPL season:

``` r
fpl_get_user_performance(user_id = 123)
## $chips
## list()
## 
## $entry
## $entry$id
## [1] 123
## 
## $entry$player_first_name
## [1] "Pavlos"
## 
## $entry$player_last_name
## [1] "Anagnou"
## 
## $entry$player_region_id
## [1] 83
## 
## $entry$player_region_name
## [1] "Greece"
## 
## $entry$player_region_short_iso
## [1] "GR"
## 
## $entry$summary_overall_points
## NULL
## 
## $entry$summary_overall_rank
## NULL
## 
## $entry$summary_event_points
## NULL
## 
## $entry$summary_event_rank
## NULL
## 
## $entry$joined_seconds
## [1] 78977
## 
## $entry$current_event
## NULL
## 
## $entry$total_transfers
## [1] 0
## 
## $entry$total_loans
## [1] 0
## 
## $entry$total_loans_active
## [1] 0
## 
## $entry$transfers_or_loans
## [1] "transfers"
## 
## $entry$deleted
## [1] FALSE
## 
## $entry$email
## [1] TRUE
## 
## $entry$joined_time
## [1] "2018-07-05T14:35:18Z"
## 
## $entry$name
## [1] "Baglamades"
## 
## $entry$bank
## [1] 15
## 
## $entry$value
## [1] 985
## 
## $entry$kit
## NULL
## 
## $entry$event_transfers
## [1] 0
## 
## $entry$event_transfers_cost
## [1] 0
## 
## $entry$extra_free_transfers
## [1] 0
## 
## $entry$strategy
## NULL
## 
## $entry$favourite_team
## [1] 17
## 
## $entry$started_event
## [1] 1
## 
## $entry$player
## [1] 9356614
## 
## 
## $leagues
## $leagues$cup
## list()
## 
## $leagues$h2h
## list()
## 
## $leagues$classic
##       id entry_rank entry_last_rank entry_movement entry_change
## 1     17          0               0            new           NA
## 2    103          0               0            new           NA
## 3    275          0               0            new           NA
## 4    313          0               0            new           NA
## 5    448          0               0            new           NA
## 6    481          0               0            new           NA
## 7   1218          0               0            new           NA
## 8   1936          0               0            new           NA
## 9   7585          0               0            new           NA
## 10 15255          0               0            new           NA
##    entry_can_leave entry_can_admin entry_can_invite entry_can_forum
## 1            FALSE           FALSE            FALSE           FALSE
## 2            FALSE           FALSE            FALSE           FALSE
## 3            FALSE           FALSE            FALSE           FALSE
## 4            FALSE           FALSE            FALSE           FALSE
## 5             TRUE           FALSE            FALSE            TRUE
## 6             TRUE           FALSE            FALSE            TRUE
## 7            FALSE            TRUE             TRUE            TRUE
## 8             TRUE           FALSE            FALSE            TRUE
## 9             TRUE           FALSE            FALSE            TRUE
## 10            TRUE           FALSE            FALSE            TRUE
##    entry_code                          name short_name
## 1        <NA>                         Spurs    team-17
## 2        <NA>                        Greece  region-83
## 3        <NA>                    Gameweek 1    event-1
## 4        <NA>                       Overall    overall
## 5        <NA>  Always Cheating Super League       <NA>
## 6        <NA> @FPLSecrets Follow on Twitter       <NA>
## 7    123-1218  Tea Trade Wharf Primera Liga       <NA>
## 8        <NA>    FantasyFootballScout.co.uk       <NA>
## 9        <NA>         Beat the @FPLGeneral        <NA>
## 10       <NA>        fantasyfootballfix.com       <NA>
##                 created closed forum_disabled make_code_public rank size
## 1  2018-07-05T12:12:23Z  FALSE          FALSE            FALSE   NA   NA
## 2  2018-07-05T12:12:23Z  FALSE          FALSE            FALSE   NA   NA
## 3  2018-07-05T12:12:24Z  FALSE          FALSE            FALSE   NA   NA
## 4  2018-07-05T12:12:24Z  FALSE          FALSE            FALSE   NA   NA
## 5  2018-07-05T14:41:15Z  FALSE          FALSE            FALSE   NA   NA
## 6  2018-07-05T14:42:30Z  FALSE          FALSE            FALSE   NA   NA
## 7  2018-07-05T15:03:33Z  FALSE          FALSE            FALSE   NA   NA
## 8  2018-07-05T15:23:35Z  FALSE          FALSE            FALSE   NA   NA
## 9  2018-07-05T17:27:11Z  FALSE          FALSE            FALSE   NA   NA
## 10 2018-07-05T22:10:43Z  FALSE          FALSE            FALSE   NA   NA
##    league_type _scoring reprocess_standings admin_entry start_event
## 1            s        c               FALSE          NA           1
## 2            s        c               FALSE          NA           1
## 3            s        c               FALSE          NA           1
## 4            s        c               FALSE          NA           1
## 5            x        c               FALSE         513           1
## 6            x        c               FALSE         602           1
## 7            x        c               FALSE         123           1
## 8            x        c               FALSE        6025           1
## 9            x        c               FALSE       29104           1
## 10           x        c               FALSE       70403           1
## 
## 
## $season
##         id season_name total_points    rank season  player
## 1 13210862     2011/12         1788  865160      6 9356614
## 2 19303061     2012/13         1590 1837292      7 9356614
## 3 20622589     2013/14         2135  508248      8 9356614
## 4 31254280     2014/15         2043  123156      9 9356614
## 5 34458590     2015/16         2178   64735     10 9356614
## 6 38105936     2016/17         2313    8699     11 9356614
## 7 42627235     2017/18         2304   13153     12 9356614
## 
## $history
## list()
```

Collaborators
-------------

If you want to contribute to the package:

-   I followed the principles in Hadley Wickham's [R packages book](http://r-pkgs.had.co.nz/)
-   Follow the GitHub fork/pull request [model](https://guides.github.com/introduction/flow/), or contact me directly

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
