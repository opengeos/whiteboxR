# Rho8 flow accumulation

Calculates Fairfield and Leymarie (1991) flow accumulation.

## Usage

``` r
wbt_rho8_flow_accumulation(
  input,
  output,
  out_type = "specific contributing area",
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

  Input DEM or Rho8 pointer file; if a DEM is used, it must be
  depressionless.

- output:

  Name of the output raster file.

- out_type:

  Output type; one of 'cells', 'specific contributing area' (default),
  and 'catchment area'.

- log:

  Log-transform the output values?.

- clip:

  Optional flag to request clipping the display max by 1 percent.

- pntr:

  Is the input raster a Rho8 flow pointer rather than a DEM?.

- esri_pntr:

  Does the input Rho8 pointer use the ESRI style scheme?.

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
