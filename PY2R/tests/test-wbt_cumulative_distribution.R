context("wbt_cumulative_distribution")

test_that("Converts a raster image to its cumulative distribution function", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_cumulative_distribution(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
