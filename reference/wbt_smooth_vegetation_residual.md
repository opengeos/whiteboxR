# Smooth vegetation residual

This tool can smooth the residual roughness due to vegetation cover in
LiDAR DEMs.

## Usage

``` r
wbt_smooth_vegetation_residual(
  input,
  output,
  max_scale = 30,
  dev_threshold = 1,
  scale_threshold = 5,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input digital elevation model (DEM) raster file.

- output:

  Name of the output raster file.

- max_scale:

  Maximum search neighbourhood radius in grid cells.

- dev_threshold:

  DEVmax Threshold.

- scale_threshold:

  DEVmax scale threshold.

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
