context("wbt_round")

test_that("Rounds the values in an input raster to the nearest integer value", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_round(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
