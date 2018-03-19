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

#' @export
setValidity("Rasch", function(object){
  if(class(object@name)!="character"){return(@name is not a valid character)}
  if(class(object@a)!="numeric"){return(@a is not a valid numeric)}
  if(class(object@yj!="numeric")){return(@yj is not a valid numeric)}
  if(length(object@name)!=1){return(@name is not a valid length)}
  if(length(object@a)!=length(object@yj)){return(@a and @yj must have length n)}
}
)