context("wbt_raster_histogram")

test_that("Creates a histogram from raster values", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_raster_histogram(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
