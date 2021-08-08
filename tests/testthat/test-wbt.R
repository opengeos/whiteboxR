test_that("default executable paths", {
  expect_true(is.character(wbt_default_path()))
  expect_true(is.character(wbt_exe_path()))
})

test_that("wbt utility functions [requires WhiteboxTools installed]", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  expect_true(wbt_init())
  expect_true(is.character(wbt_help()))
  expect_true(is.character(wbt_license()))
  expect_true(is.character(wbt_version()))
  expect_true(is.character(wbt_list_tools()))
  expect_true(is.character(wbt_tool_help()))
  expect_true(is.character(wbt_tool_parameters("Xor")))
  expect_true(is.character(wbt_view_code("Xor", viewer = FALSE)))
  expect_true(is.character(wbt_toolbox()))
})