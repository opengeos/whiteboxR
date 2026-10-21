# User ined weights filter

Performs a user-defined weights filter on an image.

## Usage

``` r
wbt_user_defined_weights_filter(
  input,
  weights,
  output,
  center = "center",
  normalize = FALSE,
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

- weights:

  Input weights file.

- output:

  Output raster file.

- center:

  Kernel center cell; options include 'center', 'upper-left',
  'upper-right', 'lower-left', 'lower-right'.

- normalize:

  Normalize kernel weights? This can reduce edge effects and lessen the
  impact of data gaps (nodata) but is not suited when the kernel weights
  sum to zero.

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
