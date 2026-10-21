# Source code for a specific tool in 'WhiteboxTools'

Opens a web browser to view the source code for a specific tool on the
projects source code repository.

## Usage

``` r
wbt_view_code(tool_name, viewer = FALSE)
```

## Arguments

- tool_name:

  Name of the tool.

- viewer:

  Show source code in browser? default: `TRUE`

## Value

Returns a GitHub URL to view the source code of the tool.

## Examples

``` r
if (FALSE) { # \dontrun{
wbt_view_code("breach_depressions")
} # }
```
