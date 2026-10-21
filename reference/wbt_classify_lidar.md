# Classify lidar

Classify points within a LiDAR point cloud based on point properties.

## Usage

``` r
wbt_classify_lidar(
  input,
  output = NULL,
  radius = 1.5,
  grd_threshold = 0.1,
  oto_threshold = 2,
  planarity_threshold = 0.85,
  linearity_threshold = 0.7,
  iterations = 30,
  facade_threshold = 0.5,
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

  Name of the output LiDAR points.

- radius:

  Search distance used in neighbourhood search (metres).

- grd_threshold:

  Ground threshold (metres).

- oto_threshold:

  Off-terrain object threshold (metres).

- planarity_threshold:

  Planarity threshold (0-1).

- linearity_threshold:

  Linearity threshold (0-1).

- iterations:

  Number of iterations.

- facade_threshold:

  Facade threshold (metres).

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
