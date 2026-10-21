# Remove raster polygon holes

Removes polygon holes, or 'donut-holes', from raster polygons.

## Usage

``` r
wbt_remove_raster_polygon_holes(
  input,
  output,
  threshold = 3,
  use_diagonals = TRUE,
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

  Name of the output raster file.

- threshold:

  Maximum size of removed holes, in grid cells. Blank for no threshold,
  i.e. remove all holes.

- use_diagonals:

  Use diagonal neighbours during clumping operation.

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
