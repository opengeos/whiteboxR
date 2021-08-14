.onLoad <- function(libname, pkgname) {
  # check_whitebox_binary() is called "loudly" only on package load either:
  #   1. interactively, or 
  #   2. environment var R_WHITEBOX_VERBOSE=TRUE or package option whitebox.verbose=TRUE
  check_whitebox_binary(silent = !wbt_verbose())
}

#' Check for WhiteboxTools executable path
#'
#' @param silent logical. Print help on installation/setting path. Default `TRUE`.
#' @seealso [wbt_exe_path()]
#' @return logical if WhiteboxTools executable file exists.
#' @export
check_whitebox_binary <- function(silent = TRUE) {

  # look in standard locations
  exe_path <- wbt_exe_path(shell_quote = FALSE)
  res <- file.exists(exe_path)

  if (!res && !silent) {
    msg <- paste0(
      "\n",
      "------------------------------------------------------------------------\n",
      "Could not find WhiteboxTools!\n",
      "------------------------------------------------------------------------\n",
      "\n",
      "Your next step is to download and install the WhiteboxTools binary:\n",
      "    > whitebox::install_whitebox()\n",
      "\n",
      "If you have WhiteboxTools installed already, set the path with:\n",
      "    > Sys.setenv(R_WHITEBOX_EXE_PATH = 'C:/path/to/whitebox_tools.exe')\n",
      "\n",
      "Or run `wbt_init()` to set package option 'whitebox.exe_path': \n",
      "    > wbt_init('/home/user/path/to/whitebox_tools')\n",
      "\n",
      "For whitebox package documentation, ask for help:\n",
      "    > ??whitebox\n",
      "\n",
      "For more information visit https://giswqs.github.io/whiteboxR/\n",
      "\n",
      "------------------------------------------------------------------------\n")
    message(msg)
  }
  res
}
