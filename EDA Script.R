# Load Packages ----------------------------------------------------------------

library(tidyverse)
library(readxl)

# install.packages("corrplot")
library(corrplot)
library(ggplot2)

# Data -------------------------------------------------------------------------
download_data <- read_excel("data/2020 County Health Rankings North Dakota Data - v1_1 (2).xlsx", 
                            sheet= "Ranked Measure Data", skip = 1)

download_data

glimpse(download_data)

Ranked_meas_data <- transmute(
  download_data,
  FIPS,
  State,
  County,
  Deaths,
  FP_health = `% Fair or Poor Health`,
  Smokers = `% Smokers`,
  Obesity_rate = `% Adults with Obesity`,
  Excess_Drinking = `% Excessive Drinking`,
  Physically_Inactive = `% Physically Inactive`,
  Unemployment = `% Unemployed`,
  Housing_Problems = `% Severe Housing Problems`,
  Income = `Income Ratio`,
  Violent_Crime = `Violent Crime Rate`
)

Ranked_meas_data

# Plot--------------------------------------------------------------------------

Ranked_meas_data %>%
  filter(!is.na(County)) %>%
  select(-FIPS,-State,-County,-Deaths) %>%
  cor(use = "na.or.complete") %>%
  corrplot(
    method = "color",
    type = "upper",
    order = "hclust",
    tl.col = "black",
    tl.srt = 45,
    addCoef.col = "black"
  ) 
  
ggplot(Ranked_meas_data, aes(x=Violent_Crime, y=Excess_Drinking)) + 
  geom_point() +
  geom_smooth(method = lm, se = TRUE)

ggplot(Ranked_meas_data, aes(x = Housing_Problems, y = Smokers)) + 
  geom_point() + 
  geom_smooth(method = lm, se = TRUE)

ggplot(Ranked_meas_data, aes(x = Violent_Crime, y = FP_health)) +
  geom_point() +
  geom_smooth(method = lm, se = TRUE)
