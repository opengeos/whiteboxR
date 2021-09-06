context("wbt_or")

test_that("Performs a logical OR operator on two Boolean raster images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_or(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
