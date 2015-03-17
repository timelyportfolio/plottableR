#' @export
pt_scale <- function( type = NULL, ... ){
  arguments <- list(...)
  return(list( type = type, arguments = arguments ))
}

#' @export
pts_ordinal <- function(...){
  htmlwidgets::JS('new Plottable.Scale.Ordinal()')
}


#' @export
pts_color <- function(...){

}

#' @export
pts_color_interpolated <- function(...){

}

#' @export
pts_linear <- function(...){
  htmlwidgets::JS('new Plottable.Scale.Linear()')
}

#' @export
pts_log <- function(...){

}

#' @export
pts_log_modified <- function(...){

}


#' @export
pts_time <- function(...){

}
