context("wbt_raster_calculator")

test_that("This tool performs a conditional evaluaton (if-then-else) operation on a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_raster_calculator(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
