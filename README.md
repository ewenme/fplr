
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

Usage
-----

### Player data examples

#### Get summary data on all players in the current FPL season

``` r
library(fplR)

# player data for current FPL season (note: this will update to 2017/18 season once underway):
getPlayers()
?getPlayers
```

#### Get detailed data (gameweek-level) on a player in the current FPL season (still 2016/17, currently)

``` r
library(fplR)

# Gameweek-level data for Alexis Sanchez in the current FPL season (note: this will update to 2017/18 season once underway):
getPlayerDetailed(player_id = 12)
?getPlayerDetailed
```

### User data examples

#### Get data on a user's player picks for a gameweek in the current FPL season

``` r
library(fplR)

# player data for current FPL season (note: this will update to 2017/18 season once underway):
userPicks(user_id = 123, gameweek = 10)
?userPicks
```
