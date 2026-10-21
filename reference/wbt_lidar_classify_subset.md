# Lidar classify subset

Classifies the values in one LiDAR point cloud that correspond with
points in a subset cloud.

## Usage

``` r
wbt_lidar_classify_subset(
  base,
  subset,
  output,
  subset_class,
  nonsubset_class = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- base:

  Input base LiDAR file.

- subset:

  Input subset LiDAR file.

- output:

  Output LiDAR file.

- subset_class:

  Subset point class value (must be 0-18; see LAS specifications).

- nonsubset_class:

  Non-subset point class value (must be 0-18; see LAS specifications).

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
