context("ceil")

test_that("Returns the smallest (closest to negative infinity) value that is greater than or equal to the values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- ceil(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
