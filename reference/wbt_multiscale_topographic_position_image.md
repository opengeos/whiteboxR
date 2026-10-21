# Multiscale topographic position image

Creates a multiscale topographic position image from three DEVmax
rasters of differing spatial scale ranges.

## Usage

``` r
wbt_multiscale_topographic_position_image(
  local,
  meso,
  broad,
  output,
  hillshade = NULL,
  lightness = 1.2,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- local:

  Input local-scale topographic position (DEVmax) raster file.

- meso:

  Input meso-scale topographic position (DEVmax) raster file.

- broad:

  Input broad-scale topographic position (DEVmax) raster file.

- output:

  Output raster file.

- hillshade:

  Input optional hillshade raster file. Note: a multi-directional
  (360-degree option) hillshade tends to work best in this application.

- lightness:

  Image lightness value (default is 1.2).

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
