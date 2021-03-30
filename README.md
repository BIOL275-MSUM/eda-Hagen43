EDA
================
Phillip Hagen
2021-03-30

## Abstract

Health Factors is a way to measure the overall health of a specific
population. Two things that contribute to Health Factors are
socioeconomics and health behaviors. For my project I plan on exploring
how socioeconomic variables correlate with negative health behaviors
across the counties of North Dakota. I plan to study variables such as
obesity, excessive drinking, and adult smoking and how they could
potentially be derived from socioeconomic variables. I expect to see a
direct correlation of my variables, if this is found it would allow us
to be able to create support centers in the counties that need it.

## Introduction

## Methods

### Data Acquisition

For my project I needed to pull data from a source that has data on
individual counties of North Dakota. I pulled this data from the county
health rankings website (County Health Rankings & Roadmaps 2020). This
data is free to see if you go to the website.

### Data Preparation

I was only able to download the data through excel.I had to make the
data able to do so I used Rstudio version 1.3.1093 (RStudio Team 2020)
which is in R version 4.0.3(R Core Team 2020) To make the data able to
use I had to run two packages dplyr (Wickham et al. 2020) and readxl
(Wickham and Bryan 2019). I then had to save the excel spreadsheet to a
specific file to load up in my code. I then assigned a function to the
term “download\_data”. I used the function read\_excel which allowed me
to download my data. I then used sheet and skip within that function to
allow me to roughly select specific data. I then used the function
glimpse to preview my data, and the transmute function allowed me select
specific variables to view.

## Results

## Dicussion

## Literature Cited

RStudio Team (2020). RStudio: Integrated Development Environment for R.
RStudio, PBC, Boston, MA URL <http://www.rstudio.com/>.

Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2020).
dplyr: A Grammar of Data Manipulation. R package version 1.0.2.
<https://CRAN.R-project.org/package=dplyr>

Hadley Wickham and Jennifer Bryan (2019). readxl: Read Excel Files. R
package version 1.3.1. <https://CRAN.R-project.org/package=readxl>

R Core Team (2020). R: A language and environment for statistical
computing. R Foundation for Statistical Computing, Vienna, Austria. URL
<https://www.R-project.org/>.

University of Wisconsin Population Health Institute. County Health
Rankings 2020. Available at www.countyhealthrankings.org. Accessed
3/4/2020.
