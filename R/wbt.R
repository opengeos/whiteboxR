#' Initialize whitebox
#'
#' This function downloads the WhiteboxTools binary if needed.
#'
#' @return Prints out the location of the WhiteboxTools binary
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_init()
#' }
wbt_init <- function() {
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe_name  <- "whitebox_tools.exe"
  } else {
    exe_name  <- "whitebox_tools"
  }

  pkg_dir <- find.package("whitebox")
  exe_path <- file.path(pkg_dir, "WBT", exe_name)

  # Check for binary file in 'WBT' directory.

  if (!file.exists(exe_path)) {
    if (os == "Linux") {
      url <- "https://www.whiteboxgeo.com/WBT_Linux/WhiteboxTools_linux_amd64.zip"
    } else if (os == "Windows") {
      url <- "https://www.whiteboxgeo.com/WBT_Windows/WhiteboxTools_win_amd64.zip"
    } else if (os == "Darwin") {
      url <- "https://www.whiteboxgeo.com/WBT_Darwin/WhiteboxTools_darwin_amd64.zip"
    } else {
      stop("Sorry, whitebox is unsupported for your operating system!")
    }
    filename <- basename(url)
    cat("Performing one-time download of WhiteboxTools binary from\n")
    cat("    ", url, "\n")
    cat("(This could take a few minutes, please be patient...)\n")
    exe_zip <- file.path(pkg_dir, filename)
    utils::download.file(url = url, destfile = exe_zip)
    utils::unzip(exe_zip, exdir = pkg_dir)
    # if (os == "Windows") {
    #   utils::unzip(exe_zip, exdir = pkg_dir)
    # } else {
    #   utils::untar(exe_zip, exdir = pkg_dir)
    # }
    cat("WhiteboxTools binary is located at: ", exe_path, "\n")
    cat("You can now start using whitebox\n")
    cat("    > library(whitebox)\n")
    cat("    > wbt_version()\n")
  }
}


#' File path of the WhiteboxTools executable.
#'
#' Get the file path of the WhiteboxTools executable.
#'
#' @return Returns the file path of WhiteboxTools executable.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_exe <- wbt_exe_path()
#' }
wbt_exe_path <- function() {
  wbt_init()
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


#' Help description for WhiteboxTools.
#'
#' @return Returns the help description for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_help()
#' }
wbt_help <- function() {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--help")
  ret <- system(args, intern = TRUE)
  return(ret)
}


#' License information for WhiteboxTools.
#'
#' @return Returns the license information for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_license()
#' }
wbt_license <- function() {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--license")
  ret <- system(args, intern = TRUE)
  return(ret)
}


#' Version information for WhiteboxTools.
#'
#' @return Returns the version information for WhiteboxTools as an R character vector.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_version()
#' }
wbt_version <- function() {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--version")
  ret <- system(args, intern = TRUE)
  return(ret)
}


#' All available tools in WhiteboxTools.
#'
#' @param keywords Keywords may be used to search available tools.
#'
#' @return Return all available tools in WhiteboxTools that contain the keywords.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_list_tools("lidar")
#' }
wbt_list_tools <- function(keywords=NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--listtools")
  if (!is.null(keywords)) {
    args <- paste(args, keywords)
  }
  ret <- system(args, intern = TRUE)
  return(ret[ret != ""])
}



#' The toolbox for a specific tool.
#'
#' Retrieve the toolbox for a specific tool.
#'
#' @param tool_name The name of the tool.
#'
#' @return Returns the toolbox for a specific tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_toolbox("breach_depressions")
#' }
wbt_toolbox <- function(tool_name=NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--toolbox=")
  if (!is.null(tool_name)) {
    args <- paste(args, tool_name)
  }
  ret <- system(args, intern = TRUE)
  return(ret[ret != ""])
}


#' Help description for a specific tool.
#'
#' Retrieves the help description for a specific tool.
#'
#' @param tool_name The name of the tool.
#'
#' @return Returns the help description for a specific tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_tool_help("lidar_info")
#' }
wbt_tool_help <- function(tool_name=NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--toolhelp=")
  if (!is.null(tool_name)) {
    args <- paste0(args, tool_name)
  }
  ret <- system(args, intern = TRUE)
  return(ret[ret != ""])
}


#' Tool parameter descriptions for a specific tool.
#'
#' Retrieves the tool parameter descriptions for a specific tool.
#'
#' @param tool_name The name of the tool.
#'
#' @return Returns the tool parameter descriptions for a specific tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_tool_parameters("lidar_info")
#' }
wbt_tool_parameters <- function(tool_name) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste0("--toolparameters=", tool_name)
  args <- paste(wbt_exe, args)
  ret <- system(args, intern = TRUE)
  return(ret)
}


#' Source code for a specific tool.
#'
#' Opens a web browser to view the source code for a specific tool on the projects source code repository.
#' @param tool_name Name of the tool.
#'
#' @return Returns a GitHub URL to view the source code of the tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_view_code("breach_depressions")
#' }
wbt_view_code <- function(tool_name) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste0("--viewcode=", tool_name)
  args <- paste(wbt_exe, args)
  ret <- system(args, intern = TRUE)
  return(ret)
}


#' Run a tool.
#'
#' Runs a tool and specifies tool arguments.
#'
#' @param tool_name The name of the tool to run.
#' @param args Tool arguments.
#' @param verbose_mode Verbose mode. Without this flag, tool outputs will not be printed.
#'
#' @return Returns the output descriptions of the tool.
#' @export
#'
#' @examples
#' \dontrun{
#' tool_name <- "breach_depressions"
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' output <- "./output.tif"
#' arg1 <- paste0("--dem=", dem)
#' arg2 <- paste0("--output=", output)
#' args <- paste(arg1, arg2)
#' wbt_run_tool(tool_name, args)
#' }
wbt_run_tool <- function(tool_name, args, verbose_mode=FALSE) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- tool_name[!grepl("(whitebox|::)", tool_name)]
  tool_name <- substring(tool_name, 5)
  arg1 <- paste0("--run=", tool_name)
  args2 <- paste(wbt_exe, arg1, args, "-v")
  ret <- system(args2, intern = TRUE)
  if (verbose_mode == FALSE) {
    ret <- paste(tool_name, "-", utils::tail(ret, n = 1))
  }
  return(ret)
}
