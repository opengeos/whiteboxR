context("wbt_cos")

test_that("Returns the cosine (cos) of each values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_cos(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
