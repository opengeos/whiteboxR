context("wbt_negate")

test_that("Changes the sign of values in a raster or the 0-1 values of a Boolean raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_negate(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
