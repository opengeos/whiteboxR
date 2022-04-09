context("wbt_quantiles")

test_that("Transforms raster values into quantiles", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_quantiles(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
