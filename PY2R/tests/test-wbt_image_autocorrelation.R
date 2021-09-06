context("wbt_image_autocorrelation")

test_that("Performs Moran's I analysis on two or more input images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_image_autocorrelation(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
