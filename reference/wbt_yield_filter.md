# Yield filter

Filters crop yield values of point data derived from combine harvester
yield monitors.

## Usage

``` r
wbt_yield_filter(
  input,
  yield_field,
  pass_field,
  output,
  width = 6.096,
  z_score_threshold = 2.5,
  min_yield = 0,
  max_yield = 99999.9,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input points shapefile.

- yield_field:

  Name of the attribute containing yield data.

- pass_field:

  Name of the attribute containing pass line ID.

- output:

  Name of the output points shapefile.

- width:

  Pass swath width (m).

- z_score_threshold:

  Z-score threshold value (default=2.5).

- min_yield:

  Minimum yield value in output.

- max_yield:

  Maximum yield value in output.

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
