# Prepare File Paths for WhiteboxTools Commands

Performs path expansion with
[`path.expand()`](https://rdrr.io/r/base/path.expand.html) and shell
quotes with [`shQuote()`](https://rdrr.io/r/base/shQuote.html) the input
paths.

## Usage

``` r
wbt_file_path(x, shell_quote = TRUE, delimiter = ",", check_exists = FALSE)
```

## Arguments

- x:

  character or `terra` object. Vector of file paths or strings of file
  paths for passing as arguments to WhiteboxTools. If the object is of
  class `SpatRaster`, `SpatRasterCollection`, `SpatVector` or
  `SpatVectorProxy` the sources are extracted with
  [`terra::sources()`](https://rspatial.github.io/terra/reference/sources.html)

- shell_quote:

  logical. Shell quotes around result? Default: `TRUE`

- delimiter:

  character. Either `","` (default) or `";"` allowed by WhiteboxTools.

- check_exists:

  logical. Check if file(s) in x exist? Useful for input values.
  Default: `FALSE`

## Value

character. Length 1. A safe input string for use in WhiteboxTools
commands, with paths expanded and concatenated, if necessary, and
optionally shell quoted.

## Details

If an input vector contains `";"` or `","` this is considered, path
expansion is performed on the substrings. If the input vector has length
greater than `1`, the vector is concatenated with `","` or `";"` to
create a single output string.

## Examples

``` r

wbt_file_path("./abc.tif")
#> [1] "'./abc.tif'"

wbt_file_path("./abc.tif;./def.tif")
#> [1] "'./abc.tif,./def.tif'"

wbt_file_path("./abc.tif,./def.tif")
#> [1] "'./abc.tif,./def.tif'"

wbt_file_path(c("./abc.tif", "./def.tif"))
#> [1] "'./abc.tif,./def.tif'"

wbt_file_path("~/abc.tif", shell_quote = FALSE)
#> [1] "/home/runner/abc.tif"

wbt_file_path(c("~/abc.tif", "~/def.tif"))
#> [1] "'/home/runner/abc.tif,/home/runner/def.tif'"
```
