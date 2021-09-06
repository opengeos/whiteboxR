context("wbt_random_field")

test_that("Creates an image containing random values", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_random_field(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
