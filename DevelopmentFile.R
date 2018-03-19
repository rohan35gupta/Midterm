#Set up packages
library(devtools)
library(roxygen2)

#Build and check out the package
setwd("/Users/rohangupta/Documents/WUSTL/SP2018/Pol Sci/Midterm")
current.code<-as.package("easyRasch")
load_all(current.code)
document(current.code)

#Example
student<-new("Rasch")
student@name<-"Rohan Gupta"
student@a<-1:5
student@yj<-c(1,0,1,0,1)
student
new("Rasch",name=1,a=1:5,yj=c(1,0,1,0,1))
new("Rasch",name="Rohan Gupta",a="Rohan Gupta",yj=c(1,0,1,0,1))
new("Rasch",name="Rohan Gupta",a=1:5,yj="Rohan Gupta")
probability(student,5)
likelihood(student,5)
prior(5)
eap(student)
print.raschObj(student)