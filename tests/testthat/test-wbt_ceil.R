context("wbt_ceil")

test_that("Returns the smallest (closest to negative infinity) value that is greater than or equal to the values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_ceil(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
