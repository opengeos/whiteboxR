context("wbt_trend_surface_vector_points")

test_that("Estimates a trend surface from vector points", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_trend_surface_vector_points(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
