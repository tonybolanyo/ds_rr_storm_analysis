# First we need download data
dataurl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
datafile <- "StormData.csv.bz2"

if (!file.exists(dataurl)) {
    download.file(dataurl,datafile)
}

# R can read csv files form bzip compressed files directly so

storm <- read.csv(datafile)

# First look at the data

head(storm)
str(storm)