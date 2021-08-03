context("wbt_increment")

test_that("Increases the values of each grid cell in an input raster by 10 (see also InPlaceAdd)", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_increment(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
