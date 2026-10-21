# Image segmentation

Performs a region-growing based segmentation on a set of multi-spectral
images.

## Usage

``` r
wbt_image_segmentation(
  inputs,
  output,
  threshold = 0.5,
  steps = 10,
  min_area = 4,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- inputs:

  Names of the input band images.

- output:

  Name of the output raster file.

- threshold:

  Distance threshold, in z-scores.

- steps:

  Number of steps.

- min_area:

  Minimum object area, in grid cells (1-8).

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
