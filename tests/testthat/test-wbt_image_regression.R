context("wbt_image_regression")

test_that("Performs image regression analysis on two input images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_image_regression(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
