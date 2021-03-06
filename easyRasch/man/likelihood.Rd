% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/likelihood.R
\name{likelihood}
\alias{likelihood}
\title{Calculating the likelihood of a proposed value of thetaj given the responses we have observed from the test taker}
\usage{
likelihood(raschObj, theta)
}
\arguments{
\item{raschObj}{An object of class Rasch}

\item{theta}{A proposed value of thetaj}
}
\value{
A single numeric value that is the calculated likelihood from Equation (2)
}
\description{
Returns the calculated likelihood from Equation (2)
}
\author{
Rohan Gupta<\email{rohangupta@wustl.edu}>
}
