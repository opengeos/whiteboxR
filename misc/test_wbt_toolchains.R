library(terra)
library(whitebox)

wbt_verbose(FALSE)
wbt_wd(tempdir())

# calculating a wetness index
dem <- sample_dem_data()

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
foo <- vect(data.frame(iid = 1:100,
                       x = runif(100, 0, 100), 
                       y = runif(100, 0, 100)), 
                geom = c("x","y"), crs = "EPSG:2163")
fp <- file.path(wbt_wd(), "foo.shp")
writeVector(foo, fp, overwrite = TRUE)
x <- wbt_source(fp)

# several ways of specifying tool name
wbt(wbt_nearest_neighbour_gridding, input = x, output = "foo.tif", field = "iid", cell_size = 0.3) # wbt.function
wbt("nearest neighbour gridding", input = x, output = "foo.tif", field = "iid", cell_size = 0.3)   # wbt.character wbt_, spaces removed
wbt("NearestNeighbourGridding", input = x, output = "foo.tif", field = "iid", cell_size = 0.3) # wbt.character case insensitive

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

# wbt() methods compatible with pipes (base |> or magrittr %>%)
# run two commands, then return the third command before running (uses the inputs from first two)
wbt("slope", dem = dem, output = "slope.tif") |> 
  wbt("slope", output = "curvature.tif")

# get just the command for the console
wbt("slope", dem = dem, output = "slope.tif", command_only = TRUE) |> 
  cat()

# three tool runs, run the first two then give command for third
wbt("slope", dem = dem, output = "slope.tif") |> 
  wbt("slope", output = "curvature.tif") |> 
  wbt("slope", output = "torsion.tif", command_only = TRUE)

# using pipes
x <- wbt("slope", dem = dem, output = "slope.tif") |>
  wbt("slope", output = "curvature.tif") |>
  wbt("slope", output = "torsion.tif") 

# stack results with rast() and plot
# use get_result(<wbt_result>)
# - returns a list if there is more than one result in history
# - create multilayer SpatRaster from list
x |>
  get_result() |>
  terra::rast() |>
  plot()

# inpect history
x$history

# SpatRaster in, SpatRaster out, SpatRaster throughout
one <- wbt("slope", dem = rast(dem), output = "slope.tif")
two <- wbt("slope", dem = one$result$output, output = "curvature.tif")
thr <- wbt("slope", dem = two$result$output, output = "torsion.tif")
plot(terra::rast(list(one$result$output, two$result$output, thr$result$output)))

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



