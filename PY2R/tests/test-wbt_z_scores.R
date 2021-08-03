context("wbt_z_scores")

test_that("Standardizes the values in an input raster by converting to z-scores", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_z_scores(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
