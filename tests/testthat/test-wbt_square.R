context("wbt_square")

test_that("Squares the values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_square(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
