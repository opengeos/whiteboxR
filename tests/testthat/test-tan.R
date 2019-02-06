context("tan")

test_that("Returns the tangent (tan) of each values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- tan(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
