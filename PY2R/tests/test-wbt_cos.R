context("wbt_cos")

test_that("Returns the cosine (cos) of each values in a raster", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_cos(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
