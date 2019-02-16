context("absolute_value")

test_that("Calculates the absolute value of every cell in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- absolute_value(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
