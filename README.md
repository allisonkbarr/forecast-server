README last updated: 2015-12-27

TITLE
-----
Forecast Server


SYNOPSIS
--------
Simple Ruby server that interacts with a forecast API to get weather data based on US zip codes.


DESCRIPTION
-----------
To receive JSON of current weather data for a given location, hit localhost:4567/current/[zip]

To receive average temperature for a given location over the next five days, hit localhost:4567/fiveday/[zip]

NOTES:
  * Only functions for locations in the US
  * All temperatures are given in Kelvin


AUTHOR
------
Allison Keane Barr (allisonkbarr)
