# Help description for a specific tool in 'WhiteboxTools'

Retrieves the help description for a specific tool.

## Usage

``` r
wbt_tool_help(tool_name = NULL)
```

## Arguments

- tool_name:

  The name of the tool.

## Value

Returns the help description for a specific tool.

## Details

Leaving `tool_name` as default `NULL` returns results for all tools, but
does not work on Windows.

## Examples

``` r
if (FALSE) { # \dontrun{
wbt_tool_help("lidar_info")
} # }
```
