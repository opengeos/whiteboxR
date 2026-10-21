# New raster from base

Creates a new raster using a base image.

## Usage

``` r
wbt_new_raster_from_base(
  base,
  output,
  value = "nodata",
  data_type = "float",
  cell_size = NULL,
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

- value:

  Constant value to fill raster with; either 'nodata' or numeric value.

- data_type:

  Output raster data type; options include 'double' (64-bit), 'float'
  (32-bit), and 'integer' (signed 16-bit) (default is 'float').

- cell_size:

  Optionally specified cell size of output raster. Not used when base
  raster is specified.

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
