## ----setup, echo = FALSE-------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, results = "hide")

## ---- message=FALSE, echo = TRUE-----------------------------------------
library("dplyr")
library("lubridate")
data(okcupid, package = "jrTidyverse")

## ---- echo = TRUE--------------------------------------------------------
bday = "11/04/1967"

## ------------------------------------------------------------------------
bday = dmy(bday)

## ------------------------------------------------------------------------
wday(bday, label = TRUE)

## ------------------------------------------------------------------------
year(bday) = 2018
wday(bday, label = TRUE)

## ------------------------------------------------------------------------
today = today()
as.period(interval(today, bday), unit = "year")
as.period(interval(today, bday), unit = "day")
as.period(interval(today, bday), unit = "seconds")

## ------------------------------------------------------------------------
okcupid = okcupid %>%
  mutate(last_online = ymd_hms(last_online, tz = "America/Los_Angeles"))

## ------------------------------------------------------------------------
okcupid = okcupid %>%
    mutate(week_day = wday(last_online, label = TRUE))

## ------------------------------------------------------------------------
okcupid %>% 
  count(week_day)

