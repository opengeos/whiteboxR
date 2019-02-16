context("floor")

test_that("Returns the largest (closest to positive infinity) value that is less than or equal to the values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- floor(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
