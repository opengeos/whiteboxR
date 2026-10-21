# Vector lines to raster

Converts a vector containing polylines into a raster.

## Usage

``` r
wbt_vector_lines_to_raster(
  input,
  output,
  field = "FID",
  nodata = TRUE,
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

  Input vector lines file.

- output:

  Output raster file.

- field:

  Input field name in attribute table.

- nodata:

  Background value to set to NoData. Without this flag, it will be set
  to 0.0.

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
