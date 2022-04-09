context("wbt_truncate")

test_that("Truncates the values in a raster to the desired number of decimal places", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_truncate(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
