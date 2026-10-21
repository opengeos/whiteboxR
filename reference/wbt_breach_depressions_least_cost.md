# Breach depressions least cost

Breaches the depressions in a DEM using a least-cost pathway method.

## Usage

``` r
wbt_breach_depressions_least_cost(
  dem,
  output,
  dist,
  max_cost = NULL,
  min_dist = TRUE,
  flat_increment = NULL,
  fill = TRUE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- output:

  Output raster file.

- dist:

  Maximum search distance for breach paths in cells.

- max_cost:

  Optional maximum breach cost (default is Inf).

- min_dist:

  Optional flag indicating whether to minimize breach distances.

- flat_increment:

  Optional elevation increment applied to flat areas.

- fill:

  Optional flag indicating whether to fill any remaining unbreached
  depressions.

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
