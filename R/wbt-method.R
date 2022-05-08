#' Run WhiteboxTools by Tool Name
#'
#' You are required to specify all required arguments as either paths to files, or R object types that can be associated with a file.
#'
#' Supports SpatRaster / RasterLayer input / output. Arguments are transformed from their source class and passed to WhiteBox tools executable as standard character string arguments involving file paths.
#'
#' To print help for any tool, see `wbt_tool_help()`
#'
#' @param result an S3 object of class `wbt_result` to use to supply input arguments, may be _missing_ such that first argument is `tool_name`
#' @param tool_name character. name of the tool to run. Or a tool/function name (i.e. a symbol) that is non-standard evaluated as a character.
#' @param ... arguments to tool
#' @param crs character Optional: a WKT Coordinate Reference System string, or other identifier such as EPSG code or PROJ string
#' @param verbose_mode passed to `wbt_run_tool()`
#' @param command_only Return command that would be run with `system()`? Default: `FALSE`
#' @details `tool_name` may be specified with or without quotes or `wbt_` prefix. e.g. `"wbt_slope"`, `wbt_slope`, `slope`, and `"slope"` are identical.
#'
#' @seealso [wbt_tool_help()]
#'
#' @return a list with class `"wbt_result"` containing elements:
#'    * `tool` - the tool name
#'    * `args` - arguments passed to executable
#'    * `stdout` - console output (result of `wbt_run_tool()`)
#'    * `crs` - Coordinate Reference System string (WKT or PROJ)
#'    * `result` - any 'result' parameters (`--output`) that can be converted to R objects after run. A list of RasterLayer or character. May be a `try-error` if arguments are specified incorrectly.
#'    * `history` - history of 'result' when `wbt_result` was passed as input, most recent output at end
#'
#' @export
wbt <- function(result,
                tool_name,
                ...,
                crs = NULL,
                verbose_mode = FALSE,
                command_only = FALSE) {

  if (missing(result) || is.null(result)) {

    wbt.missing(
      result = NULL,
      tool_name = gsub("[^A-Za-z_]", "", wbt_internal_tool_name(deparse(
        substitute(tool_name)
      ))),
      ...,
      crs = crs,
      verbose_mode = verbose_mode,
      command_only = command_only
    )
  } else UseMethod("wbt")
}

# constructors for wbt_result and wbt_error_result

# TODO: think about result class structure
wbt_result <- function(tool_name, args, stdout, crs, result) {
  structure(
    list(
      tool = tool_name,
      args = args,
      stdout = stdout,
      crs = crs,
      result = result
    ), class = "wbt_result")
}

wbt_error_result <- function(tool_name, args, crs, message) {
  errm <- try(stop(), silent = TRUE)
  errm[1] <- message
  wbt_result(tool_name = tool_name,
             args = args,
             stdout = NULL,
             crs = crs,
             result = errm)
}


#' @export
print.wbt_result <- function(x, ...) {

    cat(paste0('<wbt_result>\n'))
    n <- length(x$history)
    showargs <- trimws(strsplit(x$args, "--")[[1]])
    showargs <- paste0(showargs[nchar(showargs) > 1], "'")
    showargs <- paste0(gsub('=', "\t: '", showargs), collapse = '\n')
    if (length(showargs) >= 1 && nchar(showargs) > 1) {
      cat(paste0('--- PARAMETERS (', x$tool,') ---\n', showargs),"\n")
    } else {
      cat(paste0('No parameters (', x$tool,')\n'))
    }

    if (length(x$result) > 0) {
      if (is.null(names(x$result))) {
        if (inherits(x$result, 'try-error')) {
          cat("\n",attr(x$result, "tool"), x$result[1], "\n")
        }
      } else {
        if (length(x$result) > 0) {
          cat("--- RESULT ---\n")
        }
        sapply(names(x$result), function(y) {
          resy <- x$result[[y]]
          classy <- class(resy)
          cat(paste0("$", y,"\n"))
          if (is.character(resy)) {
           if (file.exists(resy)) {
            cat('  File result: ', resy,
                paste0('exists (Last modified: ', as.character(file.mtime(resy)), ')\n'))
           } else {
             # TODO: are all output arguments "character" reasonably to be construed as files?
             cat(' ', shQuote(resy), ' [file path does not exist]\n')
           }
          } else {
            # show() for RasterLayer, SpatRaster outputs
            print(x$result[[y]])
          }
        })
      }
    } else {
      cat(paste0('  NULL result'))
    }

    if (n > 1) {
      cat(paste0("--- HISTORY ---\n"))
      cat(paste0("Prior results (n=", n - 1, ") for:"),
          paste0(sapply(x$history[1:(length(x$history) - 1)], function(y)
                                      if (!is.null(y$tool))
                                        return(y$tool)),
                 collapse = ", "), "\n -",
          paste0(sapply(x$history[1:(length(x$history) - 1)], function(y)
            if (!is.null(y$tool))
              return(paste0(y$tool," (", paste0(names(y$result), collapse=", "), "<",
                     paste0(sapply(y$result, class), collapse=", "), ">)"))),
            collapse = "\n - "))
    }
    cat("\n")
}


#' @export
#' @rdname wbt
wbt.wbt_result <- function(result, tool_name, ..., crs = NULL, verbose_mode = FALSE, command_only = FALSE) {
  # process user input
  userargs <- list(...)

  # get tool parameters and clean tool name
  prm <- .get_tool_params(tool_name)
  tool_name <- unique(prm$tool_name)[1]

  userargs <- .process_tool_params(tool_name = tool_name,
                                   userargs = userargs,
                                   result = result,
                                   prm = prm)
  yrg <- try(.process_user_args(userargs), silent = TRUE)
  if (inherits(yrg, 'try-error')) {
    message(yrg)
    message("Failed to process user arguments, this should not happen; returning NULL")
    return(NULL)
  }

  # handle CRS propagation
  crs <- ifelse(is.null(result$crs), "", result$crs)

  # TODO: carry over other arguments?

  # add prior call in history
  res <- .wbt(tool_name, yrg, prm, crs = crs, verbose_mode = verbose_mode, command_only = command_only)
  if (inherits(res, 'wbt_result')){
    res$history <- c(result$history, list(res))
  }
  res
}


#' @description `get_result()`: return a combined list of results from either the history of a `wbt_result` (if present and `history=TRUE`), or the result of a `wbt_result`
#' @param result an object of class `wbt_result`
#' @param i Optional index of result list element to return as result. Default is whole list.
#' @param history Default: `TRUE` returns a list of all history results
#' @param attribute Default: `"output"`
#' @return list of result in `attribute` if `"history"` is present, otherwise the result in `attribute`. If `i` is specified, just the `i`th element of the list. 
#' @export
#' @rdname wbt
get_result <- function(result, i = NULL, history = TRUE, attribute = "output") {
  UseMethod("get_result")
}

#' @export
get_result.wbt_result <- function(result, i = NULL, history = TRUE, attribute = "output") {
  # if there is $history present, by default return a list of all the results
  if (!is.null(result[["history"]]) && history) {
    res <- sapply(result[["history"]], function(x) x$result[[attribute]])
  } else {
    res <- result$result[[attribute]]
  }

  # get the last result as stored in $result
  if (is.null(i)) {
    return(res)
  } 
  
  if (i < 0 || i > length(res)) {
    stop(sprintf("result list index %s is out of bounds", i), call. = FALSE)
  }
  
  .subset2(res, i)
}

#' @export
as.data.frame.wbt_result <- function(x, ...) {
  outputlist <- get_result(x)
  cbind(as.data.frame(unclass(x)[c("tool", "args", "stdout", "crs")],
                      ...)[rep(1, length(outputlist)),],
        data.frame(output = I(outputlist)))
}

#' @export
#' @rdname wbt
wbt.character <- function(result, tool_name, ...,  crs = NULL, verbose_mode = FALSE, command_only = FALSE) {

  # process user input
  userargs <- list(...)

  if (!missing(tool_name) && !is.null(tool_name)) {
    warning("wbt.character uses first argument (`result`) as tool_name, `tool_name` ignored", call. = FALSE)
  }
  tool_name <- result

  # get tool parameters and clean tool name
  prm <- .get_tool_params(tool_name)
  tool_name <- unique(prm$tool_name)[1]

  userargs <- .process_tool_params(tool_name = tool_name,
                                   userargs = userargs,
                                   prm = prm)

  # get input CRS; argument takes precedence
  if (missing(crs) || is.null(crs) || crs == "") {
    # is_input is derived from the -i flag which is only defined for --input
    # we want to check multiple inputs too, these have a numeric suffix e.g --input2
    ldx <- prm$is_input | grepl("^input[1-9]+", prm$argument_name)
    crs <- .process_crs(userargs[names(userargs) %in% prm$argument_name[ldx]])
  }

  # process user input (convert complex object -> character arguments)
  yrg <- try(.process_user_args(userargs), silent = TRUE)
  if (inherits(yrg, 'try-error')) {
    message(yrg)
    message("Failed to process user arguments, this should not happen; returning NULL")
    return(NULL)
  }

  res <- .wbt(tool_name, yrg, prm, crs = crs, verbose_mode = verbose_mode, command_only = command_only)
  if (inherits(res, 'wbt_result')){
    res$history <- list(res)
  }
  res
}


# support for using exported function names directly as input
#' @export
#' @rdname wbt
wbt.function <- function(result, tool_name, ..., crs = NULL, verbose_mode = FALSE, command_only = FALSE ) {

  tool_name <- deparse(substitute(result))

  if (is.character(tool_name)) {
    wbt.character(result = tool_name, tool_name = NULL, ..., crs = crs,
                  verbose_mode = verbose_mode, command_only = command_only)
  }

}

# start a toolchain with a call where result is missing or tool_name specified as result
#' @export
#' @rdname wbt
wbt.missing <- function(result, tool_name, ..., crs = NULL, verbose_mode = FALSE, command_only = FALSE) {
  if (is.character(tool_name)) {
    wbt.character(tool_name, result, ..., crs = crs, verbose_mode = verbose_mode, command_only = command_only)
  }
}

.process_crs <- function(inputargs) {

  # support raster inputs in the following formats
  pkgin <- sapply(inputargs, function(x) {
    if (inherits(x, 'SpatRaster')) return("terra")
    if (inherits(x, 'SpatVector')) return("terra")
    if (inherits(x, 'sf')) return("sf")
    if (inherits(x, 'sfc')) return("sf")
    if (inherits(x, 'RasterLayer')) return("raster")
    if (inherits(x, 'RasterStack')) return("raster")
    if (inherits(x, 'RasterBrick')) return("raster")
    ""
  })

  # requireNamespace("terra") for terra and/or raster as needed
  pkgreq <- sapply(unique(pkgin[nchar(pkgin) > 0]),
                   requireNamespace, quietly = TRUE)
  if (any(!pkgreq)) {
    stop("package ", pkgin[!pkgreq], " is required", call. = FALSE)
  }

  if (!all(pkgin == pkgin[1])) {
    # if (pkgin[1] != "")
      # message("NOTE: Input spatial object classes do not match.")
  }

  crsin <- lapply(seq_along(inputargs), function(i) {
    x <- inputargs[[i]]
    if (pkgin[i] == "terra") {
      x2 <- try(as.character(terra::crs(x)), silent = FALSE)
    } else if (pkgin[i] == "sf") {
      x2 <- try(as.character(sf::st_crs(x)), silent = FALSE)
    } else {
      x2 <- try(if (inherits(x, 'RasterLayer')) raster::wkt(raster::crs(x)))
    }
    if (is.null(x2) || inherits(x2, 'try-error')) {
      return("")
    }
    x2
  })

  if (length(crsin) > 0) {
    crsmatch <- do.call('c', lapply(crsin, function(x) x == crsin[[1]]))
    if (length(crsmatch) == 0 || !all(crsmatch) || is.na(crsmatch)) {
      message("NOTE: Input CRS do not match.")
    }
    # take first input CRS
    res <- crsin[[1]]
    attr(res, 'package') <- pkgin[1]
  } else {
    res <- ""
    attr(res, 'package') <- ""
  }
  # record package used to create the object for use in output
  res
}


.process_user_args <- function(userargs) {

  # handle rasters so if given a raster as input, the filename is used as input
  # if a .tif file is returned as output, then the output is a RasterLayer and so on
  yrg <- lapply(names(userargs), function(argname) {
    x <- userargs[[argname]]

    # sfc/sp support
    if (inherits(x, 'sfc') || inherits(x, 'Spatial')) {
      if (requireNamespace("sf")) {
        x <- sf::st_as_sf(x)
      }
    }

    # raster rasterlayer support
    if (inherits(x, 'RasterLayer') || inherits(x, 'RasterStack') || inherits(x, 'RasterBrick')) {
      if (requireNamespace("raster")) {
        res <- try(raster::filename(x))
        attr(res, "package") <- "raster"
        return(res)
        # return(try(x@file@name))
      }
    # terra spatraster support
    } else if (inherits(x, 'SpatRaster')) {
      if (requireNamespace("terra")) {
        res <- try(terra::sources(x)$source, silent = TRUE)
        if (inherits(res, 'try-error')) {
          x <- wbt_source(x)
          res2 <- attr(x, 'wbt_dsn')
        }
        if (is.null(res2)) {
          message(res[1])
        } else res <- res2
        attr(res, "package") <- "terra"
        return(res)
        # return(try(x@ptr$filenames))
      }
    # vector data support
    } else if (inherits(x, 'SpatVector') ||
               inherits(x, 'SpatVectorProxy') ||
               inherits(x, 'sf')) {
      src <- attr(x, 'wbt_dsn')

      if (is.null(src)) {
        x <- wbt_source(x)
        src <- attr(x, 'wbt_dsn')
      }

      if (!is.null(src) && file.exists(src)) {
        if (inherits(x, 'SpatVector') ||
            inherits(x, 'SpatVectorProxy')) {

          attr(src, "package") <- "terra"

        } else if (inherits(x, 'sf')) {

          attr(src, "package") <- "sf"

        }
        return(src)

      } else {
        stop("load/initialize SpatVector/sf objects with wbt_source()", call. = FALSE)
      }
    } else if (inherits(x, 'try-error'))  {
      return(.warninput(paste0("NOTE: try-error result cannot be used as `", argname,"`")))
    } else if (!class(x)[1] %in% c("numeric", "integer", "character", "logical"))  {
      return(.warninput(
        paste0('argument type (',
        paste0(class(x), collapse = ", "),
        ') is not supported at this time')
      ))
    } else {
      # allowed inputs "numeric", "integer", "character", "logical"

      # shell quote all character (safer if paths contain parentheses)
      # convert all numeric to numeric (handles scientific notation)
      switch(class(x),
             # "character" = shQuote(x),
             "numeric" = as.numeric(x),
             x)
    }
  })
  names(yrg) <- names(userargs)

  # handle try errors by treating them as if the arguments were not supplied
  yrg <- lapply(yrg, function(y) {
      if (inherits(y, 'try-error')) {
        message(y[1])
        return(NULL)
      }
      return(y)
    })
  yrg[!sapply(yrg, is.null)]
}

# used to put notes into try-errors about user input; things that normally might cause fatal errors
.warninput <- function(x) {
  res <- try(stop(), silent = TRUE)
  if (!is.null(x))
    res[1] <- paste0(x, collapse = "\n")
  res
}

.get_tool_params <- function(tool_name) {

  try({
    wbttoolparameters <- get('wbttoolparameters')
  }, silent = TRUE)
  
  # remove underscores and other possible prefixes
  tool_name <- gsub("_", "", wbt_internal_tool_name(tool_name))

  # return subset by tool_name
  res <- wbttoolparameters[which(toupper(wbttoolparameters$tool_name) %in% toupper(tool_name)), ]

  if (nrow(res) == 0) {
    extra <- ''
    if (trimws(tool_name) != '') {
      tn <- unique(wbttoolparameters$tool_name)
      guess <- grep(paste0(".*", tolower(tool_name), ".*"), tolower(tn), ignore.case = TRUE)
      # guess <- pmatch(tolower(tool_name), tolower(tn), duplicates.ok = TRUE)
      if (length(guess) > 0) {
        extra <- paste0(", perhaps you meant one of: ", paste0(shQuote(tn[guess]),  collapse = ", " ))
      }
    }
    warning("Parameters for tool_name='", tool_name, "' not found", extra, call. = FALSE)
  }
  res
}

.process_tool_params <- function (tool_name,
                                  userargs,
                                  result = NULL,
                                  prm = .get_tool_params(tool_name)) {

  # take output from result to augment as first input if not specified
  inputprm <- prm$argument_name[prm$is_input][1]
  if (length(inputprm) && !inputprm %in% names(userargs)) {

    #TODO: multi output? is this robust
    newinput <- character(0)

    if (!is.null(result)) {
      newinput <- result$result
      if (!inherits(newinput, 'try-error')) {
        newinput <- newinput$output
      }
    } else if ("input" %in% names(userargs)) {
      newinput <- userargs$input
    }

    if (length(newinput) > 0) {
      # re-arrange and re-name user "input" arg if necessary
      userargs <- c(list(input = newinput), userargs[names(userargs) != "input"])
      names(userargs)[1] <- inputprm
    }
  }
  userargs
}

.wbt_args <- function(tool_name, args, params = .get_tool_params(tool_name), crs = NULL) {
  # match tool_name and params options for helpful errors

  newpkg <- unique(do.call('c', lapply(args, attr, 'package')))[1]
  # construct arg string --param1=value1 --param2=value2
  newargs <- paste(paste0("--", names(args), "=", as.character(args)), collapse = " ")

  reqparams <- sapply(params$argument_name[!params$optional], function(x) any(sapply(x, function(y) grepl(y, newargs))))

  # at least one required param is missing or a bad parameter is specified
  chkprm <- !names(args) %in% params$argument_name
  if (sum(as.numeric(reqparams)) < length(params$argument_name[!params$optional]) || any(chkprm)) {
    # if (wbt_verbose()) {

    # user specified a bad parameter
    invalid <- character()
    if (any(chkprm)) {
      message("Error: invalid parameter", ifelse(sum(chkprm) > 1, "s", ""),
              " '", paste0(names(args)[chkprm], collapse = "', '"), "'\n")
      invalid <- names(args)[chkprm]
    }

    # inform of required args
    message("Required arguments:")

    reqprm <- params$argument_name[!params$optional][!reqparams]
    ismissing <- ifelse(!reqparams, " [ ] ", " [*] ")
    for (i in seq_along(reqparams)) {
      message("-",  ismissing[i], params$argument_name[!params$optional][i], " -- ", params$description[!params$optional][i])
    }

    message("")
    # inform of optional args
    optparams <- !params$argument_name[params$optional] %in% names(args)
    ismissing <- ifelse(optparams, " [ ] ", " [*] ")
    if (any(optparams)) {
      message("Optional arguments:")
      for (i in seq_along(optparams)) {
        message("-", ismissing[i], params$argument_name[params$optional][i], " -- ", params$description[params$optional][i])
      }
    }
    # }
    if (length(invalid) > 0) {
      invalid <- paste(paste0(shQuote(invalid), collapse = ", "), "invalid")
    }
    if (length(reqprm) > 0) {
      reqprm <- paste(paste0(shQuote(reqprm), collapse = ", "), "required")
    }
    errres <- .warninput(paste0("ERROR: ",
                                paste0(c(invalid, reqprm),
                                       collapse ="; ")))
    attr(errres, 'tool') <- tool_name
    attr(errres, 'args') <- newargs
    return(errres)
  }
  attr(newargs, 'package') <- newpkg
  newargs
}

# processing of output files -> R objects
.wbt_process_output <- function(args, crs = NULL, pkg = NULL) {
  if (is.null(pkg)) {
    pkg <- ""
  }
  lapply(args[names(args) %in% "output"], function(x) {
    # TODO: user defined file patterns and customizable methods
    # https://jblindsay.github.io/wbt_book/supported_formats.html

    # support for GeoTIFF
    if (!is.na(x) & (endsWith(x, ".tif") | endsWith(x, ".tiff"))) {
      wdp <- file.path(wbt_wd(), x)

      # check working directory if set
      if (file.exists(wdp)) {
        x <- wdp
      }

      # default value is original value
      y <- x

      # support for the raster v.s. terra v.s. ? package via attribute passed with crs or prior result
      israster <- attr(crs, 'package')
      if (length(israster) == 0) israster <- pkg

      if (israster %in% "raster") {
        if (requireNamespace('raster')) {
          y <- suppressWarnings(try(raster::raster(x)))
          if (!inherits(y, 'try-error')) {
            if (length(crs) == 0) {
              crs <- ""
            }
            # propagate wbt_result CRS if the result has none
            if (is.na(as.character(raster::crs(y))) && !is.na(crs)) {
              raster::crs(y) <- ifelse(!is.character(crs), "", crs)
            }
          }
          y
        }
      # for other cases, use terra
      } else if (israster %in% "terra") {
        if (requireNamespace('terra')) {
          y <- suppressWarnings(try(terra::rast(x)))

          if (!inherits(y, 'try-error')) {
            terra::crs(y) <- ifelse(!is.character(crs), "", crs)
          }
        }
      } else {
        # no transformation applied for ""
      }
      ## TODO: terra for shape output?
      # } else if (!is.na(x) & endsWith(x, ".shp")) {
      #   if (requireNamespace('terra')) {
      #     try(terra::vect(x, crs = ifelse(!is.character(crs), "", crs)))
      #   }
      ##
      ## TODO: LAS object from lidR package support?
      #
      # } else if (!is.na(x) & endsWith(x, ".las")) {
      #   if (requireNamespace('lidR')) {
      #     # TODO: support additional arguments to readLAS()?
      #     try(lidR::readLAS(x))
      # }
      ##
      return(y)
    } else {
      return(x)
    }
  })
}

.wbt <- function(tool_name,
                 args,
                 params = .get_tool_params(tool_name),
                 crs = NULL,
                 verbose_mode = FALSE,
                 command_only = FALSE) {

  # process and check user arguments
  newargs <- .wbt_args(tool_name = tool_name, args = args, params = params, crs = crs)

  if (inherits(newargs, 'try-error')) {
    return(invisible(wbt_result(tool_name = tool_name,
                         args = attr(newargs, 'args'),
                         stdout = NULL,
                         crs = crs,
                         result = newargs)))
  }

  # pass through wbt_run_tool
  console <- try(wbt_run_tool(tool_name = tool_name,
                              args = newargs,
                              verbose_mode = verbose_mode,
                              command_only = command_only
                             ),  silent = TRUE)

  if (command_only) {
    return(console[1])
  }

  if (inherits(console, 'try-error')) {
    return(invisible(wbt_result(tool_name = tool_name,
        args = newargs,
        stdout = console[1], # return the error message, and a try-error in result
        crs = crs,
        result = .warninput(c("ERROR: Tool execution failed", console[1]))
      )))
  }

  if ("output" %in% names(args)) {
    return(invisible(wbt_result(
      tool_name = tool_name,
      args = newargs,
      stdout = console,
      crs = crs,
      result =  .wbt_process_output(args, crs, pkg = attr(newargs, 'package'))
    )))
  }
}
