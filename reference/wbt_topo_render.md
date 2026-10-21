# Topo render

This tool creates a pseudo-3D rendering from an input DEM, for the
purpose of effective topographic visualization.

## Usage

``` r
wbt_topo_render(
  dem,
  output,
  palette = "soft",
  rev_palette = FALSE,
  az = 315,
  alt = 30,
  background_hgt_offset = 10,
  polygon = NULL,
  background_clr = "[255, 255, 255]",
  attenuation = 0.6,
  ambient_light = 0.2,
  z_factor = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input digital elevation model (DEM) raster file.

- output:

  Name of the output raster file.

- palette:

  Palette name; options are 'atlas', 'high_relief', 'arid', 'soft',
  'earthtones', 'muted', 'light_quant', 'purple', 'viridi', 'gn_yl',
  'pi_y_g', 'bl_yl_rd', 'deep', 'imhof', and 'white'.

- rev_palette:

  Reverse the palette?.

- az:

  Light source azimuth direction (degrees, 0-360).

- alt:

  Light source altitude (degrees, 0-90).

- background_hgt_offset:

  Offset height of background, in z-units.

- polygon:

  Clipping polygon vector file (optional).

- background_clr:

  Background red-green-blue (RGB) or red-green-blue-alpha (RGBA) colour,
  e.g. '`[255, 255, 245]`', '`[255, 255, 245, 200]`'.

- attenuation:

  Attenuation parameter. Range is 0-4. Zero means no attenuation.

- ambient_light:

  Ambient light parameter. Range is 0.0-0.7. Zero means no ambient
  light.

- z_factor:

  Elevation multiplier, or a vertical exageration.

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
