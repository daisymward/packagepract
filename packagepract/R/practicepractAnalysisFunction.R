#' #####This creates a function called AnalysisFunction with two parameters: x and Training. When Training ==T, it adds noise drawn from a uniform distribution and returns xnoisy. When Training == F, it returns x
#' 
#' @usage
#'
#' AnalysisFunction(x, training)
#'
#' @param x numeric array
#'
#' @param training logical; specifies whether to add noise or not
#' @return
#' @examples
#' #Create an array called x
#' x <- c(1:5)
#' #run AnalysisFunction
#' AnalysisFunction(x, Training = F)
#' #receive xnoisy back
#'

AnalysisFunction <- function(x, Training = T){
  if(Training == T){noise <- runif(length(x), -1, 1)
  xnoisy <- x + noise
  return(xnoisy)
  }
  if(Training == F){return(x)}
}


