# The toolbox for a specific tool in WhiteboxTools

Retrieve the toolbox for a specific tool.

## Usage

``` r
wbt_toolbox(tool_name = NULL)
```

## Arguments

- tool_name:

  The name of the tool.

## Value

Returns the toolbox for a specific tool.

## Details

Leaving `tool_name` as default `NULL` returns results for all tools, but
does not work on Windows.

## Examples

``` r
if (FALSE) { # \dontrun{
wbt_toolbox("breach_depressions")
} # }
```
