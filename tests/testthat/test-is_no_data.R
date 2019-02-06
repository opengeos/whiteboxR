context("is_no_data")

test_that("Identifies NoData valued pixels in an image", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- is_no_data(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
