context("wbt_artanh")

test_that("Returns the inverse hyperbolic tangent (arctanh) of each values in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_artanh(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
