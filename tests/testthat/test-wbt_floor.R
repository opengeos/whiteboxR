context("wbt_floor")

test_that("Returns the largest (closest to positive infinity) value that is less than or equal to the values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_floor(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
