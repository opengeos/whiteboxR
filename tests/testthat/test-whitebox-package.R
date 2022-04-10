test_that("whitebox datasets", {
  
  wbttools <- NULL
  wbttoolparameters <- NULL
  
  load(system.file("data/wbttools.rda", package = "whitebox"))
  load(system.file("data/wbttoolparameters.rda", package = "whitebox"))
  
  # at least one row and the R `function_name` is defined in both datasets
  expect_true(nrow(wbttools) > 0 & "function_name" %in% colnames(wbttools))
  expect_true(nrow(wbttoolparameters) > 0 & "function_name" %in% colnames(wbttoolparameters))
  
  # no list columns
  expect_true(!any(sapply(wbttoolparameters, is.list)))
  
  # parameters available for every tool
  expect_true(all(wbttoolparameters$function_name %in% wbttools$function_name))
  expect_true(all(wbttools$function_name %in% wbttoolparameters$function_name))
})

test_that("cleanup", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  expect_true(is.numeric(unlink(c('output.tif', 'settings.json'))))
  
})