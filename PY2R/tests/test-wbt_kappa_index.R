context("wbt_kappa_index")

test_that("Performs a kappa index of agreement (KIA) analysis on two categorical raster files", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_kappa_index(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
