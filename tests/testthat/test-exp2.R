context("exp2")

test_that("Returns the exponential (base 2) of values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- exp2(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
