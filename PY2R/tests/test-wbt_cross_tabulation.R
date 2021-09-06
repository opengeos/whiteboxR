context("wbt_cross_tabulation")

test_that("Performs a cross-tabulation on two categorical images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_cross_tabulation(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
