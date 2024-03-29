context("wbt_sinh")

test_that("Returns the hyperbolic sine (sinh) of each values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_sinh(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
