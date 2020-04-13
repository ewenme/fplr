
# fplr <img src="man/figures/logo.png" alt="" width="120" align="right" />

[![Build
Status](https://travis-ci.org/ewenme/fplr.png)](https://travis-ci.org/ewenme/fplr)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

## Overview

fplr makes it quick ‘n’ easy to retrieve [Fantasy Premier
League](https://fantasy.premierleague.com) (FPL) data programmatically,
then work with it, all from R.

## Installation

Get the latest development version of `fplr` from GitHub.

``` r
# install.packages("remotes")
remotes::install_github("ewenme/fplr")
```

Because of the lack of dev support from FPL and possible API changes,
the package is unlikely to be submitted to CRAN and will remain in an
experimental [lifecycle](https://www.tidyverse.org/lifecycle/) for the
foreseeable future.

## Usage

Refer to the [quickstart
guide](https://ewenme.github.io/fplr/articles/fplr-quickstart.html) to
get started. Still, here are some very basic examples of the
functionality and practical applications of `fplr`.

### Get data

…on all players in the current FPL season.

``` r
library(fplr)

players <- fpl_get_player_all()

players
#> # A tibble: 628 x 61
#>    chance_of_playi… chance_of_playi…   code cost_change_eve… cost_change_eve…
#>               <int>            <int>  <int>            <dbl>            <int>
#>  1              100              100  69140                0                0
#>  2              100              100  98745                0                0
#>  3               75               75 111457                0                0
#>  4              100              100 154043                0                0
#>  5              100              100  39476                0                0
#>  6                0                0  38411                0                0
#>  7                0                0  51507                0                0
#>  8                0                0 233963                0                0
#>  9                0                0  80254                0                0
#> 10              100              100 156074                0                0
#> # … with 618 more rows, and 56 more variables: cost_change_start <dbl>,
#> #   cost_change_start_fall <int>, dreamteam_count <int>, element_type <int>,
#> #   ep_next <dbl>, ep_this <dbl>, event_points <int>, first_name <chr>,
#> #   form <dbl>, id <int>, in_dreamteam <lgl>, news <chr>, news_added <chr>,
#> #   now_cost <dbl>, photo <chr>, points_per_game <dbl>, second_name <chr>,
#> #   selected_by_percent <dbl>, special <lgl>, squad_number <lgl>, status <chr>,
#> #   team <int>, team_code <int>, total_points <int>, transfers_in <int>,
#> #   transfers_in_event <int>, transfers_out <int>, transfers_out_event <int>,
#> #   value_form <dbl>, value_season <dbl>, web_name <chr>, minutes <int>,
#> #   goals_scored <int>, assists <int>, clean_sheets <int>,
#> #   goals_conceded <int>, own_goals <int>, penalties_saved <int>,
#> #   penalties_missed <int>, yellow_cards <int>, red_cards <int>, saves <int>,
#> #   bonus <int>, bps <int>, influence <dbl>, creativity <dbl>, threat <dbl>,
#> #   ict_index <dbl>, influence_rank <int>, influence_rank_type <int>,
#> #   creativity_rank <int>, creativity_rank_type <int>, threat_rank <int>,
#> #   threat_rank_type <int>, ict_index_rank <int>, ict_index_rank_type <int>
```

## In-the-wild

[…xPoints?](https://ewen.io/2019/03/08/xpoints/)

<img src="https://github.com/rbind/ewenme/raw/master/static/blog/2019-03-08-xPoints_files/figure-html/value-calc-1.png" width="75%" />

## Collaborators

If you want to contribute to the package, try and follow:

  - Principles in Hadley Wickham’s [R packages
    book](https://r-pkgs.org/)
  - The GitHub fork/pull request
    [model](https://guides.github.com/introduction/flow/)

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.
