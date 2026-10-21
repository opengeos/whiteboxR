# Lidar kappa index

Performs a kappa index of agreement (KIA) analysis on the
classifications of two LAS files.

## Usage

``` r
wbt_lidar_kappa_index(
  input1,
  input2,
  output,
  class_accuracy,
  resolution = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input LiDAR classification file.

- input2:

  Input LiDAR reference file.

- output:

  Output HTML file.

- class_accuracy:

  Output classification accuracy raster file.

- resolution:

  Output raster's grid resolution.

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
