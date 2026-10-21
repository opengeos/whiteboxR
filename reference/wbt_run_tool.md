# Run a tool in 'WhiteboxTools' by name

Runs a tool and specifies tool arguments. If the prefix "whitebox::" or
"wbt\_" is in `tool_name` it is removed to match the definitions in
[`wbt_list_tools()`](wbt_list_tools.md)

## Usage

``` r
wbt_run_tool(tool_name, args, verbose_mode = FALSE, command_only = FALSE)
```

## Arguments

- tool_name:

  The name of the tool to run.

- args:

  Tool arguments.

- verbose_mode:

  Verbose mode. Without this flag, tool outputs will not be printed.

- command_only:

  Return command that would be run with
  [`system()`](https://rdrr.io/r/base/system.html)? Default: `FALSE`

## Value

Returns the (character) output of the tool.

## See also

[wbt_list_tools](wbt_list_tools.md)

## Examples

``` r
if (FALSE) { # \dontrun{
tool_name <- "breach_depressions"
dem <- system.file("extdata", "DEM.tif", package="whitebox")
output <- "./output.tif"
arg1 <- paste0("--dem=", dem)
arg2 <- paste0("--output=", output)
args <- paste(arg1, arg2)
wbt_run_tool(tool_name, args)
} # }
```
