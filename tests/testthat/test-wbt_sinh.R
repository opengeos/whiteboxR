context("wbt_sinh")

test_that("Returns the hyperbolic sine (sinh) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_sinh(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
