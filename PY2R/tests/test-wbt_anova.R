context("wbt_anova")

test_that("Performs an analysis of variance (ANOVA) test on a raster dataset", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_anova(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
