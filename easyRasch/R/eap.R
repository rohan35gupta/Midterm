#' Calculating the expected a posteriori value for thetaj (our estimate of thetaj)
#' 
#' Returns the value of thetajhat as specified in Equation (3)
#' 
#' @param raschObj An object of class Rasch
#' @param lower The lower limits of integration
#' @param upper The upper limits of integration
#' 
#' @return A single numeric value that is the value of thetajhat as specified in Equation (3)
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' 
#' @rdname eap
#' @export
setGeneric(name = "eap",
           def = function(raschObj, lower = -6, upper = 6){
             standardGeneric("eap")
           })

#' @export
setMethod(f = "eap",
          definition = function(raschObj, lower = -6, upper = 6){
            f<-function(theta){
              return(likelihood(raschObj,theta)*prior(theta))
            }
            denominator<-integrate(f,lower,upper)[[1]]
            g<-function(theta){
              return(theta*likelihood(raschObj,theta)*prior(theta))
            }
            numerator<-integrate(g,lower,upper)[[1]]
            return(numerator/denominator)
          }
          )