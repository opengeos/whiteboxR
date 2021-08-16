#' Initialize WhiteboxTools
#'
#' `wbt_init()`: Check if a suitable WhiteboxTools executable is present. Search default path in package directory or set it manually with `exe_path`. 
#' 
#' @param exe_path Default `exe_path` is result of `wbt_exe_path()` which checks a few user-settable options before defaulting to the package installation directory sub-directory "WBT". May be overridden if a custom path is needed.
#'
#' @return `wbt_init()`: logical; `TRUE` if binary file is found at `exe_path`
#' @export
#' @seealso [install_whitebox()] [whitebox]
#' @examples
#' \dontrun{
#' ## wbt_init():
#' 
#' # or set path to binary as an argument
#' # wbt_init(exe_path = "not/a/valid/path/whitebox_tools.exe")
#' }
wbt_init <- function(exe_path = wbt_exe_path(shell_quote = FALSE)) {
  
  # if exe_path is not NULL and exists, update options
  if (!is.null(exe_path) && file.exists(exe_path)) {
    wbt_options(exe_path = exe_path)
  }

  # check whether path is valid
  check_whitebox_binary()

}

#' @description `wbt_options()`: Get/set package options
#' 
#' - **`whitebox.exe_path`** - character. Path to executable file. The default value is the package installation directory, subdirectory `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the `whitebox.exe_path` option using `wbt_init()` `exe_path` argument
#' 
#' - **`whitebox.verbose`** - logical. Should standard output from calls to executable be `cat()` out for readability? Default is result of `interactive()`. Individual tools may have `verbose_mode` setting that produce only single-line output when `FALSE`. These argument values are left as the defaults defined in the package documentation for that function. When `whitebox.verbose=FALSE` no output is produced. Set the value of `whitebox.verbose` with `wbt_verbose()` `verbose` argument.
#' 
#' @return `wbt_options()`:  an invisible list containing current `whitebox.exe_path`, `whitebox.verbose` options
#' @rdname wbt_init
#' @export 
#' @examples 
#' \dontrun{
#' 
#' ## wbt_options():
#'
#' wbt_options(exe_path = "not/a/valid/path/whitebox_tools.exe", verbose = TRUE)
#'
#' }
wbt_options <- function(exe_path = NULL, verbose = NULL) {
  
  syswbt <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  sysvrb <- Sys.getenv("R_WHITEBOX_VERBOSE")
  
  if (!is.null(exe_path)) {
    options(whitebox.exe_path = exe_path)
  }
  
  if (!is.null(verbose)) {
    options(whitebox.verbose = verbose)
  }
  
  invisible(list(whitebox.exe_path = switch(is.null(syswbt), getOption("whitebox.exe_path"), syswbt),
                 whitebox.verbose  = switch(is.null(sysvrb), getOption("whitebox.verbose"), sysvrb)))
}

#' @description `wbt_verbose()`: Check verbose options for WhiteboxTools
#' 
#' @param verbose Default: `NULL`; if logical, set the package option `whitebox.verbose` to specified value
#' 
#' @return `wbt_verbose()`: logical; defaults to result of `interactive()`
#' @rdname wbt_init
#' @export
#' @examples 
#' \dontrun{
#' 
#' ## wbt_verbose():
#'
#' wbt_verbose(verbose = TRUE)
#' }
wbt_verbose <- function(verbose = NULL) {
  
  # system environment var takes precedence, but defaults FALSE
  sysverbose <- Sys.getenv("R_WHITEBOX_VERBOSE", unset = FALSE)
  if (sysverbose) {
    return(sysverbose)
  }
  
  # if non-NULL input, set the package option "verbose"
  if (!is.null(verbose) && is.logical(verbose)) {
    wbt_options(verbose = verbose)
  }
  
  # package option subsequently, default true for interactive use
  invisible(getOption("whitebox.verbose", default = interactive()))
}

#' @export
wbt_install <- function(pkg_dir = find.package("whitebox")) {

  # Check for binary file in 'WBT' directory.
  exe_path <- wbt_exe_path(shell_quote = FALSE)
  os <- Sys.info()["sysname"]

  if (!file.exists(exe_path)) {

    if (os == "Linux") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_linux_amd64.zip"
    } else if (os == "Windows") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_win_amd64.zip"
    } else if (os == "Darwin") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_darwin_amd64.zip"
    } else {
      message("Sorry, whitebox download from https://github.com/giswqs/whitebox-bin/ is unsupported for your operating system!\n")
      message("Follow the instructions at https://github.com/jblindsay/whitebox-tools that use cargo to build the Rust library from source.\n")
      message(paste0("If you have WhiteboxTools installed already, run `wbt_init(exe_path=...)`': \n",
                     "    > wbt_init(exe_path='/home/user/path/to/whitebox_tools')\n"))
    }

    filename <- basename(url)
    cat("Performing one-time download of WhiteboxTools binary from\n")
    cat("    ", url, "\n")
    cat("(This could take a few minutes, please be patient...)\n")

    exe_zip <- file.path(pkg_dir, filename)

    if (!dir.exists(pkg_dir)) {
      dir.create(pkg_dir, recursive = TRUE)
    }

    utils::download.file(url = url, destfile = exe_zip, method = "libcurl")
    utils::unzip(exe_zip, exdir = pkg_dir)

    Sys.chmod(exe_path, '755')

    # if (os == "Windows") {
    #   utils::unzip(exe_zip, exdir = pkg_dir)
    # } else {
    #   utils::untar(exe_zip, exdir = pkg_dir)
    # }

    cat("WhiteboxTools binary is located at: ", exe_path, "\n")
    cat("You can now start using whitebox\n")
    cat("    library(whitebox)\n")
    cat("    wbt_version()\n")
  }
  
  # return installed path
  if (check_whitebox_binary()) {
    return(invisible(wbt_exe_path(shell_quote = FALSE)))
  }
  invisible(NULL)
}

# many packages provide an "install_*" method; alias wbt_install mirrors the wbt_ prefix for most operations. Documentation refers to install_whitebox()

#' Download and Install WhiteboxTools
#'
#' This function downloads the WhiteboxTools binary if needed. This only works for 64-bit Linux, Windows and Mac OSX platforms. If you need WhiteboxTools for another platform follow the instructions here: \url{https://github.com/jblindsay/whitebox-tools}
#'
#' @param pkg_dir default install path is to whitebox package "WBT" folder
#' @return Prints out the location of the WhiteboxTools binary, if found. `NULL` otherwise.
#' @aliases wbt_install
#' @examples
#' \dontrun{
#' install_whitebox()
#' }
#' @export
install_whitebox <- function(pkg_dir = find.package("whitebox")) {
  wbt_install(pkg_dir = pkg_dir)
}


#' File path of the WhiteboxTools executable
#'
#' Get the file path of the WhiteboxTools executable. Checks system environment variable `R_WHITEBOX_EXE_PATH` and package option `whitebox.exe_path`. Set your desired path with either `Sys.setenv(R_WHITEBOX_EXE_PATH = "C:/path/to/whitebox_tools.exe")` or `options(whitebox.exe_path = "C:/path/to/whitebox_tools.exe")`. The default, backwards compatible path is returned by `wbt_default_path()`
#'
#' @param exe_path Optional: User-supplied path to WhiteboxTools executable. Default: `NULL`
#' @param shell_quote Return `shQuote()` result?
#'
#' @aliases wbt_default_path
#'
#' @return Returns the file path of WhiteboxTools executable.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_exe_path()
#' }
wbt_exe_path <- function(exe_path = NULL, shell_quote = TRUE) {
  syswbt <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  pkgwbt <- getOption("whitebox.exe_path")
  defwbt <- wbt_default_path()
  
  if (!is.null(exe_path) && file.exists(exe_path)) {
    # user specified as argument
    res <- exe_path
  } else if (!is.null(syswbt) && file.exists(syswbt)) {
    # user specified as system option
    res <- syswbt
  } else if (!is.null(pkgwbt) && file.exists(pkgwbt)) {
    # user specified as package option
    res <- pkgwbt
  } else {
    res <- defwbt
  }

  if (shell_quote) {
    return(shQuote(res))
  }
  res
}

#' @export
wbt_default_path <- function() {
  
  exe <- "whitebox_tools"
  
  # system specific executable filename
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe <- "whitebox_tools.exe"
  }
  
  # backwards compatible path  
  file.path(find.package("whitebox"), "WBT", exe)
}


#' Help description for WhiteboxTools
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
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' License information for WhiteboxTools
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
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Version information for WhiteboxTools
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
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' All available tools in WhiteboxTools
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
wbt_list_tools <- function(keywords = NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args <- paste(wbt_exe, "--listtools")
  if (!is.null(keywords)) {
    args <- paste(args, keywords)
  }
  ret <- system(args, intern = TRUE)
  ret <- ret[ret != ""]
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' The toolbox for a specific tool in WhiteboxTools
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
wbt_toolbox <- function(tool_name = NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- wbt_internal_tool_name(tool_name)
  args <- paste(wbt_exe, "--toolbox=")
  if (!is.null(tool_name)) {
    args <- paste(args, tool_name)
  }
  ret <- system(args, intern = TRUE)
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Help description for a specific tool in WhiteboxTools
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
wbt_tool_help <- function(tool_name = NULL) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- wbt_internal_tool_name(tool_name)
  args <- paste(wbt_exe, "--toolhelp=")
  if (!is.null(tool_name)) {
    args <- paste0(args, tool_name)
  }
  ret <- system(args, intern = TRUE)
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Tool parameter descriptions for a specific tool in WhiteboxTools
#'
#' Retrieves the tool parameter descriptions for a specific tool.
#'
#' @param tool_name The name of the tool.
#' @param quiet Prevent tool output being printed. Default: `FALSE`
#' 
#' @details `quiet` argument can be set to `TRUE` to allow for "quiet" internal use within other functions.
#' 
#' @return Returns the tool parameter descriptions for a specific tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_tool_parameters("lidar_info")
#' }
wbt_tool_parameters <- function(tool_name, quiet = FALSE) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- wbt_internal_tool_name(tool_name)
  args <- paste0("--toolparameters=", tool_name)
  args <- paste(wbt_exe, args)
  ret <- system(args, intern = TRUE)  
  if (wbt_verbose() && !quiet) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Source code for a specific tool in WhiteboxTools
#'
#' Opens a web browser to view the source code for a specific tool on the projects source code repository.
#' @param tool_name Name of the tool.
#' @param viewer Show source code in browser? default: `TRUE`
#' @return Returns a GitHub URL to view the source code of the tool.
#' @export
#'
#' @examples
#' \dontrun{
#' wbt_view_code("breach_depressions")
#' }
#' @importFrom utils browseURL
wbt_view_code <- function(tool_name, viewer = FALSE) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- wbt_internal_tool_name(tool_name)
  args <- paste0("--viewcode=", tool_name)
  args <- paste(wbt_exe, args)
  ret <- system(args, intern = TRUE)
  if (viewer) {
    utils::browseURL(ret)
  }
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Run a tool in WhiteboxTools by name
#'
#' Runs a tool and specifies tool arguments. If the prefix "whitebox::" or "wbt_" is in `tool_name` it is removed to match the definitions in `wbt_list_tools()`
#'
#' @param tool_name The name of the tool to run.
#' @param args Tool arguments.
#' @param verbose_mode Verbose mode. Without this flag, tool outputs will not be printed.
#'
#' @return Returns the output descriptions of the tool.
#' @export
#' @seealso \link{wbt_list_tools}
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
wbt_run_tool <- function(tool_name, args, verbose_mode = FALSE) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  tool_name <- wbt_internal_tool_name(tool_name)
  arg1 <- paste0("--run=", tool_name)
  args2 <- paste(wbt_exe, arg1, args, "-v")
  ret <- system(args2, intern = TRUE)
  if (!verbose_mode) {
    ret <- paste(tool_name, "-", utils::tail(ret, n = 1))
  }
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}

wbt_internal_tool_name <- function(tool_name) {
  gsub("^(whitebox::)?(wbt_)?", "", tool_name)
}


