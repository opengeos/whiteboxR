context("wbt_crispness_index")

test_that("Calculates the Crispness Index, which is used to quantify how crisp (or conversely how fuzzy) a probability image is", {

  skip_on_cran()
  skip_if_not(check_whitebox_binary())
  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- wbt_crispness_index(input = dem, output = "output.tif")
  expect_match(ret, "Elapsed Time")

})
