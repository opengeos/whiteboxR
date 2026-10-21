# Snap pour points

Moves outlet points used to specify points of interest in a
watershedding operation to the cell with the highest flow accumulation
in its neighbourhood.

## Usage

``` r
wbt_snap_pour_points(
  pour_pts,
  flow_accum,
  output,
  snap_dist,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- pour_pts:

  Input vector pour points (outlet) file.

- flow_accum:

  Input raster D8 flow accumulation file.

- output:

  Output vector file.

- snap_dist:

  Maximum snap distance in map units.

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
