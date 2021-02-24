library(dplyr)
library(ggkeyboard)
library(readr)
library(stringr)

in_the_beginning_addons <- read_csv(here::here("data-raw", "in_the_beginning_addons.csv")) %>%
  mutate(key_label = str_replace(key_label, "&nbsp;", "\n"))

in_the_beginning_full <- in_the_beginning %>%
  filter(!(row == 5 & number == 1)) %>%
  bind_rows(in_the_beginning_addons) %>%
  arrange(row, number)

usethis::use_data(in_the_beginning_full, overwrite = TRUE)
