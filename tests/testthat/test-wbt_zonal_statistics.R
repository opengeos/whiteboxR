context("wbt_zonal_statistics")

test_that("Extracts descriptive statistics for a group of patches in a raster", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_zonal_statistics(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
