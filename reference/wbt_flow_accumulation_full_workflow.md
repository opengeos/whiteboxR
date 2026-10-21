# Flow accumulation full workflow

Resolves all of the depressions in a DEM, outputting a breached DEM, an
aspect-aligned non-divergent flow pointer, and a flow accumulation
raster.

## Usage

``` r
wbt_flow_accumulation_full_workflow(
  dem,
  out_dem,
  out_pntr,
  out_accum,
  out_type = "Specific Contributing Area",
  log = FALSE,
  clip = FALSE,
  esri_pntr = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- out_dem:

  Output raster DEM file.

- out_pntr:

  Output raster flow pointer file.

- out_accum:

  Output raster flow accumulation file.

- out_type:

  Output type; one of 'cells', 'sca' (default), and 'ca'.

- log:

  Optional flag to request the output be log-transformed.

- clip:

  Optional flag to request clipping the display max by 1 percent.

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
