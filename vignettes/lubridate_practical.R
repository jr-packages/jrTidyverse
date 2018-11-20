## ----setup, echo = FALSE-------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, results = "hide")

## ---- message=FALSE, echo = TRUE-----------------------------------------
library("dplyr")
library("lubridate")
library("ggplot2")
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

## ---- fig.keep="none"----------------------------------------------------
ggplot(okcupid, aes(x = week_day)) + 
  geom_bar() +
  xlab("Week day") +
  ylab("Count")

## ------------------------------------------------------------------------
# friday and saturday are the two most popular

## ---- fig.keep="none"----------------------------------------------------

# either use a graph to find out
ggplot(okcupid, aes(x = week_day)) + 
  geom_bar() +
  xlab("Week day") +
  ylab("Count") + 
  facet_wrap(~sex)

# or a summary data frame

okcupid %>% 
  group_by(sex) %>% 
  count(week_day)

## ------------------------------------------------------------------------
okcupid = okcupid  %>%
    mutate(lo_hour = hour(last_online))

## ---- echo= FALSE, fig.width=6, out.width="70%", fig.align="center", fig.asp = 0.618, fig.cap="Distribution of access times."----
ggplot(okcupid, aes(x = lo_hour)) +
  geom_bar() +
  xlab("Hour of the day") +
  ylab("Count")

