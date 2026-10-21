# Max difference from mean

Calculates the maximum difference from mean elevation over a range of
spatial scales.

## Usage

``` r
wbt_max_difference_from_mean(
  dem,
  out_mag,
  out_scale,
  min_scale,
  max_scale,
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

- out_mag:

  Output raster DIFFmax magnitude file.

- out_scale:

  Output raster DIFFmax scale file.

- min_scale:

  Minimum search neighbourhood radius in grid cells.

- max_scale:

  Maximum search neighbourhood radius in grid cells.

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
