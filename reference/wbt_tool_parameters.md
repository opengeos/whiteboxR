# Tool parameter descriptions for a specific tool in 'WhiteboxTools'

Retrieves the tool parameter descriptions for a specific tool.

## Usage

``` r
wbt_tool_parameters(tool_name, quiet = FALSE)
```

## Arguments

- tool_name:

  The name of the tool.

- quiet:

  Prevent tool output being printed. Default: `FALSE`

## Value

Returns the tool parameter descriptions for a specific tool.

## Details

`quiet` argument can be set to `TRUE` to allow for "quiet" internal use
within other functions.

## Examples

``` r
if (FALSE) { # \dontrun{
wbt_tool_parameters("lidar_info")
} # }
```
