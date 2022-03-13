library(testthat)
library(whitebox)
whitebox:::wbt_rust_backtrace('1')
test_check("whitebox")
