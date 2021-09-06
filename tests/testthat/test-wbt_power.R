context("wbt_power")

test_that("Raises the values in grid cells of one rasters, or a constant value, by values in another raster or constant value", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_power(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
