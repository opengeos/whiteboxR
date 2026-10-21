# Construct vector tin

Creates a vector triangular irregular network (TIN) for a set of vector
points.

## Usage

``` r
wbt_construct_vector_tin(
  input,
  output,
  field = NULL,
  use_z = FALSE,
  max_triangle_edge_length = NULL,
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

  Output vector polygon file.

- field:

  Input field name in attribute table.

- use_z:

  Use the 'z' dimension of the Shapefile's geometry instead of an
  attribute field?.

- max_triangle_edge_length:

  Optional maximum triangle edge length; triangles larger than this size
  will not be gridded.

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
