context("round")

test_that("Rounds the values in an input raster to the nearest integer value", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- round(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
