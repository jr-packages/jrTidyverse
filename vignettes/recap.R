## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, cache= TRUE, results = "hide", fig.align = "center", fig.keep='none')

## ---- echo = TRUE, results="show"----------------------------------------
data(example, package = "jrTidyverse")
example

## ---- message = FALSE, warning = FALSE, echo = TRUE, results='show'------
library("dplyr")
## Give me all the rows where gender is "Male"
filter(example, gender == "Male")
## What is the average of the age variable
summarise(example, av_age = mean(age))

## ------------------------------------------------------------------------
filter(example, age > 24)

## ------------------------------------------------------------------------
filter(example, respond)

## ---- echo = TRUE, results='show'----------------------------------------
# Give me the average age of males
example %>% 
  filter(gender == "Male") %>% 
  summarise(av_age = mean(age))

## ------------------------------------------------------------------------
example %>% 
  filter(!respond) %>% 
  summarise(av_age = mean(age))

## ---- echo = TRUE, results='show'----------------------------------------
# Pass 1:5 on the left as the first argument to mean
1:5 %>% 
  mean(na.rm = TRUE)
# Explicitly pass 1:5 into the function
mean(1:5, na.rm = TRUE)

## ---- echo = TRUE, results='show'----------------------------------------
# Give me the average age of each group within gender
example %>% 
  group_by(gender) %>% 
  summarise(av_age = mean(age))

## ------------------------------------------------------------------------
example %>% 
  group_by(respond) %>% 
  summarise(av_age = mean(age))


## ----results='hide', fig.keep='none', message = FALSE, warning = FALSE, echo = TRUE----
library("ggplot2")
data(movies, package = "jrTidyverse")
ggplot(movies)

## ---- label = "2-1", fig.margin  = TRUE, fig.cap = "Initial ggplot object", echo = TRUE, fig.keep='all', fig.height=3, fig.width=3, fig.pos="h"----
# visible in figure 2.1
g = ggplot(movies, aes(x = duration, y = rating))
g

## ---- eval = FALSE, message = FALSE, warning = FALSE, echo = TRUE, results='show', fig.keep='all'----
#  # figure 2.2
#  g +
#    geom_point()
#  ggplot(movies, aes(x = rating)) +
#    geom_histogram()
#  ggplot(movies, aes(x = classification)) +
#    geom_bar()
#  ggplot(movies, aes(x = classification, y = rating)) +
#    geom_boxplot())

## ---- echo = FALSE, message = FALSE, warning = FALSE, fig.height=6, fig.width=6, fig.cap = "Examples of different geoms", fig.keep='all', eval = TRUE, results="show"----
a = g + 
  geom_point()
b = ggplot(movies, aes(x = rating)) +
  geom_histogram()
c = ggplot(movies, aes(x = classification)) +
  geom_bar()
d = ggplot(movies, aes(x = classification, y = rating)) +
  geom_boxplot()
gridExtra::grid.arrange(a,b,c,d, ncol = 2, nrow = 2)

## ------------------------------------------------------------------------
movies %>% 
  group_by(year) %>% 
  summarise(av_rat = mean(rating))

## ------------------------------------------------------------------------
movies %>% 
  group_by(year) %>% 
  summarise(av_rat = mean(rating)) %>% 
  ggplot(aes(x = year, y = av_rat)) + 
  geom_line()

## ------------------------------------------------------------------------
movies %>%
  group_by(year) %>%
  summarise(av_rat = mean(rating)) %>%
  ggplot(aes(x = year, y = av_rat)) +
  geom_line() +
  labs(x = "Year", 
       y = "Average Rating", 
       title = "Average rating per year of movies")

