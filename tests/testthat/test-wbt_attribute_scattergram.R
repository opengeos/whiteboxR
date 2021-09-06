context("wbt_attribute_scattergram")

test_that("Creates a scattergram for two field values of a vector's attribute table", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_attribute_scattergram(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
