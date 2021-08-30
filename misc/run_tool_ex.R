
library(raster)
library(whitebox)
whitebox::wbt_init("/home/andrew/workspace/whitebox-tools/target/release/whitebox_tools")

wbt_wd("/home/andrew/workspace/wbt-data/wdtest/")

# sample DEM with whitebox package
p <- system.file("extdata/DEM.tif", package = "whitebox")

wbt(wbt_aggregate_raster, input = p, output = "agg.tif")

# RasterLayer input, output path as character
x <- wbt(wbt_slope, de = raster(p), output = "slope.tif", unties = 'percent')

# test for bad result
inherits(x$result, 'try-error')

# RasterLayer input, output path as character
x <- wbt(wbt_slope, dem = raster(p), output = "slope.tif")

# wbtresult$output contains a RasterLayer with output raster "slope.tif"
raster::plot(x$result$output)

# y$result$output contains a RasterLayer with output raster "sca.tif"
y <- wbt(
  wbt_d8_flow_accumulation,
  input = raster(p),
  output = "sca.tif",
  out_type = 'specific contributing area'
)
raster::plot(y$result$output)

# y$result$output contains a RasterLayer with output raster "wi.tif"
z <- wbt(
  wbt_wetness_index,
  sca = y$result$output,
  slope = x$result$output,
  output = "wi.tif"
)
raster::plot(raster(z$result$output))

all.equal(list.files(wbt_wd()), c("agg.tif", "sca.tif", "settings.json", "slope.tif", "wi.tif"
))
