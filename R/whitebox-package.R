#' @keywords internal
#' @section Package options: 
#' 
#' - **`whitebox.exe_path`** - character. Path to executable file. The default value is the package installation directory, subdirectory `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the `whitebox.exe_path` option using `wbt_init()` `exe_path` argument
#' 
#' - **`whitebox.verbose`** - logical. Should standard output from calls to executable be `cat()` out for readability? Default is result of `interactive()`. Individual tools may have `verbose_mode` setting that produce only single-line output when `FALSE`. These argument values are left as the defaults defined in the package documentation for that function. When `whitebox.verbose=FALSE` no output is produced. Set the value of `whitebox.verbose` with `wbt_verbose()` `verbose` argument.
#'  
#' The package options can be overridden with system environment variables: `R_WHITEBOX_EXE_PATH` (character) and `R_WHITEBOX_VERBOSE`, respectively.
#' 
#' @seealso [wbt_init()], [wbt_options()], [install_whitebox()]
"_PACKAGE"

#' WhiteboxTools Tool List
#' 
#' This data set is a `data.frame` containing tools by name and associated R function name, as available in WhiteboxTools 1.5.0
#' @name wbttools
#' @docType data
#' @format A data.frame with 448 observations of 4 variables
#' - `"tool_name"` - WhiteboxTools tool name
#' - `"toolbox_name"` - WhiteboxTools toolbox name
#' - `"description"` - Brief description
#' - `"function_name"` - R function name
#' @source [WhiteboxTools 1.5.0](https://github.com/jblindsay/whitebox-tools/releases/tag/1.5.0)
#' @keywords datasets
NULL

#' WhiteboxTools Tool Parameters
#' 
#' This data set is a `data.frame` containing tools by name, their parameters, and associated metadata, as available in WhiteboxTools 1.5.0
#' 
#' @seealso [wbttools] [wbt_tool_parameters()]
#' 
#' @name wbttoolparameters
#' @docType data 
#' @format A `data.frame` with 1706 observations of 13 variables
#' - `"tool_name"` - WhiteboxTools tool name
#' - `"name"` - parameter name
#' - `"flags"` - flags used to specify parameter on command line; comma separated
#' - `"description"` - parameter description
#' - `"parameter_type"` - parameter data type; character: data type(s), space, then possible values, comma-separated (if defined)
#' - `"default_value"` - parameter default value, if any
#' - `"optional"` - parameter "optional" flag; note that some combination of optional parameters may be required for certain conditions
#' - `"pkgflags"` - selected flags 1:1 with package function argument names (notably: `-i` and `-o` omitted)
#' - `"label"` - labels for `"pkgflags"` used as argument names
#' - `"is_input"` - logical. Classification of 'input' parameters
#' - `"is_output"` - logical. Classification of 'output' parameters
#' - `"function"` - R function name
#' @source [WhiteboxTools 1.5.0](https://github.com/jblindsay/whitebox-tools/releases/tag/1.5.0)
#' @keywords datasets
NULL

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL
