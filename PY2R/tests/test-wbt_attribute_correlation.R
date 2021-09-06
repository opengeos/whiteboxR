context("wbt_attribute_correlation")

test_that("Performs a correlation analysis on attribute fields from a vector database", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_attribute_correlation(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
