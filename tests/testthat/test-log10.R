context("log10")

test_that("Returns the base-10 logarithm of values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- log10(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
