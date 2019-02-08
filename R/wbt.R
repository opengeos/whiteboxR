#' File path of the WhiteboxTools executable.
#'
#' Get the file path of the WhiteboxTools executable.
#'
#' @return Returns the file path of WhiteboxTools executable.
#' @export
#'
#' @examples
#' wbt_exe <- wbt_exe_path()
wbt_exe_path <- function() {
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
#' wbt_help()
wbt_help <- function() {
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
#' wbt_license()
wbt_license <- function() {
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
#' wbt_version()
wbt_version <- function() {
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
#' wbt_list_tools("lidar")
wbt_list_tools <- function(keywords=NULL) {
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
#' wbt_toolbox("breach_depressions")
wbt_toolbox <- function(tool_name=NULL) {
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
#' wbt_tool_help("lidar_info")
wbt_tool_help <- function(tool_name=NULL) {
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
#' wbt_tool_parameters("lidar_info")
wbt_tool_parameters <- function(tool_name) {
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
#' wbt_view_code("breach_depressions")
wbt_view_code <- function(tool_name) {
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
#' tool_name <- "breach_depressions"
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' output <- "./output.tif"
#' arg1 <- paste0("--dem=", dem)
#' arg2 <- paste0("--output=", output)
#' args <- paste(arg1, arg2)
#' wbt_run_tool(tool_name, args)
wbt_run_tool <- function(tool_name, args, verbose_mode=FALSE) {
  wbt_exe <- wbt_exe_path()
  arg1 <- paste0("--run=", tool_name)
  args2 <- paste(wbt_exe, arg1, args, "-v")
  ret <- system(args2, intern = TRUE)
  if (verbose_mode == FALSE) {
    ret <- paste(tool_name, "-", utils::tail(ret, n=1))
  }
  return(ret)
}
