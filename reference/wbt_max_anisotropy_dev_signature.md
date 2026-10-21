# Max anisotropy dev signature

Calculates the anisotropy in deviation from mean for points over a range
of spatial scales.

## Usage

``` r
wbt_max_anisotropy_dev_signature(
  dem,
  points,
  output,
  max_scale,
  min_scale = 1,
  step = 1,
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

- max_scale:

  Maximum search neighbourhood radius in grid cells.

- min_scale:

  Minimum search neighbourhood radius in grid cells.

- step:

  Step size as any positive non-zero integer.

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
