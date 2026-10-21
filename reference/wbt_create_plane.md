# Create plane

Creates a raster image based on the equation for a simple plane.

## Usage

``` r
wbt_create_plane(
  base,
  output,
  gradient = 15,
  aspect = 90,
  constant = 0,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- base:

  Input base raster file.

- output:

  Output raster file.

- gradient:

  Slope gradient in degrees (-85.0 to 85.0).

- aspect:

  Aspect (direction) in degrees clockwise from north (0.0-360.0).

- constant:

  Constant value.

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
