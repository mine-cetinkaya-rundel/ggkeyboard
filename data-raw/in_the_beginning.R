library(dplyr)
library(stringr)
library(readr)

in_the_beginning <- read_csv(here::here("data-raw", "in_the_beginning.csv")) %>%
  mutate(key_label = str_replace(key_label, "&nbsp;", "\n"))

usethis::use_data(in_the_beginning, overwrite = TRUE)

