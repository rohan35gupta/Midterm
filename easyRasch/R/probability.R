#' Calculating the probability of answering the question correctly
#' 
#' Returns two vectors of length n that represent Pij for each question and Pij if they got the question correct and Qij if they got the question wrong
#' 
#' @param raschObj An object of class Rasch
#' @param theta A proposed value of thetaj
#' 
#' @return A list with the elements
#'  \item{P}{A vector of length n that represents Pij for each question}
#'  \item{PQ}{A vector of length n that represents Pij if they got the question correct and Qij if they got the question wrong}
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' 
#' @rdname probability
#' @export
setGeneric(name = "probability",
           def = function(raschObj, theta){
             standardGeneric("probability")
           })

#' @export
setMethod(f = "probability",
          definition = function(raschObj, theta){
            P<-exp(theta-raschObj@a)/(1+exp(theta-raschObj@a))
            PQ<-P^raschObj@yj*(1-P)^(1-raschObj@yj)
            return(list(P=P, PQ=PQ))
          }
          )