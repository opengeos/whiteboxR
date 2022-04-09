context("wbt_to_radians")

test_that("Converts a raster from degrees to radians", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_to_radians(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
