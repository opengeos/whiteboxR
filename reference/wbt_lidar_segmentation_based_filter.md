# Lidar segmentation based filter

Identifies ground points within LiDAR point clouds using a segmentation
based approach.

## Usage

``` r
wbt_lidar_segmentation_based_filter(
  input,
  output,
  radius = 5,
  norm_diff = 2,
  maxzdiff = 1,
  classify = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file.

- output:

  Output file.

- radius:

  Search Radius.

- norm_diff:

  Maximum difference in normal vectors, in degrees.

- maxzdiff:

  Maximum difference in elevation (z units) between neighbouring points
  of the same segment.

- classify:

  Classify points as ground (2) or off-ground (1).

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
