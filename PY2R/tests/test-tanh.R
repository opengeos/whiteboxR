context("tanh")

test_that("Returns the hyperbolic tangent (tanh) of each values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- tanh(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
