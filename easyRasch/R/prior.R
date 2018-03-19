#' Calculating the height of the normal curve for a proposed value of theta
#' 
#' Returns the height of the specified normal curve evaluated at thetaj
#' 
#' @param theta A proposed value of thetaj
#' 
#' @return The height of the specified normal curve evaluated at thetaj
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' 
#' @rdname prior
#' @export
setGeneric(name = "prior",
           def = function(theta){
             standardGeneric("prior")
           })

#' @export
setMethod(f = "prior",
          definition = function(prior){
            return(dnorm(theta,0,3))
          }
          )