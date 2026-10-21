# Panchromatic sharpening

Increases the spatial resolution of image data by combining
multispectral bands with panchromatic data.

## Usage

``` r
wbt_panchromatic_sharpening(
  pan,
  output,
  red = NULL,
  green = NULL,
  blue = NULL,
  composite = NULL,
  method = "brovey",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- pan:

  Input panchromatic band file.

- output:

  Output colour composite file.

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

- method:

  Options include 'brovey' (default) and 'ihs'.

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
