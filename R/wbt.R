#' Initialize WhiteboxTools
#'
#' `wbt_init()`: Check if a suitable WhiteboxTools executable is present. Search default path in package directory or set it manually with `exe_path`. 
#' 
#' @param exe_path Default `exe_path` is result of `wbt_exe_path()` which checks a few user-settable options before defaulting to the package installation directory sub-directory "WBT". May be overridden if a custom path is needed.
#' @param ... additional arguments to `wbt_options()`
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
wbt_init <- function(exe_path = wbt_exe_path(shell_quote = FALSE), ...) {
  
  # optional parameters specified by ...
  initargs <- list(...)
  wd <- initargs[["wd"]]
  verbose <- initargs[["verbose"]]
  
  if (!is.character(exe_path) || length(exe_path) != 1) {
    stop("exe_path must be a character vector with length 1", call. = FALSE)
  }
  
  # if exe_path is not NULL and file exists, and value differs from the wbt_exe_path() result
  if ((!is.null(exe_path) && 
      file.exists(exe_path) &&
      exe_path != wbt_exe_path(shell_quote = FALSE)) || !is.null(wd) || !is.null(verbose)) {
    # set the path with wbt_options
    wbt_options(exe_path = exe_path, ...)
  }

  # check whether path exists (using new options)
  res1 <- check_whitebox_binary()
  
  # success? binary found matches path the user (may have) set, return TRUE
  new_exe_path <- wbt_exe_path(shell_quote = FALSE)
  res2 <- new_exe_path == exe_path
  
  # if the wbt_exe_path() output doesnt match user input
  if (!res2) {
    if (wbt_verbose()) {
      message("WhiteboxTools Executable Path (whitebox.exe_path) reverted to:\n\t", 
              new_exe_path, "\n", call. = FALSE)
    }
  }
  return(invisible(res1 && res2))
}

#' @description `wbt_options()`: Get/set package options
#' 
#' - **`whitebox.exe_path`** - character. Path to executable file. The default value is the package installation directory, subdirectory `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the `whitebox.exe_path` option using `wbt_init()` `exe_path` argument
#' 
#' - **`whitebox.wd`** - character. Path to WhiteboxTools working directory. Used as `--wd` argument for tools that support it when `wd` is not specified elsewhere.
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
#' # set multiple options (e.g. exe_path and verbose) with wbt_options()
#' wbt_options(exe_path = "not/a/valid/path/whitebox_tools.exe", verbose = TRUE)
#'
#' }
wbt_options <- function(exe_path = NULL, wd = NULL, verbose = NULL) {
  
  # get the system value
  syswbt <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  syswd <- Sys.getenv("R_WHITEBOX_WD")
  sysvrb <- Sys.getenv("R_WHITEBOX_VERBOSE")
  
  # check user input, set package options
  if (!is.null(exe_path)) {
    options(whitebox.exe_path = exe_path)
  }
  
  if (!is.null(wd)) {
    options(whitebox.wd = wd) 
  }
  
  if (!is.null(verbose)) {
    options(whitebox.verbose = verbose)
  }
  
  invisible(list(
    whitebox.exe_path = ifelse(nchar(syswbt) == 0,
                               getOption("whitebox.exe_path", default = wbt_exe_path(shell_quote = FALSE)),
                               syswbt),
    whitebox.wd       = ifelse(nchar(syswd)  == 0,
                               getOption("whitebox.wd", default = ""),       syswd),
    whitebox.verbose  = ifelse(
      nchar(sysvrb) == 0,
      getOption("whitebox.verbose", default = ""),
      sysvrb
    )
  ))
}

#' @description `wbt_wd()`: Get or Set the WhiteboxTools working directory
#' 
#' @param wd character; Default: `NULL`; if set the package option `whitebox.wd` is set specified path (if directory exists)
#' 
#' @return `wbt_wd()`: character; when working directory is unset, will not add `--wd=` arguments to calls and should be the same as using `getwd()`. See Details.
#' 
#' @details `wbt_wd()`: Before you set the working directory in a session the default output will be in your current R working directory unless otherwise specified. You can change working directory at any time by setting the `wd` argument to `wbt_wd()` and running a tool. Note that once you have set a working directory, the directory needs to be set somewhere to "replace" the old value; just dropping the flag will not change the working directory back to the R working directory. To "unset" the option in the R package you can use `wbt_wd("")` which is equivalent to `wbt_wd(getwd())`. 
#' @rdname wbt_init
#' @export
#' @examples 
#' \dontrun{
#' 
#' ## wbt_wd():
#'
#' # set WBT working directory to R working directory
#' wbt_wd(wd = getwd())
#' }
wbt_wd <- function(wd = NULL) {
  
  # system environment var takes precedence
  syswd <- Sys.getenv("R_WHITEBOX_WD")
  if (nchar(syswd) > 0 && dir.exists(syswd)) {
    return(syswd)
  }

  if (length(wd) > 0 && (is.na(wd) || wd == "")) {
    curwd <- getwd()
    if(wbt_verbose()) {
      cat("Reset WhiteboxTools working directory to current R working directory:", curwd, 
          "\nAfter next tool run package option will be unset so that --wd flag is dropped.")
    }
    wd <- structure(curwd, unset = TRUE)
  } 
  
  if (is.character(wd)) {
    # if character input, set the package option "wd"
    wbt_options(wd = wd)
  } 
  
  # package option checked next; if missing default is getwd() (unspecified should be same as getwd())
  res <- getOption("whitebox.wd")
  
  # an empty string silently stays an empty string
  if (is.null(res) || nchar(res) == 0) {
    res <- ""
  # otherwise, if the option is invalid directory message
  } else if (!is.null(res) && !dir.exists(res)) {
    message("Invalid path for whitebox.wd: directory does not exist. Defaulting to current R working directory.\nSee ?getwd")
    res <- getwd()
  }
  
  invisible(res)
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
  # NA is treated NULL (no effect)
  if (length(verbose) != 1 || is.na(verbose)) {
    verbose <- NULL
  }
  
  # system environment var takes precedence
  sysverbose <- Sys.getenv("R_WHITEBOX_VERBOSE")
  
  # if logical system env var, use that
  if (is.logical(sysverbose) && !is.na(sysverbose)) {
    return(sysverbose)
  }
  
  # if logical input, set the package option "verbose"
  if (is.logical(verbose) || (!is.null(verbose) && verbose == "all")) {
    wbt_options(verbose = verbose)
  }
  
  # package option subsequently, default true for interactive use
  res <- as.logical(getOption("whitebox.verbose", default = interactive()))
  
  if (is.na(res) || (!is.null(verbose) && verbose == "all")) {
    res <- TRUE
  } else if (is.na(res) || !is.logical(res)) {
    message('Invalid value for whitebox.verbose, defaulting to interactive()')
    res <- interactive()
  }

  invisible(res)
}

#' @export
wbt_install <- function(pkg_dir = find.package("whitebox")) {

  # Check for binary file in 'WBT' directory.
  exe_path <- wbt_exe_path(shell_quote = FALSE)
  os <- Sys.info()["sysname"]
  
  .unsupported <- function(){
    message("Sorry, whitebox download from https://github.com/giswqs/whitebox-bin/ is unsupported for your operating system!\n")     
    message("Pre-built binaries are available only for 64-bit Window, Mac OS Intel and Linux (compiled w/ Ubuntu 20.04).")
    message("See: https://www.whiteboxgeo.com/download-whiteboxtools/ \n","
                  https://github.com/giswqs/whitebox-bin/")
    message("You can follow the instructions at https://github.com/jblindsay/whitebox-tools to use cargo to build the Rust library from source.\n")
    message(paste0("If you have WhiteboxTools installed already, run `wbt_init(exe_path=...)`': \n",
                 "    wbt_init(exe_path='/home/user/path/to/whitebox_tools')\n"))
  }
  
  if (!file.exists(exe_path)) {
    
    # install_whitebox/wbt_install is 64-bit only
    if (.Machine$sizeof.pointer != 8) {
      return(invisible(.unsupported()))
    }
    
    if (os == "Linux") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_linux_amd64.zip"
    } else if (os == "Windows") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_win_amd64.zip"
    } else if (os == "Darwin") {
      url <- "https://github.com/giswqs/whitebox-bin/raw/master/WhiteboxTools_darwin_amd64.zip"
    } else {
      return(invisible(.unsupported()))
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
#' This function downloads the WhiteboxTools binary if needed. Pre-compiled binaries are only available for download for 64-bit Linux (Ubuntu 20.04), Windows and Mac OS (Intel) platforms. If you need WhiteboxTools for another platform follow the instructions here: \url{https://github.com/jblindsay/whitebox-tools}
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
  ret <- wbt_system_call("--help")
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
  ret <- wbt_system_call("--license")
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
  ret <- wbt_system_call("--version")
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
  ret <- wbt_system_call(paste("--listtools", keywords))
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
  ret <- wbt_system_call(paste0("--toolbox=", tool_name))
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
  ret <- wbt_system_call(paste0("--toolhelp=", tool_name))
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
  ret <- wbt_system_call(paste0("--toolparameters=", tool_name))
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
  ret <- wbt_system_call(paste0("--viewcode=", tool_name))
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
#' @param command_only Return command that would be run with `system()`? Default: `FALSE`
#'
#' @return Returns the (character) output of the tool. 
#'
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
wbt_run_tool <- function(tool_name, args, verbose_mode = FALSE, command_only = FALSE) {
  
  if (length(tool_name) > 1) {
    # take last tool_name in case of vector length >1
    # e.g. whitebox::wbt_tool_name match.call() output
    tool_name <- tool_name[length(tool_name)]
  }
  
  # build the call with wbt_system_call()
  ret <-  wbt_system_call(paste(args, "-v"),
                          tool_name = tool_name,
                          command_only = command_only)
        
  if (command_only) {
    return(ret)
  }
  
  # produce a custom error message for tools to indicate it did not run
  if (length(ret) == 0 || all(nchar(ret) == 0) || !is.null(attr(ret, 'status'))) {
    ret <- paste(tool_name, "-", "Elapsed Time: NA [did not run]")
  } else if (wbt_options()$whitebox.verbose == "all") {
    cat(ret, sep = "\n")
    ret <- paste(tool_name, "-", ret[length(ret)])
  } else if (!verbose_mode) {
    ret <- paste(tool_name, "-", ret[length(ret)])
  } 
  
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  
  # check for the "unset" attribute and unset option to empty string
  # if an error status code is returned, this step is skipped (the run doesn't count)
  # this ensures the tool has been run at least once with new --wd= before dropping the --wd= flag
  unsetwd <- attr(getOption("whitebox.wd"), 'unset')
  if (is.null(attr(ret, 'status')) && !is.null(unsetwd)) {
    if (wbt_verbose()) {
      cat("Unset WhiteboxTools working directory flag `whitebox.wd` / `--wd`\n")
    }
    wbt_options(wd = "")
  }
  
  invisible(ret)
}

# sanitize tool names from user input and R methods (function names, case variants etc)
wbt_internal_tool_name <- function(tool_name) {
  gsub("^(whitebox::)?(wbt_)?", "", tool_name)
}


# wrapper method for system()
wbt_system_call <- function(argstring, ...,  command_only = FALSE, ignore.stderr = FALSE) {
  wbt_init()
  wbt_exe <- wbt_exe_path()
  args2 <- argstring
  tool_name <- list(...)[["tool_name"]]
  
  # messages about misspecified arguments (e.g. tool_name to wbt_tool_help())
  if (length(args2) > 1) {
    message("NOTE: Argument string has length greater than 1; using first value")
    args2 <- args2[1]
  }
  
  # messages about tool_name >1
  if (length(tool_name) > 1) {
    message("NOTE: tool_name argument has length greater than 1; using first name")
    tool_name <- tool_name[1]
  }
  
  # if working directory is not specified in the argstring, then pull the package option 
  if (!grepl("--wd=", args2)) {
    userwd <- wbt_wd()
    if (nchar(userwd) > 0) {
      argstring <- paste0(argstring, " --wd=", shQuote(userwd))
    }  
    # don't add the --wd= argument if the system/package option is unset (value == "")
  }
  
  # allow tool_name to be specified for --run= argument only via ...
  if (!is.null(tool_name) && tool_name != "") {
    tool_name <- wbt_internal_tool_name(tool_name)
    args2 <- paste0("--run=", tool_name, " ", argstring)
    
    # TODO: QC on arguments based on supplied tool name and related metadata
    
  } else {
    tool_name <- ""
  }
  
  exeargs <- paste(wbt_exe, args2)
  
  # support command_only argument
  if (command_only) {
    return(exeargs)
  }
  
  stopmsg <- paste0("\nError running WhiteboxTools", 
                    ifelse(tool_name != "",  paste0(" (", tool_name, ")"), ""), "\n",
                    "  whitebox.exe_path: ", wbt_exe, "; File exists? ", 
                                                         file.exists(wbt_exe_path(shell_quote = FALSE)),
                    "\n  Arguments: ", args2)
  ret <- try(suppressWarnings(tryCatch(
    system(exeargs, intern = TRUE, ignore.stderr = ignore.stderr, ignore.stdout = FALSE),
    error = function(err) stop(stopmsg, "\n\n", err, call. = FALSE)
  )), silent = TRUE)
  
  if (inherits(ret, 'try-error')) {
    message(ret[[1]])
    ret <- ret[[1]]
  } else if (!is.null(attr(ret, "status"))) {
    message(stopmsg, "\n")
    message("System command had status ", attr(ret,"status"))
    if (length(ret) == 0 || nchar(ret) == 0) {
      ret[1] <- stopmsg
    }
  }
  
  invisible(ret)
}

# convenience method for sample DEM
sample_dem_data <- function() {
  system.file("extdata/DEM.tif", package = "whitebox")[1]
}

# convenience method for setting RUST_BACKTRACE options for debugging
wbt_rust_backtrace <- function(RUST_BACKTRACE = c("0", "1", "full")) {
  Sys.setenv(RUST_BACKTRACE = match.arg(as.character(RUST_BACKTRACE)[1], 
                                        choices = c("0", "1", "full")))
  invisible(Sys.getenv("RUST_BACKTRACE", unset = "0"))
}
