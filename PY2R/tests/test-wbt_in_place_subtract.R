context("wbt_in_place_subtract")

test_that("Performs an in-place subtraction operation (input1 -= input2)", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_in_place_subtract(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
