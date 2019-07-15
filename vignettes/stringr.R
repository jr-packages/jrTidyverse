## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, cache= TRUE, results = "hide", fig.align = "center", fig.keep='none')

## ------------------------------------------------------------------------
movies %>% 
  ggplot(aes(x = title_length, y = rating)) + 
  geom_point()

