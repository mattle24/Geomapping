library(readr)

# Read in data
coords <- read_csv("coords.csv")

library(leaflet)
m <- leaflet() %>%
  # htmlwidgets::onRender("
  #   L.tilelayer 
  #   
  #                       ")
  addProviderTiles(providers$Esri.WorldImagery, options = tileOptions(maxZoom = 25, 
                                                                      maxNativeZoom = 18) ) %>%
  addMeasure(position = 'bottomleft', primaryLengthUnit = 'meters') %>%
  addCircleMarkers(lng = coords$lon, lat = coords$lat)

m
