# Multiscale curvatures

This tool calculates several multiscale curvatures and curvature-based
indices from an input DEM.

## Usage

``` r
wbt_multiscale_curvatures(
  dem,
  out_mag,
  curv_type = "ProfileCurv",
  out_scale = NULL,
  min_scale = 0,
  step = 1,
  num_steps = 1,
  step_nonlinearity = 1,
  log = TRUE,
  standardize = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input raster DEM file.

- out_mag:

  Output raster magnitude file.

- curv_type:

  Curvature type.

- out_scale:

  Output raster scale file.

- min_scale:

  Minimum search neighbourhood radius in grid cells.

- step:

  Step size as any positive non-zero integer.

- num_steps:

  Number of steps.

- step_nonlinearity:

  Step nonlinearity factor (1.0-2.0 is typical).

- log:

  Display output values using a log-scale.

- standardize:

  Should each scale be standardized to z-scores?.

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
