context("wbt_trend_surface")

test_that("Estimates the trend surface of an input raster file", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_trend_surface(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
