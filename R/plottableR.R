#' Plot R data with Plottable.js
#'
#' plotting and creation function.
#'
#' @import htmlwidgets
#'
#' @export
plottable <- function(
  data = NULL
  , components = NULL
  , scales = NULL
  , axes = NULL
  , plots = NULL
  , ...
  , width = NULL
  , height = NULL
) {

  # forward options using x
  x = list(
    data = data
    , components = components
    , scales = scales
    , axes = axes
    , plots = plots
    , ...
  )

  x <- Filter( Negate(is.null), x )

  # create widget
  htmlwidgets::createWidget(
    name = 'plottableR',
    x,
    width = width,
    height = height,
    package = 'plottableR'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
plottableROutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'plottableR', width, height, package = 'plottableR')
}

#' Widget render function for use in Shiny
#'
#' @export
renderPlottableR <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, plottableROutput, env, quoted = TRUE)
}
