context("wbt_log10")

test_that("Returns the base-10 logarithm of values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_log10(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
