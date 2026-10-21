# Lidar segmentation

Segments a LiDAR point cloud based on differences in the orientation of
fitted planar surfaces and point proximity.

## Usage

``` r
wbt_lidar_segmentation(
  input,
  output,
  radius = 2,
  num_iter = 50,
  num_samples = 10,
  threshold = 0.15,
  model_size = 15,
  max_slope = 80,
  norm_diff = 10,
  maxzdiff = 1,
  classes = FALSE,
  ground = FALSE,
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

- norm_diff:

  Maximum difference in normal vectors, in degrees.

- maxzdiff:

  Maximum difference in elevation (z units) between neighbouring points
  of the same segment.

- classes:

  Segments don't cross class boundaries.

- ground:

  Classify the largest segment as ground points?.

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
