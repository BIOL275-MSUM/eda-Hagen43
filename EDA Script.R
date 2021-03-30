# Load Packages ----------------------------------------------------------------

library(tidyverse)

library(readxl)

# Data -------------------------------------------------------------------------
download_data <- read_excel("data/2020 County Health Rankings North Dakota Data - v1_1 (2).xlsx", 
                            sheet= "Ranked Measure Data", skip = 1)

download_data

glimpse(download_data)

transmute(
  download_data,
  FIPS,
  State,
  County,
  Deaths,
  FP_health = `% Fair or Poor Health`

)
