context("wbt_phi_coefficient")

test_that("This tool performs a binary classification accuracy assessment", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_phi_coefficient(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
