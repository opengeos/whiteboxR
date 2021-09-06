context("wbt_turning_bands_simulation")

test_that("Creates an image containing random values based on a turning-bands simulation", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_turning_bands_simulation(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
