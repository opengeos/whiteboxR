context("wbt_xor")

test_that("Performs a logical XOR operator on two Boolean raster images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_xor(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
