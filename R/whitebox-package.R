#' @aliases whitebox-package whitebox whitebox.env
#' @export whitebox.env
#' @keywords internal
#' @section Package options:
#'
#' - **`whitebox.exe_path`** - character. Path to executable file. The default value is the package installation directory, subdirectory `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the `whitebox.exe_path` option using `wbt_init()` `exe_path` argument
#'
#' - **`whitebox.wd`** - character. Path to WhiteboxTools working directory. Used as `--wd` argument for tools that support it when `wd` is not specified elsewhere. Note that once you have set a working directory, the directory needs to be reset to "replace" the old value; just dropping the flag will not change the working directory back to your original R working directory. To "unset" the option in the R package you can use `wbt_wd("")` which is equivalent to `wbt_wd(getwd())`. The WhiteboxTools settings and the package settings will be updated to reflect the directory change after running the next tool and the `--wd` flag will be dropped from system calls.
#'
#' - **`whitebox.verbose`** - logical. Should standard output from calls to executable be `cat()` out for readability? Default is result of `interactive()`. Individual tools may have `verbose_mode` setting that produce only single-line output when `FALSE`. These argument values are left as the defaults defined in the package documentation for that function. When `whitebox.verbose=FALSE` no output is produced. Set the value of `whitebox.verbose` with `wbt_verbose()` `verbose` argument.
#'
#' - **`whitebox.compress_rasters`** - logical. Should raster output from WhiteboxTools be compressed? Default: `FALSE`. Set the value of `whitebox.compress_rasters` with `wbt_compress_rasters()` `compress_rasters` argument.
#'
#' - **`whitebox.max_procs`** - integer. Maximum number of processes for tools that run in parallel or partially parallelize. Default: `-1` uses all of the available cores.
#'
#' The package options can be overridden with system environment variables: `R_WHITEBOX_EXE_PATH`, `R_WHITEBOX_WD`, `R_WHITEBOX_VERBOSE`, `R_WHITEBOX_COMPRESS_RASTERS` and `R_WHITEBOX_MAX_PROCS`.
#'
#' @seealso [wbt_init()], [wbt_options()], [install_whitebox()]
"_PACKAGE"

# whitebox package environment
whitebox.env <- new.env()

#' WhiteboxTools Tool List
#'
#' This data set is a `data.frame` containing tools by name and associated R function name
#' @name wbttools
#' @docType data
#' @format A data.frame with 535 observations of 8 variables
#' - `"tool_name"` - WhiteboxTools tool name
#' - `"function_name"` - R function name
#' - `"toolbox_name"` - WhiteboxTools toolbox name
#' - `"label"` - WhiteboxTools tool label
#' - `"description"` - Brief description
#' - `"github"` - Link to related code on GitHub
#' - `"book"` - Link to WhiteboxTools Manual
#' - `"is_extension"` - Tool is part of General Toolset Extension (GTE), as opposed to the "open core"
#' @source [WhiteboxTools](https://github.com/jblindsay/whitebox-tools/releases/)
#' @seealso [wbttoolparameters] [wbt_list_tools()]
#' @keywords datasets
"wbttools"

#' WhiteboxTools Tool Parameters
#'
#' This data set is a `data.frame` containing tool parameters and associated metadata
#'
#' @seealso [wbttools] [wbt_tool_parameters()]
#'
#' @name wbttoolparameters
#' @docType data
#' @format A `data.frame` with 2169 observations of 13 variables
#' - `"function_name"` - R function name
#' - `"tool_name"` - WhiteboxTools tool name
#' - `"name"` - parameter name
#' - `"flags"` - flags used to specify parameter on command line; comma separated
#' - `"description"` - parameter description
#' - `"parameter_class"` - parameter type
#' - `"parameter_detail"` - parameter details; character: data type followed by colon and more specifics, For OptionList possible values, comma-separated (if defined)
#' - `"default_value"` - parameter default value, if any
#' - `"optional"` - parameter "optional" flag; note that some combination of optional parameters may be required for certain conditions
#' - `"label"` - labels for selected subset of `"flags"` **used as R function argument names** for `wbt_` functions
#' - `"is_input"` - logical. Classification of 'input' parameters
#' - `"is_output"` - logical. Classification of 'output' parameters
#' @source [WhiteboxTools](https://github.com/jblindsay/whitebox-tools/releases/)
#' @keywords datasets
"wbttoolparameters"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL
