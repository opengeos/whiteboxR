# Shadow image

This tool creates a raster of shadow areas based on an input DEM.

## Usage

``` r
wbt_shadow_image(
  input,
  output,
  palette = "soft",
  max_dist = "",
  date = "21/06/2021",
  time = "13:00",
  location = "43.5448/-80.2482/-4",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input digital surface model (DSM) raster file.

- output:

  Name of the output raster file.

- palette:

  DSM image palette; options are 'atlas', 'high_relief', 'arid', 'soft',
  'muted', 'light_quant', 'purple', 'viridi', 'gn_yl', 'pi_y_g',
  'bl_yl_rd', 'deep', and 'none'.

- max_dist:

  Optional maximum search distance, in xy unites. Minimum value is 5 x
  cell size.

- date:

  Date in format DD/MM/YYYY.

- time:

  Time in format HH::MM, e.g. 03:15AM or 14:30.

- location:

  Location, defined as Lat/Long/UTC-offset (e.g. 43.5448/-80.2482/-4).

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
