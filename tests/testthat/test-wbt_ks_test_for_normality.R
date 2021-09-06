context("wbt_ks_test_for_normality")

test_that("Evaluates whether the values in a raster are normally distributed", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_ks_test_for_normality(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
