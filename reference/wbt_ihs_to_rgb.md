# Ihs to rgb

Converts intensity, hue, and saturation (IHS) images into red, green,
and blue (RGB) images.

## Usage

``` r
wbt_ihs_to_rgb(
  intensity,
  hue,
  saturation,
  red = NULL,
  green = NULL,
  blue = NULL,
  output = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- intensity:

  Input intensity file.

- hue:

  Input hue file.

- saturation:

  Input saturation file.

- red:

  Output red band file. Optionally specified if colour-composite not
  specified.

- green:

  Output green band file. Optionally specified if colour-composite not
  specified.

- blue:

  Output blue band file. Optionally specified if colour-composite not
  specified.

- output:

  Output colour-composite file. Only used if individual bands are not
  specified.

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
