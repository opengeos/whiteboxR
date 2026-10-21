# Lidar ransac planes

Performs a RANSAC analysis to identify points within a LiDAR point cloud
that belong to linear planes.

## Usage

``` r
wbt_lidar_ransac_planes(
  input,
  output,
  radius = 2,
  num_iter = 50,
  num_samples = 5,
  threshold = 0.35,
  model_size = 8,
  max_slope = 80,
  classify = FALSE,
  last_returns = FALSE,
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

- num_iter:

  Number of iterations.

- num_samples:

  Number of sample points on which to build the model.

- threshold:

  Threshold used to determine inlier points.

- model_size:

  Acceptable model size.

- max_slope:

  Maximum planar slope.

- classify:

  Classify points as ground (2) or off-ground (1).

- last_returns:

  Only include last- and only-return points.

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
