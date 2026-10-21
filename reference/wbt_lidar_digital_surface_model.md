# Lidar digital surface model

Creates a top-surface digital surface model (DSM) from a LiDAR point
cloud.

## Usage

``` r
wbt_lidar_digital_surface_model(
  input,
  output = NULL,
  resolution = 1,
  radius = 0.5,
  minz = NULL,
  maxz = NULL,
  max_triangle_edge_length = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file (including extension).

- output:

  Output raster file (including extension).

- resolution:

  Output raster's grid resolution.

- radius:

  Search Radius.

- minz:

  Optional minimum elevation for inclusion in interpolation.

- maxz:

  Optional maximum elevation for inclusion in interpolation.

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
