# Lidar thin

Thins a LiDAR point cloud, reducing point density.

## Usage

``` r
wbt_lidar_thin(
  input,
  output,
  resolution = 2,
  method = "lowest",
  save_filtered = FALSE,
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

- resolution:

  The size of the square area used to evaluate nearby points in the
  LiDAR data.

- method:

  Point selection method; options are 'first', 'last', 'lowest'
  (default), 'highest', 'nearest'.

- save_filtered:

  Save filtered points to separate file?.

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
