context("reciprocal")

test_that("Returns the reciprocal (ie 1 / z) of values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- reciprocal(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
