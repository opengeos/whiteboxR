context("arc_tan")

test_that("Returns the inverse tangent (arctan) of each values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- arc_tan(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
