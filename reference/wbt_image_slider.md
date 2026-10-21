# Image slider

This tool creates an image slider from two input images.

## Usage

``` r
wbt_image_slider(
  input1,
  input2,
  output,
  palette1 = "grey",
  reverse1 = FALSE,
  label1 = "",
  palette2 = "grey",
  reverse2 = FALSE,
  label2 = "",
  height = 600,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Name of the left input image file.

- input2:

  Name of the right input image file.

- output:

  Name of the output HTML file (\*.html).

- palette1:

  Left image palette; options are 'grey', 'atlas', 'high_relief',
  'arid', 'soft', 'muted', 'purple', 'viridi', 'gn_yl', 'pi_y_g',
  'bl_yl_rd', 'deep', and 'rgb'.

- reverse1:

  Reverse left image palette?.

- label1:

  Left image label (leave blank for none).

- palette2:

  Right image palette; options are 'grey', 'atlas', 'high_relief',
  'arid', 'soft', 'muted', 'purple', 'viridi', 'gn_yl', 'pi_y_g',
  'bl_yl_rd', 'deep', and 'rgb'.

- reverse2:

  Reverse right image palette?.

- label2:

  Right image label (leave blank for none).

- height:

  Image height, in pixels.

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
