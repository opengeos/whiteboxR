# Mosaic with feathering

Mosaics two images together using a feathering technique in overlapping
areas to reduce edge-effects.

## Usage

``` r
wbt_mosaic_with_feathering(
  input1,
  input2,
  output,
  method = "cc",
  weight = 4,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input raster file to modify.

- input2:

  Input reference raster file.

- output:

  Output raster file.

- method:

  Resampling method; options include 'nn' (nearest neighbour),
  'bilinear', and 'cc' (cubic convolution).

- weight:

  .

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
