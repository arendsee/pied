#' is.* functions for checking classes
#'
#' @param x anything
#' @return logical
#' @name is_functions 

#' @rdname is_function
#' @export
is.tuple <- function(x){
  'tuple' %in% class(x)
}

#' @rdname is_function
#' @export
is.unary <- function(x){
  'unary' %in% class(x)
}

#' @rdname is_function
#' @export
is.typed <- function(x){
  'typed' %in% class(x)
}

#' @rdname is_function
#' @export
is.validated <- function(x){
  'validated' %in% class(x)
}

#' @rdname is_function
#' @export
is.effectual <- function(x){
  'effectual' %in% class(x)
}