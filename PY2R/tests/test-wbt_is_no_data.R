context("wbt_is_no_data")

test_that("Identifies NoData valued pixels in an image", {

  skip_on_cran()
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_is_no_data(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
