# Attribute correlation neighbourhood analysis

Performs a correlation on two input vector attributes within a
neighbourhood search windows.

## Usage

``` r
wbt_attribute_correlation_neighbourhood_analysis(
  input,
  field1,
  field2,
  radius = NULL,
  min_points = NULL,
  stat = "pearson",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input vector file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- field1:

  First input field name (dependent variable) in attribute table.

- field2:

  Second input field name (independent variable) in attribute table.

- radius:

  Search Radius (in map units).

- min_points:

  Minimum number of points.

- stat:

  Correlation type; one of 'pearson' (default) and 'spearman'.

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
