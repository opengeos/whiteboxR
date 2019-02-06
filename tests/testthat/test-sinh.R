context("sinh")

test_that("Returns the hyperbolic sine (sinh) of each values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- sinh(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
