# Reconcile multiple headers

This tool adjusts the crop yield values for data sets collected with
multiple headers or combines.

## Usage

``` r
wbt_reconcile_multiple_headers(
  input,
  region_field,
  yield_field,
  output,
  radius = NULL,
  min_yield = NULL,
  max_yield = NULL,
  mean_tonnage = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input points shapefile.

- region_field:

  Name of the attribute containing region data.

- yield_field:

  Name of the attribute containing yield data.

- output:

  Name of the output points shapefile.

- radius:

  Optional search radius, in metres. Only specify this value if you want
  to calculate locally normalized yield.

- min_yield:

  Minimum yield value in output.

- max_yield:

  Maximum yield value in output.

- mean_tonnage:

  Use this optional parameter to force the output to have a certain
  overall average tonnage.

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
