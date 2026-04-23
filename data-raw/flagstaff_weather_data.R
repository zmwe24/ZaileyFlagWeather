library(tidyverse)

raw <- read_csv(
  "data-raw/Pulliam_Airport_Weather_Station.csv",
  col_types = cols(
    DATE  = col_date(format = "%Y-%m-%d"),
    PRCP  = col_double(),
    SNOW  = col_double(),
    TMAX  = col_double(),
    TMIN  = col_double()
  ),
  na = c("", "NA", "-9999", "99999")) #i have used common NA values here just in case

Flagstaff_Weather <- raw |>
  select(DATE, PRCP, SNOW, TMAX, TMIN) |>
  mutate(
    across(c(PRCP, SNOW, TMAX, TMIN), as.numeric)) |>
  drop_na(date) |>
  arrange(date)








