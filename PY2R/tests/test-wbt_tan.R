context("wbt_tan")

test_that("Returns the tangent (tan) of each values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_tan(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
