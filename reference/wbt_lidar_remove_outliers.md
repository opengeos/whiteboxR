# Lidar remove outliers

Removes outliers (high and low points) in a LiDAR point cloud.

## Usage

``` r
wbt_lidar_remove_outliers(
  input,
  output,
  radius = 2,
  elev_diff = 50,
  use_median = FALSE,
  classify = TRUE,
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

  Output LiDAR file.

- radius:

  Search Radius.

- elev_diff:

  Max. elevation difference.

- use_median:

  Optional flag indicating whether to use the difference from median
  elevation rather than mean.

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
