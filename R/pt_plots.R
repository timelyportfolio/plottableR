#' @export
ptp_area <- function(...){

}

#' @export
ptp_bar <- function( xScale = NULL, yScale = NULL, isVertical = T){
  return(
    list(
      xScale = htmlwidgets::JS(xScale)
      ,yScale = htmlwidgets::JS(yScale)
      ,isVertical = isVertical
    )
  )
}

#' @export
ptp_clustered_bar <- function(...){

}


#' @export
ptp_line <- function(...){

}


#' @export
ptp_pie <- function(...){

}


#' @export
ptp_scatter <- function(...){

}


#' @export
ptp_stacked_area <- function(...){

}


#' @export
ptp_stacked_bar <- function(...){

}
