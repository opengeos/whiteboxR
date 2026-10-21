# Attribute scattergram

Creates a scattergram for two field values of a vector's attribute
table.

## Usage

``` r
wbt_attribute_scattergram(
  input,
  fieldx,
  fieldy,
  output,
  trendline = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input raster file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- fieldx:

  Input field name in attribute table for the x-axis.

- fieldy:

  Input field name in attribute table for the y-axis.

- output:

  Output HTML file (default name will be based on input file if
  unspecified).

- trendline:

  Draw the trendline.

- wd:

  Changes the working directory. Default: `NULL` will use the value in
  WhiteboxTools settings, see [`wbt_wd()`](wbt_init.md) for details.

- verbose_mode:

  Sets verbose mode. If verbose mode is `FALSE`, tools will not print
  output messages. Default: `NULL` will use the value in WhiteboxTools
  settings, see [`wbt_verbose()`](wbt_init.md) for details.

- compress_rasters:

  Sets the flag used by 'WhiteboxTools' to determine whether to use
  compression for output rasters. Default: `NULL` will use the value in
  WhiteboxTools settings, see [`wbt_compress_rasters()`](wbt_init.md)
  for details.

- command_only:

  Return command that would be executed by
  [`system()`](https://rdrr.io/r/base/system.html) rather than running
  tool. Default: `FALSE`.

## Value

Returns the tool text outputs.
