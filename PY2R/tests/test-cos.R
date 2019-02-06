context("cos")

test_that("Returns the cosine (cos) of each values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- cos(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
