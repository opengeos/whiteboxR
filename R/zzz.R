.onLoad <- function(libname, pkgname) {
  # check_whitebox_binary() is called "loudly" only on package load
  check_whitebox_binary(silent = FALSE)
}

#' Check for WhiteboxTools Binary
#'
#' @param path Path to search for binary (if not found at standard locations)
#' @param pattern Pattern to match for binary name
#' @param silent logical. Print help on installation/setting binary path. Default `TRUE`.
#' @seealso [wbt_exe_path()]
#' @aliases find_whitebox_binary
#' @return logical if WhiteboxTools Binary exists.
#' @export
check_whitebox_binary <- function(path = "~",
                                  pattern = "whitebox_tools$|whitebox_tools.exe$",
                                  silent = TRUE) {

  # look in standard locations
  exe_path <- wbt_exe_path(shell_quote = FALSE)
  res <- file.exists(exe_path)

  if (!res) {
    wbfind <- find_whitebox_binary(path = path, pattern = pattern, best = TRUE)
    res <- file.exists(wbfind)
    if (res) {
      wbt_init_from_path(wbfind)
    }
  }

  if (!res && !silent) {
    msg <- paste0(
      "\n",
      "------------------------------------------------------------------------\n",
      "Could not find WhiteboxTools Binary!\n",
      "------------------------------------------------------------------------\n",
      "\n",
      "Your next step is to download and install the WhiteboxTools binary:\n",
      "    > whitebox::install_whitebox()\n",
      "\n",
      "Or, if you have WhiteboxTools installed already, set the path with:\n",
      "    > Sys.setenv(R_WHITEBOX_EXE_PATH = 'C:/path/to/whitebox_tools.exe')\n",
      "\n",
      "For whitebox package documentation, ask for help:\n",
      "    > ??whitebox\n",
      "\n",
      "For more information visit https://giswqs.github.io/whiteboxR\n",
      "\n",
      "------------------------------------------------------------------------\n")
    message(msg)
  }
  res
}

# @param best Use heuristics to select "best" WhiteboxTools (`TRUE` for use in `check_whitebox_binary()`, default `FALSE` for `find_whitebox_binary()`)
find_whitebox_binary <- function(path = "~",
                                 pattern = "whitebox_tools$|whitebox_tools.exe",
                                 token_patterns = c("whitebox-tools","target","release","WBT"),
                                 best = FALSE) {

  res <- list.files(path = path,  pattern = pattern, recursive = TRUE, full.names = TRUE)

  # TODO: this could probably be improved
  if (best && length(res) > 1) {
    .pickBestBinary <- function(s) {
      which.max(apply(sapply(token_patterns, function(x) grepl(x, res), simplify = FALSE), 1, sum))
    }
    res <- res[.pickBestBinary(res)]
  }

  res
}
