# Lidar tile

Tiles a LiDAR LAS file into multiple LAS files.

## Usage

``` r
wbt_lidar_tile(
  input,
  width = 1000,
  height = 1000,
  origin_x = 0,
  origin_y = 0,
  min_points = 2,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file.

- width:

  Width of tiles in the X dimension; default 1000.0.

- height:

  Height of tiles in the Y dimension.

- origin_x:

  Origin point X coordinate for tile grid.

- origin_y:

  Origin point Y coordinate for tile grid.

- min_points:

  Minimum number of points contained in a tile for it to be saved.

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
