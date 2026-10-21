# Piecewise contrast stretch

Performs a piecewise contrast stretch on an input image.

## Usage

``` r
wbt_piecewise_contrast_stretch(
  input,
  output,
  FUN = "",
  greytones = 1024,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input raster image file.

- output:

  Name of the output raster image file.

- FUN:

  Piecewise break-points e.g. '(50, 0.1); (150, 0.8); (255; 1.0).

- greytones:

  Number of greytones in the output image.

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
