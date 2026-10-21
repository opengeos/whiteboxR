# D8 flow accumulation

Calculates a D8 flow accumulation raster from an input DEM or flow
pointer.

## Usage

``` r
wbt_d8_flow_accumulation(
  input,
  output,
  out_type = "cells",
  log = FALSE,
  clip = FALSE,
  pntr = FALSE,
  esri_pntr = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input raster DEM or D8 pointer file.

- output:

  Output raster file.

- out_type:

  Output type; one of 'cells' (default), 'catchment area', and 'specific
  contributing area'.

- log:

  Optional flag to request the output be log-transformed.

- clip:

  Optional flag to request clipping the display max by 1 percent.

- pntr:

  Is the input raster a D8 flow pointer rather than a DEM?.

- esri_pntr:

  Input D8 pointer uses the ESRI style scheme.

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
