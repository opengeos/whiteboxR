context("square")

test_that("Squares the values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- square(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
