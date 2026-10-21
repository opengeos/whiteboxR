# Lidar ground point filter

Identifies ground points within LiDAR dataset using a slope-based
method.

## Usage

``` r
wbt_lidar_ground_point_filter(
  input,
  output,
  radius = 2,
  min_neighbours = 0,
  slope_threshold = 45,
  height_threshold = 1,
  classify = TRUE,
  slope_norm = TRUE,
  height_above_ground = FALSE,
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

- min_neighbours:

  The minimum number of neighbouring points within search areas. If
  fewer points than this threshold are identified during the
  fixed-radius search, a subsequent kNN search is performed to identify
  the k number of neighbours.

- slope_threshold:

  Maximum inter-point slope to be considered an off-terrain point.

- height_threshold:

  Inter-point height difference to be considered an off-terrain point.

- classify:

  Classify points as ground (2) or off-ground (1).

- slope_norm:

  Perform initial ground slope normalization?.

- height_above_ground:

  Transform output to height above average ground elevation?.

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
