#' Get file path of WhiteboxTools executable.
#'
#' @return Returns the file path of WhiteboxTools executable.
#' @export
#'
#' @examples
#' wbt_exe <- get_wbt_exe()
get_wbt_exe <- function() {
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe_name <- "whitebox_tools.exe"
  } else {
    exe_name <- "whitebox_tools"
  }
  pkg_dir <- find.package("whitebox")
  exe_path <- file.path(pkg_dir, "WBT", exe_name)
  return(exe_path)
}


#' Retrieves the license information for WhiteboxTools.
#'
#' @return Returns the license information for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' wbt_license()
wbt_license <- function() {
  wbt_exe <- get_wbt_exe()
  args <- paste(wbt_exe, "--license")
  ret <- system(args, intern = TRUE)
  return(ret)
}



#' Retrieves the version information for WhiteboxTools.
#'
#' @return Returns the version information for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' wbt_version()
wbt_version <- function() {
  wbt_exe <- get_wbt_exe()
  args <- paste(wbt_exe, "--version")
  ret <- system(args, intern = TRUE)
  return(ret)
}



#' Retrieves the help description for WhiteboxTools.
#'
#' @return Returns the help description for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' wbt_help()
wbt_help <- function() {
  wbt_exe <- get_wbt_exe()
  args <- paste(wbt_exe, "--help")
  ret <- system(args, intern = TRUE)
  return(ret)
}

