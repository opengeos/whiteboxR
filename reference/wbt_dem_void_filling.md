# Dem void filling

This tool can be used to fill the void areas of a DEM using another fill
DEM data set.

## Usage

``` r
wbt_dem_void_filling(
  dem,
  fill,
  output,
  mean_plane_dist = 20,
  edge_treatment = "use DEM",
  weight_value = 2,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input raster DEM file, containing the void areas.

- fill:

  Name of the input fill DEM file, containing the values used to fill
  the void areas in the other DEM.

- output:

  Name of the output void-filled DEM file.

- mean_plane_dist:

  Distance to void edge at which the mean-plane value is used as an
  offset, measured in grid cells.

- edge_treatment:

  How should void-edge cells be treated? Options include 'use DEM'
  (default), 'use Fill', 'average'.

- weight_value:

  Weight value used for IDW interpolation (default is 2.0).

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
