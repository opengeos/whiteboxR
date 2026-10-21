# Canny edge detection

This tool performs a Canny edge-detection filter on an input image.

## Usage

``` r
wbt_canny_edge_detection(
  input,
  output,
  sigma = 0.5,
  low = 0.05,
  high = 0.15,
  add_back = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input raster image file.

- output:

  Name of the output raster image file.

- sigma:

  Sigma value used in Gaussian filtering, default = 0.5.

- low:

  Low threshold, default = 0.05.

- high:

  High threshold, default = 0.15.

- add_back:

  Add the edge cells back to the input image.

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
