
library(terra)
library(whitebox)

wbt_wd(tempdir())

# sample DEM with whitebox package
p <- sample_dem_data()
wbt(wbt_aggregate_raster, input = p, output = "agg.tif")

# SpatRaster input, output path as character
x <- wbt(wbt_slope, dem = rast(p), output = "slope.tif", units = 'percent')

# test for bad result
inherits(x$result, 'try-error')

# SpatRaster input, output path as character
x <- wbt(wbt_slope, dem = rast(p), output = "slope.tif")

# wbtresult$output contains a RasterLayer with output raster "slope.tif"
plot(x$result$output)

# y$result$output contains a RasterLayer with output raster "sca.tif"
y <- wbt(
  wbt_d8_flow_accumulation,
  input = rast(p),
  output = "sca.tif",
  out_type = 'specific contributing area'
)
plot(y$result$output)

# y$result$output contains a RasterLayer with output raster "wi.tif"
z <- wbt(
  wbt_wetness_index,
  sca = y$result$output,
  slope = x$result$output,
  output = "wi.tif"
)

plot(z$result$output)
