context("wbt_ln")

test_that("Returns the natural logarithm of values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_ln(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
