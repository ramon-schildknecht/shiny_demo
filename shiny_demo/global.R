library(tidyverse)
library(lubridate)
library(shinyWidgets)

d <- population
# d$country <- as.factor(d$country)
select_country <- as.character(unique(d$country))
select_year <- unique(d$year)


