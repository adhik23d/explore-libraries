library(dplyr)
#' Which libraries does R search for packages?
.libPaths() #Path for the whole PC
.Library #Path just for R

#' Installed packages
installed.packages()

## use installed.packages() to get all installed packages
inst <- as.data.frame(installed.packages())
## how many packages?
dim(insts)

#' Exploring the packages

## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
inst%>% count( LibPath )

##   * what proportion need compilation?
inst %>% count( LibPath, Priority)
##   * how break down re: version of R they were built on
inst %>% count(Built)

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
What is the difference between base or recommended
## study package naming style (all lower case, contains '.', etc

## use `fields` argument to installed.packages() to get more info and use it!

