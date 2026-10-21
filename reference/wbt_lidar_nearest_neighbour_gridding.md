# Lidar nearest neighbour gridding

Grids LiDAR files using nearest-neighbour scheme. When the input/output
parameters are not specified, the tool grids all LAS files contained
within the working directory.

## Usage

``` r
wbt_lidar_nearest_neighbour_gridding(
  input,
  output = NULL,
  parameter = "elevation",
  returns = "all",
  resolution = 1,
  radius = 2.5,
  exclude_cls = NULL,
  minz = NULL,
  maxz = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file (including extension).

- output:

  Output raster file (including extension).

- parameter:

  Interpolation parameter; options are 'elevation' (default),
  'intensity', 'class', 'return_number', 'number_of_returns', 'scan
  angle', 'rgb', 'user data', 'time'.

- returns:

  Point return types to include; options are 'all' (default), 'last',
  'first'.

- resolution:

  Output raster's grid resolution.

- radius:

  Search Radius.

- exclude_cls:

  Optional exclude classes from interpolation; Valid class values range
  from 0 to 18, based on LAS specifications. Example,
  –exclude_cls='3,4,5,6,7,18'.

- minz:

  Optional minimum elevation for inclusion in interpolation.

- maxz:

  Optional maximum elevation for inclusion in interpolation.

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
