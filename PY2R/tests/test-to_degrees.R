context("to_degrees")

test_that("Converts a raster from radians to degrees", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- to_degrees(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
