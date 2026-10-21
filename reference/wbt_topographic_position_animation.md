# Topographic position animation

This tool creates an animated GIF of multi-scale local topographic
position (elevation deviation).

## Usage

``` r
wbt_topographic_position_animation(
  input,
  output,
  palette = "bl_yl_rd",
  min_scale = 1,
  num_steps = 100,
  step_nonlinearity = 1.5,
  height = 600,
  delay = 250,
  label = "",
  dev_max = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input digital elevation model (DEM) raster file.

- output:

  Name of the output HTML file (\*.html).

- palette:

  Image palette; options are 'bl_yl_rd', 'bl_w_rd', 'purple', 'gn_yl',
  'pi_y_g', and 'viridis'.

- min_scale:

  Minimum search neighbourhood radius in grid cells.

- num_steps:

  Number of steps.

- step_nonlinearity:

  Step nonlinearity factor (1.0-2.0 is typical).

- height:

  Image height, in pixels.

- delay:

  GIF time delay in milliseconds.

- label:

  Label text (leave blank for none).

- dev_max:

  Do you want to use DEVmax instead of DEV for measuring local
  topographic position?.

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
