# library(tidyverse)
# okcupid = okcupiddata::profiles  %>%
#   as_tibble() %>%
#   select(-essay0) %>%
#   drop_na(age,sex,income)
# save(okcupid, file= "data/okcupid.RData", compress = "xz")
# 
