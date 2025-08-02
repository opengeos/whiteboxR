
library(whitebox)
# whitebox:::wbt_rust_backtrace('1')

if (requireNamespace("testthat")) {
  library(testthat)
  test_check("whitebox")
}