# Lidar contour

This tool creates a vector contour coverage from an input LiDAR point
file.

## Usage

``` r
wbt_lidar_contour(
  input,
  output = NULL,
  interval = 10,
  base = 0,
  smooth = 5,
  parameter = "elevation",
  returns = "all",
  exclude_cls = NULL,
  minz = NULL,
  maxz = NULL,
  max_triangle_edge_length = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input LiDAR points.

- output:

  Name of the output vector lines file.

- interval:

  Contour interval.

- base:

  Base contour.

- smooth:

  Smoothing filter size (in num. points), e.g. 3, 5, 7, 9, 11.

- parameter:

  Interpolation parameter; options are 'elevation' (default),
  'intensity', 'user_data'.

- returns:

  Point return types to include; options are 'all' (default), 'last',
  'first'.

- exclude_cls:

  Optional exclude classes from interpolation; Valid class values range
  from 0 to 18, based on LAS specifications. Example,
  –exclude_cls='3,4,5,6,7,18'.

- minz:

  Optional minimum elevation for inclusion in interpolation.

- maxz:

  Optional maximum elevation for inclusion in interpolation.

- max_triangle_edge_length:

  Optional maximum triangle edge length; triangles larger than this size
  will not be gridded.

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
