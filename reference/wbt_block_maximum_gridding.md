# Block maximum gridding

Creates a raster grid based on a set of vector points and assigns grid
values using a block maximum scheme.

## Usage

``` r
wbt_block_maximum_gridding(
  input,
  field,
  output,
  use_z = FALSE,
  cell_size = NULL,
  base = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input vector Points file.

- field:

  Input field name in attribute table.

- output:

  Output raster file.

- use_z:

  Use z-coordinate instead of field?.

- cell_size:

  Optionally specified cell size of output raster. Not used when base
  raster is specified.

- base:

  Optionally specified input base raster file. Not used when a cell size
  is specified.

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
