# Contours from raster

Derives a vector contour coverage from a raster surface.

## Usage

``` r
wbt_contours_from_raster(
  input,
  output,
  interval = 10,
  base = 0,
  smooth = 9,
  tolerance = 10,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input surface raster file.

- output:

  Output vector contour file.

- interval:

  Contour interval.

- base:

  Base contour height.

- smooth:

  Smoothing filter size (in num. points), e.g. 3, 5, 7, 9, 11.

- tolerance:

  Tolerance factor, in degrees (0-45); determines generalization level.

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
