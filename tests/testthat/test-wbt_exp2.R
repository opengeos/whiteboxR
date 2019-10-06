context("wbt_exp2")

test_that("Returns the exponential (base 2) of values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_exp2(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
