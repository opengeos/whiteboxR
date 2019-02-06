context("decrement")

test_that("Decreases the values of each grid cell in an input raster by 10 (see also InPlaceSubtract)", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- decrement(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
