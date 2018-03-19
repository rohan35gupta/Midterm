#' Calculating the likelihood of a proposed value of thetaj given the responses we have observed from the test taker
#' 
#' Returns the calculated likelihood from Equation (2)
#' 
#' @param raschObj An object of class Rasch
#' @param theta A proposed value of thetaj
#' 
#' @return A single numeric value that is the calculated likelihood from Equation (2)
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' 
#' @rdname likelihood
#' @export
setGeneric(name = "likelihood",
           def = function(raschObj, theta){
             standardGeneric("likelihood")
           })

#' @export
setMethod(f = "likelihood",
          definition = function(raschObj, theta){
            return(prod(probability(raschObj, theta)[[2]]))
          }
          )