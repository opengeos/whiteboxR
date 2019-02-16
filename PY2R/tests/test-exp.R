context("exp")

test_that("Returns the exponential (base e) of values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- exp(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
