context("wbt_image_correlation")

test_that("Performs image correlation on two or more input images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_image_correlation(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
