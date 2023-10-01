#' Initialize 'WhiteboxTools'
#' 
#' `wbt_init()`: Check if a suitable 'WhiteboxTools' executable is present. Search default path in package directory or set it manually with `exe_path`.
#'
#' @param exe_path Default `exe_path` is result of `wbt_exe_path()` which checks a few user-settable options before defaulting to the package installation directory sub-directory "WBT". May be overridden if a custom path is needed.
#' @param ... additional arguments to `wbt_options()`
#' @param check_version Check version of 'WhiteboxTools' installed against version R package was built for? Default: `TRUE`
#'
#' @return `wbt_init()`: logical; `TRUE` if binary file is found at `exe_path`
#' @export
#' @keywords General
#' @seealso [install_whitebox()] [whitebox]
#' @examples
#' \dontrun{
#' ## wbt_init():
#'
#' # set path to binary as an argument
#' # wbt_init(exe_path = "not/a/valid/path/whitebox_tools.exe")
#' }
wbt_init <- function(exe_path = wbt_exe_path(shell_quote = FALSE),
                     ...,
                     check_version = TRUE) {

  # optional parameters specified by ...
  initargs <- list(...)
  wd <- initargs[["wd"]]
  verbose <- initargs[["verbose"]]
  compress_rasters <- initargs[["compress_rasters"]]

  if (!is.character(exe_path) || length(exe_path) != 1) {
    stop("exe_path must be a character vector with length 1", call. = FALSE)
  }

  exe_path <- path.expand(exe_path)

  # if exe_path is not NULL and file exists, and value differs from the wbt_exe_path() result
  if ((!is.null(exe_path) &&
        file.exists(exe_path) &&
        exe_path != wbt_exe_path(shell_quote = FALSE)) ||
      !is.null(wd) ||
      !is.null(verbose) ||
      !is.null(compress_rasters)) {
    
    if (!is.null(wd) && length(wd) > 0 && (is.na(wd) || wd == "")) {
      .wbt_wd_unset()
    }
    
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
      message("WhiteboxTools Executable Path (whitebox.exe_path) reverted to:\n\t", new_exe_path)
    }
  } 
  if (check_version) {
    # check version info, provide ONE message per session if mismatched
    exv <- try(wbt_version(extract = TRUE), silent = TRUE)
    if (is.na(exv)) {
      exv <- "<NA>"
    }
    pkv <- try(attr(whitebox::wbttools, 'version'), silent = TRUE)
    if (is.na(pkv)) {
      pkv <- "<NA>"
    }
    if (!inherits(exv, 'try-error') && !inherits(pkv, 'try-error')) {
      if (isTRUE(exv != pkv)) {
        warned <- try(get("whitebox.warned_version_difference",
                          envir = whitebox::whitebox.env),
                      silent = TRUE)
        if (inherits(warned, 'try-error')) {
          warned <- FALSE
        }
        if (wbt_verbose() && isFALSE(warned)) {
          message("NOTE: Installed WhiteboxTools version (", exv, 
                  ") is ", ifelse(exv > pkv, "newer", "older"),
                  " than the package data (", pkv, ").")
          try(assign("whitebox.warned_version_difference",
                     value = TRUE,
                     envir = whitebox::whitebox.env),
              silent = TRUE)
        }
      }
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
#' - **`whitebox.compress_rasters`** - logical. Should raster output from WhiteboxTools be compressed? Default: `FALSE`. Set the value of `whitebox.compress_rasters` with `wbt_compress_rasters()` `compress_rasters` argument.
#'
#' - **`whitebox.max_procs`** - integer. Maximum number of processes for tools that run in parallel or partially parallelize. Default: `-1` uses all of the available cores.
#'
#' @return `wbt_options()`: an invisible list containing current `whitebox.exe_path`, `whitebox.verbose`, `whitebox.compress_rasters`, and `whitebox.max_procs` options
#' @rdname wbt_init
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#'
#' ## wbt_options():
#'
#' # set multiple options (e.g. exe_path and verbose) with wbt_options()
#' wbt_options(exe_path = "not/a/valid/path/whitebox_tools.exe", verbose = TRUE)
#'
#' }
wbt_options <- function(exe_path = NULL,
                        wd = NULL,
                        verbose = NULL,
                        compress_rasters = NULL,
                        max_procs = NULL) {

  # get the system value
  syswbt <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  syswd <- Sys.getenv("R_WHITEBOX_WD")
  sysvrb <- Sys.getenv("R_WHITEBOX_VERBOSE")
  syscpr <- Sys.getenv("R_WHITEBOX_COMPRESS_RASTERS")
  sysmxp <- Sys.getenv("R_WHITEBOX_MAX_PROCS")

  # check user input, set package options
  if (!is.null(exe_path)) {
    if (file.exists(exe_path)) {
      exe_path <- path.expand(exe_path)
    } 
    options(whitebox.exe_path = exe_path)
  }

  if (!is.null(wd)) {
    # preserve attributes if any on wd
    if (dir.exists(wd)) {
      wd[1] <- path.expand(wd)
    }
    options(whitebox.wd = wd)
    try({
      .wbt_settings(.wbt_settings_json(), list(working_directory = wd))
    }, silent = TRUE)
  }

  if (!is.null(verbose)) {
    options(whitebox.verbose = verbose)
    vs <- ifelse(verbose == "all", TRUE, verbose) # alias "all" -> TRUE
    try({
      .wbt_settings(.wbt_settings_json(), list(verbose_mode = vs))
    }, silent = TRUE)
  }

  if (!is.null(compress_rasters)) {
    options(whitebox.compress_rasters = compress_rasters)
    try({
      .wbt_settings(.wbt_settings_json(), list(compress_rasters = compress_rasters))
    }, silent = TRUE)
  }

  if (!is.null(max_procs)) {
    options(whitebox.max_procs = max_procs)
    try({
      .wbt_settings(.wbt_settings_json(), list(max_procs = max_procs), comma = FALSE)
    }, silent = TRUE)
  }

  invisible(list(
    whitebox.exe_path = ifelse(nchar(syswbt) == 0,
                               getOption("whitebox.exe_path",
                                         default = wbt_exe_path(shell_quote = FALSE)),
                               syswbt),
    whitebox.wd       = ifelse(nchar(syswd)  == 0,
                               getOption("whitebox.wd",
                                         default = ""),
                               syswd),
    whitebox.verbose  = ifelse(nchar(sysvrb) == 0,
                               getOption("whitebox.verbose",
                                         default = ""),
                               sysvrb),
    whitebox.compress_rasters = ifelse(nchar(syscpr) == 0,
                                       as.logical(getOption("whitebox.compress_rasters",
                                                            default = FALSE)),
                                       syscpr),
    whitebox.max_proc = ifelse(nchar(sysmxp) == 0,
                                     as.integer(getOption("whitebox.max_proc",
                                                          default = -1)),
                                     sysmxp)
  ))
}

#' @description `wbt_exe_path()`: Get the file path of the 'WhiteboxTools' executable.
#'
#' @details `wbt_exe_path()`: Checks system environment variable `R_WHITEBOX_EXE_PATH` and package option `whitebox.exe_path`. Set your desired path with either `Sys.setenv(R_WHITEBOX_EXE_PATH = "C:/path/to/whitebox_tools.exe")` or `options(whitebox.exe_path = "C:/path/to/whitebox_tools.exe")`. The default, backwards-compatible path is returned by `wbt_default_path()`
#'
#' @param exe_path Optional: User-supplied path to 'WhiteboxTools' executable. Default: `NULL`
#' @param shell_quote Return `shQuote()` result?
#'
#' @return Returns the file path of 'WhiteboxTools' executable.
#' @export
#' @keywords General
#' @rdname wbt_init
#' @examples
#' \dontrun{
#' wbt_exe_path()
#' }
wbt_exe_path <- function(exe_path = NULL, shell_quote = TRUE) {
  syswbt <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  pkgwbt <- getOption("whitebox.exe_path")
  defwbt <- wbt_default_path()
  pthwbt <- Sys.which(basename(defwbt))

  if (!is.null(exe_path) && file.exists(exe_path)) {
    # user specified as argument
    res <- exe_path
  } else if (!is.null(syswbt) && file.exists(syswbt)) {
    # user specified as system option
    res <- syswbt
  } else if (!is.null(pkgwbt) && file.exists(pkgwbt)) {
    # user specified as package option
    res <- pkgwbt
  } else if (!is.na(pthwbt) && pthwbt != "" && file.exists(pthwbt)) {
    # whitebox_tools is on PATH
    res <- pthwbt
  } else {
    res <- defwbt
  }

  if (shell_quote) {
    return(shQuote(res))
  }
  res
}

#' @description `wbt_runner_path()`: Get the file path of the 'WhiteboxTools Runner' executable.
#'
#' @details `wbt_runner_path()`: Returns a path to 'WhiteboxTools Runner' including a platform-specific executable (with or without .exe extension)
#' @export
#' @keywords General
#' @rdname wbt_init
wbt_runner_path <- function(shell_quote = TRUE) {
  bn <- "whitebox_runner"
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    bn <- "whitebox_runner.exe"
  }
  res <- file.path(dirname(wbt_exe_path(shell_quote = FALSE)), bn)
  if (shell_quote) {
    return(shQuote(res))
  }
}

#' @title Launch 'WhiteboxTools Runner' GUI
#' @description `wbt_launch_runner()`: Launch the 'WhiteboxTools Runner' GUI at `wbt_runner_path()`
#' @param clear_app_state Clear application state memory? Default: `FALSE`
#' @details Opens the 'WhiteboxTools Runner' GUI included with WhiteboxTools Open Core v2.3.0 or higher.
#' @seealso [wbt_runner_path()]
#' @export
#' @keywords General
#' @rdname wbt_launch_runner
wbt_launch_runner <- function(clear_app_state = FALSE) {
  system(paste0(wbt_runner_path(), ifelse(clear_app_state, "--clear_app_state", "")))
}

#' @description `wbt_default_path()`: Get the default file path of the 'WhiteboxTools' executable.
#'
#' @details `wbt_default_path()`: Returns a path to 'WhiteboxTools' executable including a platform-specific executable (with or without .exe extension)
#' @export
#' @keywords General
#' @rdname wbt_init
wbt_default_path <- function() {

  exe <- "whitebox_tools"

  # system specific executable filename
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe <- "whitebox_tools.exe"
  }
  file.path(wbt_data_dir(), "WBT", exe)
}

#' @description `wbt_data_dir()`: Get the directory where 'WhiteboxTools' data are stored.
#'
#' @details `wbt_data_dir()`: Uses platform-specific user data directory from `tools::R_user_dir(package = "whitebox", which = "data")` on R 4.0+. On R<4 returns the original default `find.package("whitebox")`.
#' @export
#' @keywords General
#' @rdname wbt_init
wbt_data_dir <- function() {
  if (R.version$major >= 4) {
    tools::R_user_dir(package = "whitebox", which = "data")
  } else {
    # backwards compatible path
    find.package("whitebox")
  }
}

#' @description `wbt_wd()`: Get or set the 'WhiteboxTools' working directory. Default: `""` (unset) is your R working directory if no other options are set.
#'
#' @param wd character; Default: `NULL`; if set the package option `whitebox.wd` is set specified path (if directory exists)
#'
#' @return `wbt_wd()`: character; when working directory is unset, will not add `--wd=` arguments to calls and should be the same as using `getwd()`. See Details.
#'
#' @details `wbt_wd()`: Before you set the working directory in a session the default output will be in your current R working directory unless otherwise specified. You can change working directory at any time by setting the `wd` argument to `wbt_wd()` and running a tool. Note that once you have set a working directory, the directory needs to be set somewhere to "replace" the old value; just dropping the flag will not change the working directory back to the R working directory. To "unset" the option in the R package you can use `wbt_wd("")` which removes the `--wd` flag from commands and sets the `working_directory` value in the WhiteboxTools _settings.json_ to `""`.
#' @rdname wbt_init
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#'
#' ## wbt_wd():
#' 
#' # no working directory set
#' wbt_wd(wd = "")
#' 
#' # set WBT working directory to R working directory
#' wbt_wd(wd = getwd())
#' }
wbt_wd <- function(wd = NULL) {

  if (is.character(wd)) {
    # if character input, set the package option "wd"
    wbt_options(wd = wd)
  }

  # system environment var takes precedence
  syswd <- Sys.getenv("R_WHITEBOX_WD")
  if (nchar(syswd) > 0 && dir.exists(syswd)) {
    return(syswd)
  }
  
  # package option checked next; if missing default is getwd() (unspecified should be same as getwd())
  res <- getOption("whitebox.wd")

  # an empty string silently stays an empty string
  if (is.null(res) || nchar(res) == 0) {
    res <- ""
  # otherwise, if the option is invalid directory message
  } else if (!is.null(res) && !dir.exists(res)) {
    message("Invalid path for `whitebox.wd`: directory does not exist.\nDefaulting to \"\"")
    res <- ""
  }

  invisible(res)
}

.wbt_wd_unset <- function() {
  try({
    .wbt_settings(.wbt_settings_json(), list(working_directory = ""))
  }, silent = TRUE)
}

.wbt_settings_json <- function() {
  # TODO: what if this settings.json is not writable? 
  #       should a working dir settings.json take precedence
  file.path(dirname(wbt_exe_path(shell_quote = FALSE)), "settings.json")
}

# f: a settings.json file (default format only: 1 line per setting)
# x: a named list of key:value pairs
.wbt_settings <- function(f, x, comma = TRUE) {
  try({
    if (file.exists(f)) {
      xx <- readLines(f, warn = FALSE)
      n <- names(x)
      x <- lapply(x, function(y) {
        if (is.logical(y)) {
          return(tolower(isTRUE(y)))
        } else if (is.numeric(y)) {
          return(y)
        } else {
          return(paste0('"', y, '"'))
        }
      })
      for (i in seq_along(x)) {
        xx[grepl(sprintf('^ *"%s": .*$', n[i]), xx)] <- sprintf(paste0('  "%s": %s', ifelse(comma, ",", "")), n[i], x[[i]])
      }
      writeLines(xx, f)
    }
  })
}

#' @description `wbt_verbose()`: Check verbose options for 'WhiteboxTools'
#'
#' @param verbose Default: `NULL`; if logical, set the package option `whitebox.verbose` to specified value
#'
#' @return `wbt_verbose()`: logical; defaults to result of `interactive()`
#' @rdname wbt_init
#' @export
#' @keywords General
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
  sysverbose <- Sys.getenv("R_WHITEBOX_VERBOSE", unset = "")
  if (sysverbose == "all") {

    # wbt_verbose always return logical, "all" is a flavor of true
    return(TRUE)

  } else if (sysverbose != "") {

    # take up to first 5 characters, uppercase eval/parse/convert to logical
    # this should also allow for 0/1 to be specified and converted as needed to logical
    sysverbose <- as.logical(eval(parse(text = toupper(substr(sysverbose, 0, 5)))))

  }

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

#' @description `wbt_compress_rasters()`: Check raster compression option for 'WhiteboxTools'. Default: `FALSE`
#'
#' @param compress_rasters Default: `NULL`; if logical, set the package option `whitebox.compress_rasters` to specified value
#'
#' @return `wbt_compress_rasters()`: logical; defaults to `NA`
#' @rdname wbt_init
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#'
#' ## wbt_compress_rasters():
#'
#' wbt_compress_rasters(compress_rasters = TRUE)
#' }
wbt_compress_rasters <- function(compress_rasters = NULL) {
  # NA is treated NULL (no effect)
  if (length(compress_rasters) != 1 || is.na(compress_rasters)) {
    compress_rasters <- NULL
  }

  # system environment var takes precedence
  syscompress <- Sys.getenv("R_WHITEBOX_COMPRESS_RASTERS", unset = NA)
  if (!is.na(syscompress)) {

    # take up to first 5 characters, uppercase eval/parse/convert to logical
    # this should also allow for 0/1 to be specified and converted as needed to logical
    syscompress <- as.logical(eval(parse(
      text = toupper(substr(syscompress, 0, 5))
    )))
  }

  # if logical system env var, use that
  if (is.logical(syscompress) && !is.na(syscompress)) {
    return(syscompress)
  }

  # if logical input, set the package option "compress_rasters"
  if (is.logical(compress_rasters)) {
    wbt_options(compress_rasters = compress_rasters)
  }

  # package option subsequently, default FALSE
  res <- as.logical(getOption("whitebox.compress_rasters", default = NA))

  if (is.na(res) || !is.logical(res)) {
    res <- NA
  }

  invisible(res)
}

#' @description `wbt_max_procs()`: Check maximum number of processes for  for tools that run in parallel or partially parallelize. Default: `-1` uses all of the available cores.
#'
#' @param max_procs Default: `NULL`; if integer, set the package option `whitebox.max_procs` to specified value
#'
#' @return `wbt_max_procs()`: integer; defaults to `NA_integer_`
#' @rdname wbt_init
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#'
#' ## wbt_max_procs():
#'
#' wbt_max_procs(max_procs = 2)
#' }
wbt_max_procs <- function(max_procs = NULL) {
  # NA is treated NULL (no effect)
  if (length(max_procs) != 1 || is.na(max_procs)) {
    max_procs <- NULL
  }

  # system environment var takes precedence
  sysmax_procs <- Sys.getenv("R_WHITEBOX_MAX_PROCS", unset = NA)
  if (!is.na(sysmax_procs)) {
    sysmax_procs <- as.integer(sysmax_procs)
  }

  # if integer system env var, use that
  if (is.integer(sysmax_procs) && !is.na(sysmax_procs)) {
    return(sysmax_procs)
  }

  # if integer input, set the package option "max_procs"
  if (is.numeric(max_procs)) {
    wbt_options(max_procs = as.integer(max_procs))
  }

  # package option subsequently, default FALSE
  res <- as.integer(getOption("whitebox.max_procs", default = NA_integer_))

  if (!is.integer(res)) {
    res <- NA_integer_
  }

  invisible(res)
}


#' @export
#' @keywords General
#' @rdname install_whitebox
wbt_install <- function(pkg_dir = wbt_data_dir(), platform = NULL, force = FALSE, remove = FALSE) {

  stopifnot(is.logical(force))
  stopifnot(is.logical(remove))
  stopifnot(length(pkg_dir) == 1)
  stopifnot(is.character(pkg_dir))

  pkg_dir <- normalizePath(pkg_dir, "/", FALSE)

  if (!is.na(remove) && remove) {
    unlink(list.files(file.path(pkg_dir, "WBT"), recursive = TRUE, full.names = TRUE), force = force, recursive = TRUE)
  }

  # Check for binary file in 'WBT' directory
  exe_path <- wbt_default_path()
  os <- Sys.info()["sysname"]

  .unsupported <- function(){
    message("Sorry, whitebox download from https://www.whiteboxgeo.com/download-whiteboxtools/ is unsupported for your operating system!\n")
    message("Pre-built binaries are available only for 64-bit Windows, Mac OS Intel and Linux (compiled w/ Ubuntu 20.04).")
    message("See: https://www.whiteboxgeo.com/download-whiteboxtools/ \n")
    message("You can follow the instructions at https://github.com/jblindsay/whitebox-tools to use cargo to build the Rust library from source.\n")
    message(paste0("If you have WhiteboxTools installed already, run `wbt_init(exe_path=...)`': \n",
                 "\twbt_init(exe_path='/home/user/path/to/whitebox_tools')\n"))
  }

  # if not in package directory, and user has not specified a path
  if (!file.exists(exe_path) || pkg_dir != wbt_default_path() || force) {

    # install_whitebox/wbt_install is 64-bit only
    if (.Machine$sizeof.pointer != 8) {
      return(invisible(.unsupported()))
    }
    
    if (missing(platform) || is.null(platform)) {
      if (os == "Linux") {
        url <- "https://www.whiteboxgeo.com/WBT_Linux/WhiteboxTools_linux_amd64.zip"
      } else if (os == "Windows") {
        url <- "https://www.whiteboxgeo.com/WBT_Windows/WhiteboxTools_win_amd64.zip"
      } else if (os == "Darwin") {
        suffix <- "amd64"
        if (Sys.info()["machine"] == "arm64") {
          suffix <- "darwin_m_series"
        }
        url <- paste0("https://www.whiteboxgeo.com/WBT_Darwin/WhiteboxTools_darwin_", suffix , ".zip")
      } else {
        return(invisible(.unsupported()))
      }
    } else {
      # supports alternative platforms/filenames 
      # e.g. linux_musl, darwin_m_series
      url <- paste0("https://www.whiteboxgeo.com/WBT_",
               os, "/WhiteboxTools_",
               platform, ".zip") 
    }

    filename <- basename(url)
    cat("Performing one-time download of WhiteboxTools binary from\n")
    cat("\t", url, "\n")
    cat("(This could take a few minutes, please be patient...)\n")

    # path for downloaded zip file;
    # remove downloaded zip file when exiting function
    exe_zip <- file.path(pkg_dir, filename)
    on.exit(unlink(exe_zip), add = TRUE)

    if (!dir.exists(pkg_dir)) {
      dir.create(pkg_dir, recursive = TRUE)
    }

    # this fails on some platforms and with certain URLs
    #  tried curl::curl_download, httr::GET, and other download.file method options for libcurl
    # logic from xfun::download_file used for tinytex::install_tinytex()
    if (getOption("timeout") == 60L) {
      opts = options(timeout = 3600)
      on.exit(options(opts), add = TRUE)
    }
    res <- -1
    for (method in c(if (os == "Windows") "internal", "libcurl", "auto")) {
      if (!inherits(try({
        res <- utils::download.file(url, exe_zip, method = method)
      }, silent = TRUE), "try-error") && res == 0)
        break
    }

    if (res != 0) {
      message("Unable to download by any method! Try downloading ZIP manually from https://www.whiteboxgeo.com/download-whiteboxtools/. Installation involves just extracting to your desired directory. Set path to binary with wbt_init(exe_path = '/path/to/whitebox_tools')")
      return(invisible(NULL))
    }

    # unzip to either whitebox package or user specified folder
    utils::unzip(exe_zip, exdir = pkg_dir)

    # subfolder WBT/whitebox_tools
    exe_path_out <- file.path(pkg_dir, "WBT", basename(exe_path))
    Sys.chmod(exe_path_out, '755')

    # if (os == "Windows") {
    #   utils::unzip(exe_zip, exdir = pkg_dir)
    # } else {
    #   utils::untar(exe_zip, exdir = pkg_dir)
    # }

    # if we can find the file where we extracted it, let the user know
    if (file.exists(exe_path_out)) {
      cat("WhiteboxTools binary is located here: ", exe_path_out, "\n")
      cat("You can now start using whitebox\n")
      cat("    library(whitebox)\n")
      cat("    wbt_version()\n")

      # call wbt_init (sets package option)
      wbt_init(exe_path = exe_path_out, wd = "")
    }

  } else if (!force) {
    cat("WhiteboxTools binary is located here: ", exe_path, "\n")
  }

  # return installed path
  if (check_whitebox_binary()) {
    return(invisible(wbt_exe_path(shell_quote = FALSE)))
  }
  invisible(NULL)
}

# many packages provide an "install_*" method; alias wbt_install mirrors the wbt_ prefix for most operations. Documentation refers to install_whitebox()

#' Download and Install 'WhiteboxTools'
#' 
#' This function downloads the 'WhiteboxTools' binary if needed. Pre-compiled binaries are
#' only available for download for 64-bit Linux (default compiled with glibc on Ubuntu 22.04;
#' use `platform="linux_musl"` for musl/earlier versions of glibc), Windows and Mac OS (ARM and
#' Intel) platforms. If you need WhiteboxTools for another platform follow the instructions to 
#' build from source: \url{https://github.com/jblindsay/whitebox-tools}
#'
#' 'WhiteboxTools' and all of its extensions can be uninstalled by passing the `remove=TRUE` argument.
#'
#' @param pkg_dir default install path is to whitebox package "WBT" folder
#' @param platform character. Optional: suffix used for alternate platform names. Options include: `"linux_musl"`
#' @param force logical. Force install? Default `FALSE`. When `remove=TRUE` passed to `unlink()` to change permissions to allow removal of files/directories.
#' @param remove logical. Remove contents of "WBT" folder from `pkg_dir`? Default: `FALSE`
#' @return Prints out the location of the WhiteboxTools binary, if found. `NULL` otherwise.
#' @aliases wbt_install
#' @examples
#' \dontrun{
#' install_whitebox()
#' }
#' @export
#' @keywords General
install_whitebox <- function(pkg_dir = wbt_data_dir(), platform = NULL, force = FALSE, remove = FALSE) {
  wbt_install(pkg_dir = pkg_dir, platform = platform, force = force, remove = remove)
}

#' @param extension Extension name
#' @param destdir Directory to create `/plugins/` directory for extracting extensions
#' @export
#' @keywords General
#' @rdname install_whitebox
#' @importFrom utils unzip
wbt_install_extension <- function(extension = c(
                                  "GeneralToolsetExtension",
                                  "AgricultureToolset",
                                  "DemAndSpatialHydrologyToolset",
                                  "LidarAndRemoteSensingToolset"
                                 ),
                                  platform = NULL,
                                  destdir = dirname(wbt_exe_path(shell_quote = FALSE))) {
  extension <- match.arg(extension, c(
        "GeneralToolsetExtension",
        "AgricultureToolset",
        "DemAndSpatialHydrologyToolset",
        "LidarAndRemoteSensingToolset"
      ), several.ok = TRUE)

  sn <- Sys.info()[["sysname"]]
  fn <- tempfile(extension, fileext = ".zip")
  if (missing(platform) || is.null(platform)) {
    sufx <- switch(sn,
                   "Windows" = "win",
                   "Linux" = "linux",
                   "Darwin" = switch(Sys.info()[["machine"]],
                                     arm64 = "MacOS_ARM",
                                     "MacOS_Intel"))
  } else {
    # non-default options include: linux_musl, MacOS_ARM
    sufx <- platform 
  }
  
  if (sn == "Darwin" && Sys.info()["machine"] == "arm64") {
    suffix <- "MacOS_ARM"
  }
  
  # GTE
  if ("GeneralToolsetExtension" %in% extension) {
    url <- sprintf("https://www.whiteboxgeo.com/GTE_%s/%s_%s.zip", sn, "GeneralToolsetExtension", sufx)
    fn <- "GeneralToolsetExtension.zip"
  } else {
    url <- sprintf("https://www.whiteboxgeo.com/%s/%s_%s.zip", extension, extension, sufx)
  }

  ed <- file.path(destdir, "plugins")
  download.file(url, destfile = fn, mode = "wb")
  unzip(fn, exdir = ed, junkpaths = TRUE)
  Sys.chmod(list.files(ed, full.names = TRUE), mode = '0755')
  invisible(unlink(fn))
}

#' Activate 'WhiteboxTools' Extensions
#' 
#' @param email Email Address
#' @param activation_key Activation Key
#' @param seat Seat Number (Default `1`)
#' @param destdir Directory containing `whitebox_tools` and `/plugins/` folder.
#'
#' @return `0` for success (invisibly). Try-error on error.
#' @export
#' @keywords General
wbt_activate <- function(email, activation_key, seat = 1,
                         destdir = dirname(wbt_exe_path(shell_quote = FALSE))) {
  exeactivate <- ifelse(Sys.info()[["sysname"]] == "Windows",
                        "register_license.exe", "register_license")
  input <- c("register", email, seat, activation_key, "y", "N")
  invisible(try(system(file.path(destdir, "plugins", exeactivate), input = input)))
}

#' Help description for 'WhiteboxTools'
#' 
#' @return Returns the help description for 'WhiteboxTools' as an R character vector.
#' @export
#' @keywords General
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


#' License information for 'WhiteboxTools'
#' 
#' @return Returns the license information for WhiteboxTools as an R character vector.
#' @export
#' @keywords General
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


#' Version information for 'WhiteboxTools'
#'
#' @param extract Extract semantic version number from first line of result? Default: `FALSE`
#'
#' @return Returns the version information for 'WhiteboxTools' as an R character vector.
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#' wbt_version()
#' }
wbt_version <- function(extract = FALSE) {
  ret <- wbt_system_call("--version", check_version = FALSE)
  if (extract) {
    return(gsub(".*\\bv([0-9\\.]+)\\b.*", "\\1", ret[1]))
  }
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}

#' All available tools in 'WhiteboxTools'
#' 
#' @param keywords Keywords may be used to search available tools. Default `"''"` returns all available tools.
#'
#' @return Return all available tools in WhiteboxTools that contain the keywords.
#' @export
#' @keywords General
#'
#' @examples
#' \dontrun{
#' wbt_list_tools("lidar")
#' }
wbt_list_tools <- function(keywords = "''") {
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
#' @details Leaving `tool_name` as default `NULL` returns results for all tools, but does not work on Windows.
#' @return Returns the toolbox for a specific tool.
#' @export
#' @keywords General
#'
#' @examples
#' \dontrun{
#' wbt_toolbox("breach_depressions")
#' }
wbt_toolbox <- function(tool_name = NULL) {
  ret <- wbt_system_call(paste0("--toolbox", ifelse(!is.null(tool_name),
                                                    paste0("=", tool_name), ""))
                        )
                        # , command_only = TRUE)

  # TODO: shell problems; fix null tool_name not working on windows
  # system(paste(wbt_exe_path(shell_quote = TRUE), '--toolbox'), intern = TRUE)
  # thread 'main' panicked at 'Unrecognized tool name C:\PROGRA~1\UNIVER~1.0_W\WBT\WHITEB~1.EXE.', src\main.rs:72:21 note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace

  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Help description for a specific tool in 'WhiteboxTools'
#' 
#' Retrieves the help description for a specific tool.
#'
#' @param tool_name The name of the tool.
#'
#' @return Returns the help description for a specific tool.
#' @details Leaving `tool_name` as default `NULL` returns results for all tools, but does not work on Windows.
#' @export
#' @keywords General
#'
#' @examples
#' \dontrun{
#' wbt_tool_help("lidar_info")
#' }
wbt_tool_help <- function(tool_name = NULL) {
  ret <- wbt_system_call(paste0("--toolhelp",
                                ifelse(!is.null(tool_name),
                                       paste0("=", tool_name), "")))
  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }
  invisible(ret)
}


#' Tool parameter descriptions for a specific tool in 'WhiteboxTools'
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
#' @keywords General 
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


#' Source code for a specific tool in 'WhiteboxTools'
#'
#' Opens a web browser to view the source code for a specific tool on the projects source code repository.
#' @param tool_name Name of the tool.
#' @param viewer Show source code in browser? default: `TRUE`
#' @return Returns a GitHub URL to view the source code of the tool.
#' @export 
#' @keywords General  
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

#' Run a tool in 'WhiteboxTools' by name
#'
#' Runs a tool and specifies tool arguments. If the prefix "whitebox::" or "wbt_" is in `tool_name` it is removed to match the definitions in `wbt_list_tools()`
#'
#' @param tool_name The name of the tool to run.
#' @param args Tool arguments.
#' @param verbose_mode Verbose mode. Without this flag, tool outputs will not be printed.
#' @param command_only Return command that would be run with `system()`? Default: `FALSE`
#'
#' @return Returns the (character) output of the tool.
#' @export 
#' @keywords General
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

  # identify any warning messages in output
  warn.idx1 <- grep("\\*{82}", ret)
  warn.idx2 <- grep("warning\\:", ret, ignore.case = TRUE)

  # produce a custom error message for tools to indicate it did not run
  if (length(ret) == 0 || all(nchar(ret) == 0) || !is.null(attr(ret, 'status'))) {
    ret <- paste(tool_name, "-", "Elapsed Time: NA [did not run]")
  } else if (wbt_verbose() && length(warn.idx2) > 0) {
    # show all output from first warning indicator to last, and find elapsed time
    cat(ret[min(c(warn.idx1, warn.idx2)):max(c(warn.idx1, warn.idx2))], sep = "\n")
    # supports warning messages all on one line, or multi-line
    #   at end of processing, surrounded by "*"x82
    mx <- length(ret)
    if (length(warn.idx1) > 0) {
      mx <- warn.idx1[1] - 1
    }
    ret <- paste(tool_name, "-", ret[mx])
  } else if (wbt_options()$whitebox.verbose == "all") {
    # in "all" mode the full output is shown
    cat(ret, sep = "\n")
    ret <- paste(tool_name, "-", ret[length(ret)])
  } else if (!verbose_mode) {
    ret <- paste(tool_name, "-", ret[length(ret)])
  }

  if (wbt_verbose()) {
    cat(ret, sep = "\n")
  }

  invisible(ret)
}

# sanitize tool names from user input and R methods (function names, case variants etc)
wbt_internal_tool_name <- function(tool_name) {
  gsub("^(.)|_(.)", "\\U\\1\\2", gsub("^(whitebox::)?(wbt_)?", "", tool_name), perl = TRUE)
}

wbt_match_tool_name <- function(tool_name, result = c('tool_name', 'function_name')) {
  
  wbttools <- NULL
  load(system.file("data/wbttools.rda", package = "whitebox"))
  
  result <- match.arg(result, choices = c('tool_name', 'function_name'), several.ok = TRUE)
  
  idx <- match(tolower(wbttools$tool_name), tolower(gsub("[ _]", "", tool_name)))
  
  wbttools[idx[which(!is.na(idx))], result, drop = FALSE]
  
}

#' Wrapper method for `system()` calls of `whitebox_tools`
#'
#' @param argstring Concatenated string of parameters passed in tool command.
#' @param tool_name 'WhiteboxTools' tool name
#' @param command_only Return command only?
#' @param ignore.stderr Ignore system() stderr output?
#' @param shell_quote Should the executable path part of the command be quoted?
#' @param check_version Should the version of 'WhiteboxTools' installed be checked against the version the package was built with?
#' @param ... Additional arguments are passed to `wbt_init()`
#' @keywords internal
#' @noRd
wbt_system_call <- function(argstring,
                            tool_name = NULL,
                            command_only = FALSE,
                            ignore.stderr = FALSE,
                            shell_quote = TRUE,
                            check_version = TRUE, 
                            ...) {

  wbt_init(..., check_version = check_version)
  wbt_exe <- wbt_exe_path(shell_quote = shell_quote)
  args2 <- argstring
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

  # if compression is not specified in the argstring, then pull the package option
  if (!grepl("--compress_rasters", args2)) {
    crflag <- wbt_compress_rasters()
    if (!is.na(crflag) && is.logical(crflag)) {
      argstring <- paste0(argstring, " --compress_rasters=", crflag)
      # add the --compress_rasters flag if needed
    }
  }

  # if compression is not specified in the argstring, then pull the package option
  if (!grepl("--max_procs", args2)) {
    mxpflag <- wbt_max_procs()
    if (!is.na(mxpflag) && is.integer(mxpflag)) {
      argstring <- paste0(argstring, " --max_procs=", mxpflag)
      # add the --max_procs flag if needed
    }
  }

  # allow tool_name to be specified for --run= argument only via tool_name
  if (!is.null(tool_name) && tool_name != "") {
    tool_name <- wbt_internal_tool_name(tool_name)
    args2 <- paste0("--run=", tool_name, " ", argstring)

    # TODO: QC on arguments based on supplied tool name and related metadata

  } else {
    tool_name <- ""
  }

  exeargs <- trimws(paste(wbt_exe, args2))

  # support command_only argument
  if (command_only) {
    return(exeargs)
  }

  stopmsg <- paste0("\nError running WhiteboxTools",
                    ifelse(tool_name != "",  paste0(" (", tool_name, ")"), ""), "\n",
                    "  whitebox.exe_path: ", wbt_exe, "; File exists? ",
                                                         file.exists(wbt_exe_path(shell_quote = FALSE)),
                    "\n  Arguments: ", args2)

  ret <- try(suppressWarnings(
    system(exeargs, intern = TRUE, ignore.stderr = ignore.stderr, ignore.stdout = FALSE)
  ), silent = TRUE)

  if (!is.null(attr(ret, "status"))) {
    message(stopmsg, "\n")
    message("System command had status ", attr(ret, "status"))
    if (length(ret) > 0 && nchar(ret[1]) > 0) {
      message(paste0(ret, collapse = "\n"))
    }
  }
  invisible(ret)
}

# support for path expansion in input/output file arguments
wbt_file_path <- function(x, shell_quote = TRUE) {
  stopifnot(length(x) == 1)
  .shQuote <- function(x) if (shell_quote) shQuote(x) else x
  sapply(x, function(y){
    if (is.character(y)) {
      .shQuote(paste0(path.expand(strsplit(y, ";|,")[[1]]), collapse = ","))
    } else y
  })
}

#' Convenience method for path to sample DEM
#'
#' Get a file path to DEM.tif stored in extdata subfolder of whitebox package installation directory. If needed, download the TIFF file from GitHub.
#'
#' @param destfile Path to target location of sample data. Will be downloaded if does not exist. Defaults to file path of extdata subfolder of whitebox package installation directory.
#' @param ... additional arguments to download.file()
#'
#' @return character.
#' @export
#' @keywords General datasets
#'
#' @examples
#'
#' if (check_whitebox_binary()) {
#'   wbt_slope(sample_dem_data(), output = "slope.tif")
#' }
#' unlink(c('slope.tif', 'settings.json'))
#' @importFrom utils download.file
sample_dem_data <- function(destfile = file.path(system.file('extdata', package="whitebox"), 'DEM.tif'), ...) {
  if (missing(destfile)) {
    fp <- system.file("extdata/DEM.tif", package = "whitebox")[1]
  } else {
    if (!file.exists(destfile)) {
      fp <- ""
    } else {
      fp <- destfile
    }
  }
  if (fp == "") {
    try(download.file("https://github.com/opengeos/whiteboxR/raw/master/inst/extdata/DEM.tif",
                      destfile = destfile,
                      mode = "wb", ...))
    if (missing(destfile)) {
      fp <- system.file("extdata/DEM.tif", package = "whitebox")[1]
    } else {
      if (file.exists(destfile)) {
        fp <- destfile
      }
    }
  }
  fp
}

#' Convenience method for setting RUST_BACKTRACE options for debugging
#'
#' @param RUST_BACKTRACE One of `"0"`, `"1"`, `"full"`, Logical values are converted to integer and then character.
#'
#' @return value of system environment variable `RUST_BACKTRACE`
#' @export
#' @keywords General
#' @examples
#' \dontrun{
#' wbt_rust_backtrace(TRUE)
#' }
wbt_rust_backtrace <- function(RUST_BACKTRACE = c("0", "1", "full")) {
  if (is.logical(RUST_BACKTRACE)) {
    RUST_BACKTRACE <- as.integer(RUST_BACKTRACE)
  }
  Sys.setenv(RUST_BACKTRACE = match.arg(as.character(RUST_BACKTRACE)[1],
                                        choices = c("0", "1", "full")))
  invisible(Sys.getenv("RUST_BACKTRACE", unset = "0"))
}
