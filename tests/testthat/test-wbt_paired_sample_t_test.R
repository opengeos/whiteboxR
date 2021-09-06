context("wbt_paired_sample_t_test")

test_that("Performs a 2-sample K-S test for significant differences on two input rasters", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_paired_sample_t_test(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
