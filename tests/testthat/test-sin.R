context("sin")

test_that("Returns the sine (sin) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- sin(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
