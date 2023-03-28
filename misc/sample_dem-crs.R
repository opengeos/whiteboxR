library(whitebox)
library(terra)
r <- rast(sample_dem_data())
crs(r) <-  "EPSG:26918"
r2 <- rast(r)
res(r2) <- 90
ext(r2) <- c(664692, 664692 + 237 * 90,
            4878904, 4878904 + 188 * 90)
r3 <- project(r, r2)
writeRaster(r3,  "inst/extdata/DEM.tif", NAflag = -32768.0, overwrite=TRUE)
