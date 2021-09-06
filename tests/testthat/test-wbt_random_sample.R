context("wbt_random_sample")

test_that("Creates an image containing randomly located sample grid cells with unique IDs", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_random_sample(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
