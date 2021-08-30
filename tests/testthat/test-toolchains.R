test_that("wbt toolchains work", {
  
  dem <- system.file("extdata/DEM.tif", package = "whitebox")
  
  # run two commands, then return the third command before running (uses the inputs from first two)
  x <- wbt(wbt(wbt("slope", dem = dem, output = "output.tif"),
                        "slope", output = "output.tif"), 
                    "slope", output = "thirdderivative.tif", command_only = TRUE)
  expect_true(is.character(x))
  
  # automatically filling in first "input" argument, since "dem" is not specified
  x <- wbt("slope", input = dem, output = "output.tif")
  expect_true(inherits(x, 'wbt_result'))
  
  # deliberately mess up required argument and get help
  x <- wbt("slope", dem = dem, asdf = "output.tif", units = 'percent')
  expect_true(inherits(x$result, 'try-error'))
  
})

test_that("wbt toolchains with >1 input", {
  
  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  skip_if_not_installed("raster")
  
  # get file path of sample DEM
  dem <- system.file("extdata/DEM.tif", package = "whitebox")
  
  # dem0: create a RasterLayer (no CRS)
  dem0 <- raster::raster(dem)
  
  # dem1: set the CRS
  dem1 <- raster::raster(dem, crs = "EPSG:26918")
  
  # dem2: in temp directory
  dem2 <- file.path(tempdir(), "DEM.tif")
  
  # create a path for the output in same directory
  slope1 <- file.path(tempdir(), "slope.tif")
  add2 <- file.path(tempdir(), "add.tif")
  
  # writeRaster with CRS info to temp file
  raster::writeRaster(dem1, dem2)
  
  # dem3: raster
  step1 <- wbt("slope", dem = raster::raster(dem2), output = slope1)
  
  # step2 uses step1 as first arg and another input as input2
  step2 <- wbt(step1, "add", input2 = dem, output = add2)
  
  expect_length(step2$history, 2)
  
  # cleanup temp files
  unlink(c(dem2, slope1, add2))
})