# Lidar point stats

Creates several rasters summarizing the distribution of LAS point data.
When the input/output parameters are not specified, the tool works on
all LAS files contained within the working directory.

## Usage

``` r
wbt_lidar_point_stats(
  input,
  resolution = 1,
  num_points = TRUE,
  num_pulses = FALSE,
  avg_points_per_pulse = TRUE,
  z_range = FALSE,
  intensity_range = FALSE,
  predom_class = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file.

- resolution:

  Output raster's grid resolution.

- num_points:

  Flag indicating whether or not to output the number of points
  (returns) raster.

- num_pulses:

  Flag indicating whether or not to output the number of pulses raster.

- avg_points_per_pulse:

  Flag indicating whether or not to output the average number of points
  (returns) per pulse raster.

- z_range:

  Flag indicating whether or not to output the elevation range raster.

- intensity_range:

  Flag indicating whether or not to output the intensity range raster.

- predom_class:

  Flag indicating whether or not to output the predominant
  classification raster.

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
