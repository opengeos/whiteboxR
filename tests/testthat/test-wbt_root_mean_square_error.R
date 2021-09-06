context("wbt_root_mean_square_error")

test_that("Calculates the RMSE and other accuracy statistics", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_root_mean_square_error(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
