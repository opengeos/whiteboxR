# Hydrologic connectivity

This tool evaluates hydrologic connectivity within a DEM.

## Usage

``` r
wbt_hydrologic_connectivity(
  dem,
  output1,
  output2,
  exponent = 1,
  threshold = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input DEM raster file; must be depressionless.

- output1:

  Name of the output downslope unsaturated length (DUL) file.

- output2:

  Name of the output upslope disconnected saturated area (UDSA) file.

- exponent:

  Optional exponent parameter; default is 1.0.

- threshold:

  Optional convergence threshold parameter, in grid cells; default is
  infinity.

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
