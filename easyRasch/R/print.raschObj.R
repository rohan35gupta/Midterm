#' Prints name of the test taker and the EAP results
#' 
#' Returns name of the test taker and the EAP results
#' 
#' @param raschObj An object of class Rasch
#' 
#' @return A list with the elements
#'  \item{name}{Name of the test taker}
#'  \item{eap}{The EAP results}
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' 
#' @rdname print.raschObj
#' @export
setGeneric(name = "print.raschObj",
           def = function(raschObj){
             standardGeneric("print.raschObj")
           })

#' @export
setMethod(f = "print.raschObj",
          definition = function(raschObj){
            print(list(name=raschObj@name, eap=eap(raschObj)))
          }
          )