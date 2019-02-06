context("log2")

test_that("Returns the base-2 logarithm of values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- log2(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
