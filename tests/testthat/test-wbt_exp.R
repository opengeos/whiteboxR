context("wbt_exp")

test_that("Returns the exponential (base e) of values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_exp(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
