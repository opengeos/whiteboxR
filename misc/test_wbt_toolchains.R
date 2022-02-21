library(sf)
library(terra)
library(whitebox)

wbt_verbose(FALSE)
wbt_wd(tempdir())

# calculating a wetness index
dem <- system.file("extdata/DEM2.tif", package = "whitebox")

# compare raster (rdem) and terra (tdem) as R raster object frontends
rdem <- raster::raster(dem)
tdem <- terra::rast(dem)

# if input raster data have a CRS, that CRS is returned in result
# raster::crs(rdem) <-  raster::crs('EPSG:26918')
# terra::crs(tdem) <- 'EPSG:26918'

# wbt() compatible with pipes (base |> or magrittr %>%)
wbt("slope", dem = rdem, output = "slope.tif") |>
  wbt("slope", output = "curvature.tif", command_only = TRUE) |>
  cat()

# terra and raster objects returned based on user input types

# terra input; terra output
t1 <- wbt("slope", dem = tdem, output = "slope.tif")
class(tdem) == class(t1$result$output)

# raster input; raster output
r1 <- wbt("slope", dem = rdem, output = "slope.tif")
class(rdem) == class(r1$result$output)

# currently there is no convenient interface to sf object for vector data
#           terra::vect() SpatVector is not an option, not file based
foo <- st_as_sf(data.frame(iid = runif(100, 0, 10),
                           x = runif(100, 0, 100), 
                           y = runif(100, 0, 100)), 
                coords = c("x","y"), crs = st_crs(2163))
st_write(foo, file.path(wbt_wd(), "foo.shp"), append=FALSE)

# several ways of specifying tool name
wbt(wbt_nearest_neighbour_gridding, input = "foo.shp", output = "foo.tif", field = "iid", cell_size = 0.3) # wbt.function
wbt("nearest neighbour gridding", input = "foo.shp", output = "foo.tif", field = "iid", cell_size = 0.3)   # wbt.character wbt_, spaces removed
wbt("NearestNeighbourGridding", input = "foo.shp", output = "foo.tif", field = "iid", cell_size = 0.3) # wbt.character case insensitive

# deliberately mess up required argument (dem) and it is magically fixed 
#  .:. dem is an "input" variable for "slope" even though its name is "dem"
x <- wbt("slope", input = dem, output = "slope.tif")

# spell something wrong
wbt("slope", inpoot = dem, output = "slope.tif")

# automatically filling in first "input" argument, since "dem" is not specified
wbt("slope", input = dem, output = "slope.tif") 

# deliberately mess up required argument and get help
wbt("slope", dem = dem, asdf = "slope.tif", units = 'percent') 

# know what tool you want? but can't remember the arguments?
wbt("slope")

###

dem <- system.file("extdata/DEM.tif", package = "whitebox")
dem <- raster::raster(dem)
raster::crs(dem) <- "EPSG:26918"

# wbt() methods compatible with pipes (base |> or magrittr %>%)
# run two commands, then return the third command before running (uses the inputs from first two)
wbt("slope", dem = dem, output = "slope.tif") |> 
  wbt("slope", output = "curvature.tif")

wbt("slope", dem = dem, output = "slope.tif", command_only = TRUE)

wbt("slope", dem = dem, output = "slope.tif") |> 
  wbt("slope", output = "curvature.tif") |> 
  wbt("slope", output = "torsion.tif", command_only = TRUE)

# using pipes
x <- wbt("slope", dem = dem, output = "slope.tif") |>
  wbt("slope", output = "curvature.tif") |>
  wbt("slope", output = "torsion.tif") 

# use get_result(), which will return a list if there is more than one result in history
# stack results with rast() and plot
x |>
  get_result() |>
  raster::stack() |>
  plot()

x$history

# same as this this
one <- wbt("slope", dem = dem, output = "slope.tif")
two <- wbt("slope", dem = one$result$output, output = "curvature.tif")
thr <- wbt("slope", dem = two$result$output, output = "torsion.tif")
plot(raster::stack(list(one$result$output, two$result$output, thr$result$output)))

# a list of wbt_result (just like the history)
list(one, two, thr)

# keep working with result (x) from before!
x |>
  wbt("slope", output = "snap.tif") |>
  wbt("slope", output = "crackle.tif") |>
  wbt("slope", output = "pop.tif") |>
  get_result() |> raster::stack() |> plot()

# a wbt_result, with list of wbt_result in $history
wbt("slope", dem = dem, output = "slope.tif") |> 
  wbt("slope", output = "curvature.tif") |> 
  wbt("slope", output = "torsion.tif")



