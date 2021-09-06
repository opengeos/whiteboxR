context("wbt_equal_to")

test_that("Performs a equal-to comparison operation on two rasters or a raster and a constant value", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_equal_to(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
