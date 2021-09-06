context("wbt_inverse_principal_component_analysis")

test_that("This tool performs an inverse principal component analysis on a series of input component images", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_inverse_principal_component_analysis(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
