## ---- setup, echo = FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, results = "show")

## ---- message=FALSE, echo = TRUE-----------------------------------------
library("dplyr")
library("ggplot2")
data(okcupid, package = "jrTidyverse")

## ---- echo = TRUE--------------------------------------------------------
new_data = okcupid %>% 
  summarise(ave_income = mean(income))
new_data

## ------------------------------------------------------------------------
okcupid %>% 
  summarise(ave_income = mean(income),
            med_income = median(income))

## ------------------------------------------------------------------------
okcupid %>%
  group_by(pets) %>%
  summarise(ave_income = mean(income))

## ---- eval = FALSE, echo = TRUE------------------------------------------
#  ... %>%
#    arrange(ave_income)

## ------------------------------------------------------------------------
(df = okcupid %>%
  group_by(pets) %>%
  summarise(ave_income = mean(income)) %>%
  arrange(desc(ave_income))
)

## ---- echo=TRUE----------------------------------------------------------
floor(61/10)*10
floor(119/10)*10

## ---- echo = TRUE--------------------------------------------------------
okcupid %>%
  mutate(decade = floor(age/10) * 10)

## ------------------------------------------------------------------------
okcupid %>%
  mutate(decade = floor(age/10)*10) %>%
  filter(income < quantile(income, probs = 0.95))

## ------------------------------------------------------------------------
(df = okcupid %>%
  mutate(decade = floor(age/10)*10) %>%
  filter(income < quantile(income, probs = 0.95)) %>%
  mutate(decade = as.character(decade))
)

