# Multidirectional hillshade

Calculates a multi-direction hillshade raster from an input DEM.

## Usage

``` r
wbt_multidirectional_hillshade(
  dem,
  output,
  altitude = 45,
  zfactor = NULL,
  full_mode = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- output:

  Output raster file.

- altitude:

  Illumination source altitude in degrees.

- zfactor:

  Optional multiplier for when the vertical and horizontal units are not
  the same.

- full_mode:

  Optional flag indicating whether to use full 360-degrees of
  illumination sources.

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
