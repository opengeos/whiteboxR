context("wbt_tanh")

test_that("Returns the hyperbolic tangent (tanh) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_tanh(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
