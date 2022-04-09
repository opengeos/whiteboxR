context("wbt_is_no_data")

test_that("Identifies NoData valued pixels in an image", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- sample_dem_data(); skip_if(dem == "")
  ret <- wbt_is_no_data(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
