context("arc_cos")

test_that("Returns the inverse cosine (arccos) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- arc_cos(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
