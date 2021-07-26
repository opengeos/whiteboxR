context("wbt_square_root")

test_that("Returns the square root of the values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_square_root(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
