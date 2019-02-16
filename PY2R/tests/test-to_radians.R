context("to_radians")

test_that("Converts a raster from degrees to radians", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- to_radians(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
