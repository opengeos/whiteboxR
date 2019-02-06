context("cumulative_distribution")

test_that("Converts a raster image to its cumulative distribution function", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- cumulative_distribution(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
