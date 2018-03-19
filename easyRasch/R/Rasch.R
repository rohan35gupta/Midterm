#' A student who has completed an exam
#' 
#' Object of class Rasch
#' 
#' 
#' An object of the class 'Rasch' has the following slots:
#' \itemize{
#' \item \code{name} The name of the test taker
#' \item \code{a} A vector of question-item parameters
#' \item \code{yj} A vector of answers for the respondent
#' }
#' 
#' @author Rohan Gupta: \email{rohangupta@wustl.edu}
#' @aliases Rasch-class initialize,Rasch-method
#' @rdname Rasch
#' @export
setClass(Class = "Rasch",
         representation = representation(
           name = "character",
           a = "numeric",
           yj = "numeric"
         ),
         prototype = prototype(
           name = c(),
           a = c(),
           yj = c()
         )
)

#' @export
setMethod("initialize", "Rasch",
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
)