context("wbt_principal_component_analysis")

test_that("Performs a principal component analysis (PCA) on a multi-spectral dataset", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_principal_component_analysis(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
