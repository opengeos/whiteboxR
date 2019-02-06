context("square_root")

test_that("Returns the square root of the values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- square_root(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
