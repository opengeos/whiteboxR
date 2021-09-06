context("wbt_attribute_correlation_neighbourhood_analysis")

test_that("Performs a correlation on two input vector attributes within a neighbourhood search windows", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_attribute_correlation_neighbourhood_analysis(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
