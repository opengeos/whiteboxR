context("wbt_arc_tan")

test_that("Returns the inverse tangent (arctan) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_arc_tan(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
