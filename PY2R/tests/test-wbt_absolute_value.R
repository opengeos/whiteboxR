context("wbt_absolute_value")

test_that("Calculates the absolute value of every cell in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_absolute_value(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
