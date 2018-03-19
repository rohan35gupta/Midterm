#Set up packages
library(devtools)
library(roxygen2)

#Build and check out the package
setwd("/Users/rohangupta/Documents/WUSTL/SP2018/Pol Sci/Midterm")
current.code<-as.package("easyRasch")
load_all(current.code)
document(current.code)
