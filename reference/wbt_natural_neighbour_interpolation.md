# Natural neighbour interpolation

Creates a raster grid based on Sibson's natural neighbour method.

## Usage

``` r
wbt_natural_neighbour_interpolation(
  input,
  output,
  field = NULL,
  use_z = FALSE,
  cell_size = NULL,
  base = NULL,
  clip = TRUE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input vector points file.

- output:

  Output raster file.

- field:

  Input field name in attribute table.

- use_z:

  Use the 'z' dimension of the Shapefile's geometry instead of an
  attribute field?.

- cell_size:

  Optionally specified cell size of output raster. Not used when base
  raster is specified.

- base:

  Optionally specified input base raster file. Not used when a cell size
  is specified.

- clip:

  Clip the data to the convex hull of the points?.

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
