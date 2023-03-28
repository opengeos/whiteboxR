library(soilDB)
library(terra)
library(whitebox)

wbt_wd("")    

b <- c(-119.747629, -119.67935, 
       36.912019, 36.944987)

# convert bounding box to WKT
bbox.sp <- sf::st_as_sf(wk::rct(
  xmin = b[1], xmax = b[2], ymin = b[3], ymax = b[4],
  crs = sf::st_crs(4326)
))

ssurgo <- SDA_spatialQuery(
  bbox.sp,
  what = 'mupolygon',
  db = 'SSURGO',
  geomIntersection = TRUE
)

wbt("vector_polygons_to_raster", 
    input = terra::vect(ssurgo),
    output = 'ssurgo3.tif',
    field = "mukey",
    cell_size = 0.0001)
plot(rast('ssurgo3.tif')) # TODO update TIFF CRS w/ terra ~1.6-27

wbt("slope", dem = rast(matrix(1:100, nrow=10, ncol=10), crs='EPSG:4326'), output = "output.tif")

t1 <- rast(matrix(rep(c(0,1),50), nrow=10, ncol=10), crs="EPSG:4326")
t2 <- rast(matrix(rep(c(1,0),50), nrow=10, ncol=10), crs="EPSG:4326")

plot(t1)
plot(t2)

t3 <- wbt_add2(t1, t2, "output.tif") |> 
  wbt_result() |> 
  rast() 
plot(c(t1, t2, t3))

