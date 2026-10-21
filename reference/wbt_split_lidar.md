# Split lidar

Splits LiDAR points up into a series of new files based on their
properties.

## Usage

``` r
wbt_split_lidar(
  input,
  criterion = "num_pts",
  interval = "",
  min_pts = 5,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input LiDAR points.

- criterion:

  Criterion on which to base the split of the input file. Options
  include 'num_pts, 'x', 'y', 'z', intensity, 'class', 'user_data',
  'point_source_id', 'scan_angle', 'time'.

- interval:

  Interval.

- min_pts:

  Minimum number of points in an output file.

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
