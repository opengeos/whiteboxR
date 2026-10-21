# Rgb to ihs

Converts red, green, and blue (RGB) images into intensity, hue, and
saturation (IHS) images.

## Usage

``` r
wbt_rgb_to_ihs(
  intensity,
  hue,
  saturation,
  red = NULL,
  green = NULL,
  blue = NULL,
  composite = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- intensity:

  Output intensity raster file.

- hue:

  Output hue raster file.

- saturation:

  Output saturation raster file.

- red:

  Input red band image file. Optionally specified if colour-composite
  not specified.

- green:

  Input green band image file. Optionally specified if colour-composite
  not specified.

- blue:

  Input blue band image file. Optionally specified if colour-composite
  not specified.

- composite:

  Input colour-composite image file. Only used if individual bands are
  not specified.

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
