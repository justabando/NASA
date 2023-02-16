#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


install.packages("httr")
install.packages("xml2")
install.packages("tidyverse")

library(httr)
library(xml2)
library(tidyverse)

NASA_APOD_20230216 <-
  GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2023-02-16")

content(NASA_APOD_20230216)$url |>
  download.file(destfile = "inputs/NASA_APOD_20230216.jpg")


         