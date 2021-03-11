# Load Packages ----------------------------------------------------------------

library(tidyverse)

install.packages("readxl")

library(readxl)

download_data <- read_excel("data/2020 County Health Rankings North Dakota Data - v1_1 (2).xlsx", 
                            sheet= "Ranked Measure Data", skip = 1)

download_data
