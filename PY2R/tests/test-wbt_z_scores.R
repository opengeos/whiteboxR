context("wbt_z_scores")

test_that("Standardizes the values in an input raster by converting to z-scores", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_z_scores(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
