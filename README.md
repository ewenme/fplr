
fplr <img alt="fplr Logo" title="fplr" align="right" src="man/figures/fplr_logo.png" width="100" style="float:right;width:100px;"/>
===================================================================================================================================

[![Build Status](https://travis-ci.org/ewenme/fplr.png)](https://travis-ci.org/ewenme/fplr) [![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

An R package that provides a compendium of tools for working with [Fantasy Premier League](https://fantasy.premierleague.com) (FPL) data in R.

Because of the lack of dev support from FPL and possible API changes, the package is unlikely to be submitted to CRAN and will stay in an experimental lifecycle for the foreseeable future.

Installation
------------

Get the development version from GitHub.

``` r
if (!require(remotes)) {
  install.packages("remotes") 
  }

# install package from github
remotes::install_github("ewenme/fplr")
```

Usage
-----

[FPL Mythbusting with fplr](https://ewen.io/2017/06/25/fpl-mythbusting-with-fplr/)

### Player data

Get data on all players in the current FPL season:

``` r
fplr::fpl_get_players()
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

Get data on a user's FPL season performances:

``` r
fplr::fpl_get_user_performance(user_id = 123)$season
##         id season_name total_points    rank season  player
## 1 13210862     2011/12         1788  865160      6 9356614
## 2 19303061     2012/13         1590 1837292      7 9356614
## 3 20622589     2013/14         2135  508248      8 9356614
## 4 31254280     2014/15         2043  123156      9 9356614
## 5 34458590     2015/16         2178   64735     10 9356614
## 6 38105936     2016/17         2313    8699     11 9356614
## 7 42627235     2017/18         2304   13153     12 9356614
```

Collaborators
-------------

If you want to contribute to the package:

-   I followed the principles in Hadley Wickham's [R packages book](http://r-pkgs.had.co.nz/)
-   Follow the GitHub fork/pull request [model](https://guides.github.com/introduction/flow/), or contact me directly

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
