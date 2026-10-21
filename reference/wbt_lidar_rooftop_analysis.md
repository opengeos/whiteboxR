# Lidar rooftop analysis

Identifies roof segments in a LiDAR point cloud.

## Usage

``` r
wbt_lidar_rooftop_analysis(
  buildings,
  output,
  input = NULL,
  radius = 2,
  num_iter = 50,
  num_samples = 10,
  threshold = 0.15,
  model_size = 15,
  max_slope = 65,
  norm_diff = 10,
  azimuth = 180,
  altitude = 30,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- buildings:

  Input vector build footprint polygons file.

- output:

  Output vector polygon file.

- input:

  Input LiDAR file.

- radius:

  Search Radius.

- num_iter:

  Number of iterations.

- num_samples:

  Number of sample points on which to build the model.

- threshold:

  Threshold used to determine inlier points (in elevation units).

- model_size:

  Acceptable model size, in points.

- max_slope:

  Maximum planar slope, in degrees.

- norm_diff:

  Maximum difference in normal vectors, in degrees.

- azimuth:

  Illumination source azimuth, in degrees.

- altitude:

  Illumination source altitude in degrees.

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
