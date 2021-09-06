context("wbt_multiply")

test_that("Performs a multiplication operation on two rasters or a raster and a constant value", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_multiply(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
