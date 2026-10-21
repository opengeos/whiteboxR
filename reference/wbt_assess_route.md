# Assess route

This tool assesses a route for slope, elevation, and visibility
variation.

## Usage

``` r
wbt_assess_route(
  routes,
  dem,
  output,
  length = "",
  dist = 20,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- routes:

  Name of the input routes vector file.

- dem:

  Name of the input DEM raster file.

- output:

  Name of the output lines shapefile.

- length:

  Maximum segment length (m).

- dist:

  Search distance, in grid cells, used in visibility analysis.

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
