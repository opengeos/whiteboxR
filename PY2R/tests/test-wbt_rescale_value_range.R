context("wbt_rescale_value_range")

test_that("Performs a min-max contrast stretch on an input greytone image", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_rescale_value_range(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
