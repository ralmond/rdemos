## CM2ERM.R -- ConstructMap 2 eRm
## Russell Almond -- almond@acm.org

## This code maps data files from the ConstructMap software
## http://bearcenter.berkeley.edu/software/constructmap
## to a format usable by the eRm package:
## http://CRAN.R-project.org/package=eRm

library(eRm)

## Okay, I think that this file is mostly unnecessary.  You can just
## read the students.txt file using read.table from any project and
## get the response data you need.  However, demographic variables
## pose a problem in that the <DEMOGRAPHIC></DEMOGRAPHIC> tags pose a
## problem.  I'm not clever enough to write a awk/sed/perl script that
## strips them out, so I'll just edit the files by hand and save as a
## .dat file.

read.students <- function(path,header=TRUE,row.names=1,sep="\t",
                          na.strings=".",...) {
  read.table(path,header=header,row.name=row.names,
             sep=sep,na.strings=na.strings,...)
}

## The items files have a number of different interesting parts.  I'm
## using grep to split them, so this may not work properly on a
## non-unix (i.e., Windows) computer.

## s -- defines various defaults about the IRT theta.  Skip for now.
## v -- defines scalse for multidimensional models, this is
## interesting.
## is -- defines item sets -- potentially interesting, but skipping
## for now
## i -- metadata about items.

## This reads the v lines from the file.
## Note that the step difficulties and coverainces, which are sets of
## comma separated values, are left as strings for further parsing
## later.
## Note, cannot convert dates because the format is ambiguous.

read.dimensions <- function(path,sep="\t",flush=TRUE,...) {
  result <- read.table(pipe(paste("grep '^v'",path)), ## Grab only v lines
                       sep=sep,flush=flush,
                       col.names = c("V","name","title","maxscore",
                           "popmean","popvar","stepdiff","cov"),
                       colClasses =c("character","character","character",
                           "numeric","numeric","numeric",
                           "character","character"),
                       ...)
  row.names(result) <- result$name
  result[,-1] ## kill first column of all v's
}


## Reads the i (not the is) lines of the items.
## Does not try to decode the date field as that could be "TRUE"
## Does not try to decode the "step diff" field which is a list of
## comma separated values.

read.items <- function(path,sep="\t",...) {
  result <- read.table(pipe(paste("grep '^i\\b'",path)), ## Grab only i (no s) lines
                       sep=sep,na.strings="",
                       col.names = c("I","itemSet","var","name",
                           "title","diff","comments","date","stepdiff",
                           "maxscore"),
                       colClasses =c("character","character",
                           "character","character","character",
                           "character","character","character",
                           "character","numeric"),
                       ...)
  row.names(result) <- result$name
  ## R isn't handling the real conversion on diff correctly, so do it
  ## manually.
  result$diff <- as.numeric(result$diff)
  result[,-1] ## kill first column of all i's
}


pf10dich.students <- read.students("projects/pf10_dich/students.dat")
pf10dich.dims <- read.dimensions("projects/pf10_dich/items.txt")
pf10dich.items <- read.items("projects/pf10_dich/items.txt")

pf10trich.students <- read.students("projects/pf10_trich/students.dat")
pf10trich.dims <- read.dimensions("projects/pf10_trich/items.txt")
pf10trich.items <- read.items("projects/pf10_trich/items.txt")
