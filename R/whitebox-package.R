#' @keywords internal
#' @section Package options: 
#' 
#' - **`whitebox.exe_path`** - character. Path to executable file. The default value is the package installation directory, subdirectory `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the `whitebox.exe_path` option using `wbt_init()` `exe_path` argument
#' 
#' - **`whitebox.verbose`** - logical. Should standard output from calls to executable be `cat()` out for readability? Default is result of `interactive()`. Individual tools may have `verbose_mode` setting that produce only single-line output when `FALSE`. These argument values are left as the defaults defined in the package documentation for that function. When `whitebox.verbose=FALSE` no output is produced. Set the value of `whitebox.verbose` with `wbt_verbose()` `verbose` argument.
#'  
#' The package options can be overridden with system environment variables: `R_WHITEBOX_EXE_PATH` (character) and `R_WHITEBOX_VERBOSE`, respectively.
#' @seealso [wbt_init()], [wbt_verbose()], [install_whitebox()]
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL
