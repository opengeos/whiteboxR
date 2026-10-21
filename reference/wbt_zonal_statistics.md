# Zonal statistics

Extracts descriptive statistics for a group of patches in a raster.

## Usage

``` r
wbt_zonal_statistics(
  input,
  features,
  output = NULL,
  stat = "mean",
  out_table = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input data raster file.

- features:

  Input feature definition raster file.

- output:

  Output raster file.

- stat:

  Statistic to extract, including 'mean', 'median', 'minimum',
  'maximum', 'range', 'standard deviation', and 'total'.

- out_table:

  Output HTML Table file.

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
