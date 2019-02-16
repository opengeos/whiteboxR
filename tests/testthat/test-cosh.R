context("cosh")

test_that("Returns the hyperbolic cosine (cosh) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- cosh(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
