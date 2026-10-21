# Watershed

Identifies the watershed, or drainage basin, draining to a set of target
cells.

## Usage

``` r
wbt_watershed(
  d8_pntr,
  pour_pts,
  output,
  esri_pntr = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- d8_pntr:

  Input D8 pointer raster file.

- pour_pts:

  Input pour points (outlet) file.

- output:

  Output raster file.

- esri_pntr:

  D8 pointer uses the ESRI style scheme.

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
