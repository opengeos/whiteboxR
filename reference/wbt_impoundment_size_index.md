# Impoundment size index

Calculates the impoundment size resulting from damming a DEM.

## Usage

``` r
wbt_impoundment_size_index(
  dem,
  damlength,
  out_mean = NULL,
  out_max = NULL,
  out_volume = NULL,
  out_area = NULL,
  out_dam_height = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- damlength:

  Maximum length of the dam.

- out_mean:

  Output mean flooded depth file.

- out_max:

  Output maximum flooded depth file.

- out_volume:

  Output flooded volume file.

- out_area:

  Output flooded area file.

- out_dam_height:

  Output dam height file.

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
