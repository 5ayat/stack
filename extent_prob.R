
library(raster)

setwd("~/Document/stack")

img <- brick("26261.png")
proj4string(img) <- CRS("+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs")
trainData <- shapefile("26261_train.shp")

plot(img,1)
plot(trainData, add = TRUE)