#' Basic functions
#'
#' \itemize{
#'   \item true - ignore all input and return TRUE
#'   \item false - ignore all input and return FALSE
#'   \item nothing - ignore all input and do nothing
#'   \item fail - throws an exception for any input
#'   \item warn - calls a warning for any input
#'   \item blank - takes no arguments and returns nothing
#'   \item id - returns first argument unchanged, ignores others
#'   \item execute - pass ... to FUN and return the results
#' }
#'
#' @param FUN any function
#' @param x anything
#' @param ... anything
#' @name basic_functions
NULL

#' @rdname basic_functions
#' @export
true <- function(...) {
  TRUE
}

#' @rdname basic_functions
#' @export
false <- function(...) {
  FALSE
}

#' @rdname basic_functions
#' @export
nothing <- function(...){
  NULL
}

#' @rdname basic_functions
#' @export
fail <- function(...){
  stop("'fail' function was called")
}

#' @rdname basic_functions
#' @export
warn <- function(...){
  warning("'warn' function was called")
}

#' @rdname basic_functions
#' @export
blank <- function(){}

#' @rdname basic_functions
#' @export
id <- function(x, ...){
  x
}

#' @rdname basic_functions
#' @export
execute <- function(FUN, ...) {
  if(!is.function(FUN)){
    msg <- "the first argument in `execute` must be a function, not a '%s'"
    stop(sprintf(msg, paste(class(FUN), collapse=",")))
  }
  FUN(...)
}
