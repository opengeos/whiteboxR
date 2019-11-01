context("wbt_arcosh")

test_that("Returns the inverse hyperbolic cosine (arcosh) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_arcosh(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
