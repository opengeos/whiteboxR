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
  
})
