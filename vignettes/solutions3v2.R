## ---- setup, echo = FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, results = "show")

## ---- message = FALSE----------------------------------------------------
library("dplyr")
library("tidyr")
library("ggplot2")
data(okcupid, package = "jrTidyverse")

## ---- echo = TRUE, warning = FALSE---------------------------------------
okcupid = okcupid %>% 
  separate(location, c("area", "state"), sep = ", ")

## ---- echo = TRUE, warning = FALSE---------------------------------------
okcupid = okcupid %>% 
  separate(ethnicity, "ethnicity", sep = ", ")

## ---- warning = FALSE----------------------------------------------------
okcupid = okcupid %>% 
  separate(speaks, c("first_lan", "sec_lan", "third_lan"), sep = ", ") 
okcupid %>%
  count(first_lan)
# 168

## ---- warning = FALSE----------------------------------------------------
okcupid = okcupid %>% 
  separate(sec_lan, "second_lan", sep = " ")

## ------------------------------------------------------------------------
okcupid %>% 
  count(second_lan) %>% 
  filter(second_lan == "c++")

## ---- warning = FALSE----------------------------------------------------
okcupid = okcupid %>% 
  separate(religion, c("religion"), sep = " ") 

## ---- warning = FALSE----------------------------------------------------
okcupid %>%
  count(religion) 

## ---- echo = TRUE--------------------------------------------------------
(df = okcupid %>% 
   group_by(sex) %>% 
   count(orientation)
 )

## ------------------------------------------------------------------------
df %>% 
  spread(orientation, n)

