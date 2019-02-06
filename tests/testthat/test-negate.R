context("negate")

test_that("Changes the sign of values in a raster or the 0-1 values of a Boolean raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- negate(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
