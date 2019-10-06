context("wbt_to_degrees")

test_that("Converts a raster from radians to degrees", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_to_degrees(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
