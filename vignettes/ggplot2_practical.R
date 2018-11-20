## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, cache= TRUE, results = "hide", fig.align = "center", fig.keep='none')

## ---- message = FALSE, echo = TRUE---------------------------------------
library("ggplot2")

## ---- echo = TRUE--------------------------------------------------------
data(okcupid, package = "jrTidyverse")

## ---- fig.keep='none', echo = TRUE---------------------------------------
# alpha makes the points transparent
ggplot(data = okcupid) + 
  geom_point(aes(x = age, y = height), alpha = 0.2)

## ---- fig.keep='none', echo = TRUE---------------------------------------
g = ggplot(data = okcupid)
g1 = g + geom_point(aes(x = age, y = height), alpha = 0.2)

## ---- fig.keep='none', echo = TRUE---------------------------------------
g1

## ------------------------------------------------------------------------
# this gives an error

## ---- fig.keep='none', echo = TRUE---------------------------------------
g + geom_point(aes(x = age, y = height, colour = sex))

## ---- fig.keep='none', echo = TRUE---------------------------------------
g + geom_bar(aes(x = body_type))

## ---- fig.keep='none'----------------------------------------------------
g + geom_bar(aes(x = body_type)) + 
  xlab("Body Type") + 
  ylab("Total")

## ---- fig.keep='none'----------------------------------------------------
# What happens if you only have colour or only fill?
g + geom_bar(aes(x = body_type, colour = sex, fill = sex))

## ---- fig.keep='none'----------------------------------------------------
g + geom_bar(aes(x = body_type, colour = sex, fill = sex)) + 
  coord_flip()

## ---- fig.keep='none', echo = TRUE---------------------------------------
g + geom_bar(aes(x = body_type, colour = sex, fill = sex), position = "dodge") + 
  coord_flip()

## ---- fig.keep = "none"--------------------------------------------------
g + geom_bar(aes(x = body_type, colour = sex, fill = sex), position = "fill") + 
  coord_flip()
# puts the values on a common scale (all sum to 1)

## ---- echo = TRUE, out.width="70%"---------------------------------------
g = ggplot(okcupid) 
g + geom_boxplot(aes(x = 1, y = age))

## ------------------------------------------------------------------------
g + geom_boxplot(aes(x = smokes, y = age))

## ---- out.width="70%"----------------------------------------------------
g + geom_boxplot(aes(x = smokes, y = age)) + 
  facet_wrap(~sex)

## ------------------------------------------------------------------------
g + geom_bar(aes(x = body_type, colour = sex, fill = sex), position = "fill") + 
  coord_flip() + 
  facet_wrap(~ orientation)

