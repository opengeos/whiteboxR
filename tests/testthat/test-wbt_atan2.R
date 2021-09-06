context("wbt_atan2")

test_that("Returns the 2-argument inverse tangent (atan2)", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_atan2(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
