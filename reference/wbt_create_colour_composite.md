# Create colour composite

Creates a colour-composite image from three bands of multispectral
imagery.

## Usage

``` r
wbt_create_colour_composite(
  red,
  green,
  blue,
  output,
  opacity = NULL,
  enhance = TRUE,
  zeros = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- red:

  Input red band image file.

- green:

  Input green band image file.

- blue:

  Input blue band image file.

- output:

  Output colour composite file.

- opacity:

  Input opacity band image file (optional).

- enhance:

  Optional flag indicating whether a balance contrast enhancement is
  performed.

- zeros:

  Optional flag to indicate if zeros are nodata values.

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
