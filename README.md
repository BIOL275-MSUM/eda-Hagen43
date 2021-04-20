
<img src="https://www2.mnstate.edu/uploadedImages/Content/Marketing/logos/MSUM_Signature_Vert_Color.jpg" alt="MSUM logo" width="200" style="float:right">

## Affects of Socioeconomics on Health

Phillip Hagen and Chris Merkord

Biosciences Department, Minnesota State University Moorhead, 1104 7th
Avenue South, Moorhead, MN 56563 USA

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

Many Americans across the country face health problems. Many of these
issues stem from poor health habits such as smoking, excessive drinking,
or lack of physical activity. This has caused countless deaths around
our country. These behaviors have even been deemed a country wide
epidemic. However, what do these poor habits stem from an outside
source? For my project I test exactly that. I hypothesize that negative
socioeconomic variables have a strong correlation to these negative
health behaviors. To test this hypothesis I pulled county data from the
state of North Dakota. If my hypothesis is found to be plausible this
would allow centers of support. These centers would provide assistance
to individuals that suffer negative socioeconomic variables to avoid
developing negative health behaviors.

## Methods

### Data Acquisition

For my project I needed to pull data from a source that has data on
individual counties of North Dakota. I pulled this data from the county
health rankings website (County Health Rankings & Roadmaps 2020). This
data is free to see if you go to the website.

### Data Description

My data consists of 54 rows, each row representing a different county in
North Dakota. The variables I chose to use from the data set:

  - Percent Fair/Poor Health: Numerical Continuous
  - Percent Smokers: Numerical Continuous
  - Percent Adults with Obesity: Numerical Continuous
  - Percent Excessive Drinking: Numerical Continuous
  - Percent Physically Inactive: Numerical Continuous
  - Percent Unemployed: Numerical Continuous
  - Percent Severe Housing Problems: Numerical Continuous
  - Percent Income Ratio: Numerical Continuous
  - Violent Crime Rate: Numerical Continuous.

I selected these variables because they each show the percent of the
population in each county that falls under that specific variable. This
allowed me to compare my variables as a population rather than specific
individuals.

### Data Preparation

I was only able to download the data through excel.I had to make the
data able to do so I used Rstudio version 1.3.1093 (RStudio Team 2020)
which is in R version 4.0.3(R Core Team 2020) To make the data able to
use I had to run two packages dplyr (Wickham et al. 2020) and readxl
(Wickham and Bryan 2019). I then had to save the excel spreadsheet to a
specific file to load up in my code. I used the function read\_excel
which allowed me to download my data. I then used sheet and skip within
that function to allow me to roughly select specific data. The data
contained many variables I was not interested in, which I removed. The
ones I kept were: FIPS, State, County, Deaths, Percent Fair/Poor Health,
Percent Smokers, Percent Adults with Obesity, Percent Excessive
Drinking, Percent Physically Inactive, Percent Unemployed, Percent
Severe Housing Problems, Percent Income Ratio, and Percent Violent Crime
Rate.

## Results

To create my figures I used functions: corrplot (Wei and Simko 2017) and
ggplot2 (Wickham 2016).

![](README_files/figure-gfm/Fig.%201-1.png)<!-- -->

Figure 1. shows the correlation between all of the variables that I
examined.

![](README_files/figure-gfm/Fig.%202-1.png)<!-- -->

Figure 2. shows the correlation between Excessive Drinking and violent
crimes. We can see a the distribution trends positively.
![](README_files/figure-gfm/Fig.%203-1.png)<!-- -->

Figure 3. shows the correlation between smokers and housing problems. We
can see the distrubtion trends postively.
![](README_files/figure-gfm/Fig.%204-1.png)<!-- -->

Figure 4. shows the correlation between fair or poor health and violent
crime. We can see the distribution is spread with little to no trend.

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

Taiyun Wei and Viliam Simko (2017). R package “corrplot”: Visualization
of a Correlation Matrix (Version 0.84). Available from
<https://github.com/taiyun/corrplot>

H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
New York, 2016.
