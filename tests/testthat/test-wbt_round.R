context("wbt_round")

test_that("Rounds the values in an input raster to the nearest integer value", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_round(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
