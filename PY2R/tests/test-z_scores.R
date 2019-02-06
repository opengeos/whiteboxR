context("z_scores")

test_that("Standardizes the values in an input raster by converting to z-scores", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- z_scores(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
