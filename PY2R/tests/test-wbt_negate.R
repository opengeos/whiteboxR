context("wbt_negate")

test_that("Changes the sign of values in a raster or the 0-1 values of a Boolean raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_negate(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
