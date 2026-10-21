# Embankment mapping

Maps and/or removes road embankments from an input fine-resolution DEM.

## Usage

``` r
wbt_embankment_mapping(
  dem,
  road_vec,
  output,
  search_dist = 2.5,
  min_road_width = 6,
  typical_width = 30,
  max_height = 2,
  max_width = 60,
  max_increment = 0.05,
  spillout_slope = 4,
  remove_embankments = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- road_vec:

  Input vector polygons file.

- output:

  Output raster file.

- search_dist:

  Search distance used to reposition transportation vectors onto road
  embankments (in map units).

- min_road_width:

  Minimum road width; this is the width of the paved road surface (in
  map units).

- typical_width:

  Typical embankment width; this is the maximum width of an embankment
  with roadside ditches (in map units).

- max_height:

  Typical embankment maximum height; this is the height a typical
  embankment with roadside ditches (in map units).

- max_width:

  Maximum embankment width, typically where embankments traverse
  steep-sided valleys (in map units).

- max_increment:

  Maximum upwards increment between neighbouring cells on an embankment
  (in elevation units).

- spillout_slope:

  Spillout slope (in degrees).

- remove_embankments:

  Optional flag indicating whether to output a DEM with embankments
  removed (true) or an embankment raster map (false).

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
