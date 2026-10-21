# Multiscale std dev normals signature

Calculates the surface roughness for points over a range of spatial
scales.

## Usage

``` r
wbt_multiscale_std_dev_normals_signature(
  dem,
  points,
  output,
  min_scale = 1,
  step = 1,
  num_steps = 10,
  step_nonlinearity = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- points:

  Input vector points file.

- output:

  Output HTML file.

- min_scale:

  Minimum search neighbourhood radius in grid cells.

- step:

  Step size as any positive non-zero integer.

- num_steps:

  Number of steps.

- step_nonlinearity:

  Step nonlinearity factor (1.0-2.0 is typical).

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
