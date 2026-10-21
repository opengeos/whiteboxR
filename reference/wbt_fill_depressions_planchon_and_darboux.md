# Fill depressions planchon and darboux

Fills all of the depressions in a DEM using the Planchon and Darboux
(2002) method.

## Usage

``` r
wbt_fill_depressions_planchon_and_darboux(
  dem,
  output,
  fix_flats = TRUE,
  flat_increment = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- output:

  Output raster file.

- fix_flats:

  Optional flag indicating whether flat areas should have a small
  gradient applied.

- flat_increment:

  Optional elevation increment applied to flat areas.

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
