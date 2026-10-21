# Trace downslope flowpaths

Traces downslope flowpaths from one or more target sites (i.e. seed
points).

## Usage

``` r
wbt_trace_downslope_flowpaths(
  seed_pts,
  d8_pntr,
  output,
  esri_pntr = FALSE,
  zero_background = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- seed_pts:

  Input vector seed points file.

- d8_pntr:

  Input D8 pointer raster file.

- output:

  Output raster file.

- esri_pntr:

  D8 pointer uses the ESRI style scheme.

- zero_background:

  Flag indicating whether a background value of zero should be used.

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
