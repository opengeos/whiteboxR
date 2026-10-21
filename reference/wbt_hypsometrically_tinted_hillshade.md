# Hypsometrically tinted hillshade

Creates an colour shaded relief image from an input DEM.

## Usage

``` r
wbt_hypsometrically_tinted_hillshade(
  dem,
  output,
  altitude = 45,
  hs_weight = 0.5,
  brightness = 0.5,
  atmospheric = 0,
  palette = "atlas",
  reverse = FALSE,
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

- hs_weight:

  Weight given to hillshade relative to relief (0.0-1.0).

- brightness:

  Brightness factor (0.0-1.0).

- atmospheric:

  Atmospheric effects weight (0.0-1.0).

- palette:

  Options include 'atlas', 'high_relief', 'arid', 'soft', 'muted',
  'purple', 'viridis', 'gn_yl', 'pi_y_g', 'bl_yl_rd', and 'deep'.

- reverse:

  Optional flag indicating whether to use reverse the palette.

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
