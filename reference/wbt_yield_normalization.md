# Yield normalization

This tool can be used to normalize the yield points for a field.

## Usage

``` r
wbt_yield_normalization(
  input,
  yield_field,
  output,
  standardize = FALSE,
  radius = NULL,
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

- output:

  Name of the output points shapefile.

- standardize:

  Should the yield values be standardized (converted to z-scores) rather
  than normalized?.

- radius:

  Optional search radius, in metres. Only specify this value if you want
  to calculate locally normalized yield.

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
