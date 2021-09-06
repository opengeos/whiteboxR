context("wbt_list_unique_values")

test_that("Lists the unique values contained in a field within a vector's attribute table", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_list_unique_values(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
