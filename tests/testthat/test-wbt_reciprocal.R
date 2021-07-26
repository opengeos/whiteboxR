context("wbt_reciprocal")

test_that("Returns the reciprocal (ie 1 / z) of values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_reciprocal(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
