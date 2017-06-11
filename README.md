
fplR
====

[![Build Status](https://travis-ci.org/ewenme/fplR.png)](https://travis-ci.org/ewenme/fplR)

An R package that provides tools for working with [Fantasy Premier League](https://fantasy.premierleague.com) (FPL) data in R.

Installation
------------

Get the development version from GitHub (CRAN submission should follow after commencement of the 2017/18 FPL season).

``` r
devtools::install_github("ewenme/fplR")
```

Usage examples
--------------

### Get summary data on all players in the current FPL season

``` r
library(fplR)

# player data for current FPL season (note: this will update to 2017/18 season once underway):
getPlayers()
?getPlayers
```

### Get detailed data (round-by-round) on a player in the current FPL season

``` r
library(fplR)

# Round-by-round data for Alexis Sanchez in the current FPL season (note: this will update to 2017/18 season once underway):
getPlayerDetailed(player_id = 12)
?getPlayerDetailed
```

### Data for 2016/17 FPL season

``` r
library(fplR)

# fpl 2016/17 season data set (note that data is lazy loaded so one can also just access `players1617` without running `data(players1617)`):
data(players1617)
head(players1617)
?players1617

# If using RStudio:
View(players1617)
```
