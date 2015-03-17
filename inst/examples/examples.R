#devtools::install_github("timelyportfolio/plottableR")

library(plottableR)

plottable(
  scales = list(
    xScale = pt_scale( "Category" )
    ,yScale = pt_scale( "Linear" )
  )
  ,axes = list(
    xAxis = list(
      scale = "xScale"
      ,type = "Category"
      ,location = "bottom"
    )
    ,yAxis = list(
      scale = "yScale"
      ,type = "Numeric"
      ,location = "left"
    )
  )
  ,plots = list(
    bar = list( type = "Bar" )
  )
  ,data = jsonlite::fromJSON('
[
  {"name": "Verne Troyer",      "height": 81},
  {"name": "Olson Twins",       "height": 152},
  {"name": "Miley Cyrus",       "height": 165},
  {"name": "Tom Cruise",        "height": 170},
  {"name": "Leonardo DiCaprio", "height": 183},
  {"name": "Conan O\'Brien",     "height": 193},
  {"name": "Liam Neeson",       "height": 198},
  {"name": "Sultan Kösen",      "height": 246}
]
  ')
)
