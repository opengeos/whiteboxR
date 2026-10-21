# Run WhiteboxTools by Tool Name

You are required to specify all required arguments as either paths to
files, or R object types that can be associated with a file.

`wbt_result()`: return a combined list of results from either the
history of a `wbt_result` (if present and `history=TRUE`), or the result
of a `wbt_result`

## Usage

``` r
wbt(
  result,
  tool_name,
  ...,
  crs = NULL,
  verbose_mode = FALSE,
  command_only = FALSE
)

# S3 method for class 'wbt_result'
wbt(
  result,
  tool_name,
  ...,
  crs = NULL,
  verbose_mode = FALSE,
  command_only = FALSE
)

wbt_result(result, i = NULL, history = TRUE, attribute = "output")

# S3 method for class 'character'
wbt(
  result,
  tool_name,
  ...,
  crs = NULL,
  verbose_mode = FALSE,
  command_only = FALSE
)

# S3 method for class '`function`'
wbt(
  result,
  tool_name,
  ...,
  crs = NULL,
  verbose_mode = FALSE,
  command_only = FALSE
)

# S3 method for class 'missing'
wbt(
  result,
  tool_name,
  ...,
  crs = NULL,
  verbose_mode = FALSE,
  command_only = FALSE
)
```

## Arguments

- result:

  an object of class `wbt_result`

- tool_name:

  character. name of the tool to run. Or a tool/function name (i.e. a
  symbol) that is non-standard evaluated as a character.

- ...:

  arguments to tool

- crs:

  character Optional: a WKT Coordinate Reference System string, or other
  identifier such as EPSG code or PROJ string

- verbose_mode:

  passed to [`wbt_run_tool()`](wbt_run_tool.md)

- command_only:

  Return command that would be run with
  [`system()`](https://rdrr.io/r/base/system.html)? Default: `FALSE`

- i:

  Optional index of result list element to return as result. Default is
  whole list.

- history:

  Default: `TRUE` returns a list of all history results

- attribute:

  Default: `"output"`

## Value

a list with class `"wbt_result"` containing elements:

- `tool` - the tool name

- `args` - arguments passed to executable

- `stdout` - console output (result of
  [`wbt_run_tool()`](wbt_run_tool.md))

- `crs` - Coordinate Reference System string (WKT or PROJ)

- `result` - any 'result' parameters (`--output`) that can be converted
  to R objects after run. A list of RasterLayer or character. May be a
  `try-error` if arguments are specified incorrectly.

- `history` - history of 'result' when `wbt_result` was passed as input,
  most recent output at end

list of result in `attribute` if `"history"` is present, otherwise the
result in `attribute`. If `i` is specified, just the `i`th element of
the list.

## Details

Supports SpatRaster / RasterLayer input / output. Arguments are
transformed from their source class and passed to WhiteboxTools
executable as standard character string arguments involving file paths.

To print help for any tool, see [`wbt_tool_help()`](wbt_tool_help.md)

`tool_name` may be specified with or without quotes or `wbt_` prefix.
e.g. `"wbt_slope"`, `wbt_slope`, `slope`, and `"slope"` are identical.

## See also

[`wbt_tool_help()`](wbt_tool_help.md)
