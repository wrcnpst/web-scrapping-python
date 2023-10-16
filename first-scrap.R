install.packages(c("tidyverse", "rvest"))
library(tidyverse)
library(rvest)

url <- "https://specphone.com/Samsung-Galaxy-S22.html"
web <- read_html(url)

topics <- web %>%
  html_nodes("div.topic") %>%
  html_text()

details <- web %>%
  html_nodes("div.detail") %>%
  html_text()

df <- data.frame(topics, details)
View(df)
