# Weighted overlay

Performs a weighted sum on multiple input rasters after converting each
image to a common scale. The tool performs a multi-criteria evaluation
(MCE).

## Usage

``` r
wbt_weighted_overlay(
  factors,
  weights,
  output,
  cost = NULL,
  constraints = NULL,
  scale_max = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- factors:

  Input factor raster files.

- weights:

  Weight values, contained in quotes and separated by commas or
  semicolons. Must have the same number as factors.

- output:

  Output raster file.

- cost:

  Boolean array indicating which factors are cost factors, contained in
  quotes and separated by commas or semicolons. Must have the same
  number as factors.

- constraints:

  Input constraints raster files.

- scale_max:

  Suitability scale maximum value (common values are 1.0, 100.0, and
  255.0).

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
