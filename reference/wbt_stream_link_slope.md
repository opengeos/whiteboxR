# Stream link slope

Estimates the average slope of each link (or tributary) in a stream
network.

## Usage

``` r
wbt_stream_link_slope(
  d8_pntr,
  linkid,
  dem,
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

- d8_pntr:

  Input raster D8 pointer file.

- linkid:

  Input raster streams link ID (or tributary ID) file.

- dem:

  Input raster DEM file.

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
