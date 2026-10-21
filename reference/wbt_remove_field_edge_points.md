# Remove field edge points

This tool can be used to remove, or flag, most of the points along the
edges from a crop yield data set.

## Usage

``` r
wbt_remove_field_edge_points(
  input,
  output,
  dist = NULL,
  max_change_in_heading = 25,
  flag_edges = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input points shapefile.

- output:

  Name of the output points shapefile.

- dist:

  Average distance between passes, in meters.

- max_change_in_heading:

  Max change in heading.

- flag_edges:

  Don't remove edge points, just flag them in the attribute table?.

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
