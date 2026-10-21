# Qin flow accumulation

Calculates Qin et al. (2007) flow accumulation.

## Usage

``` r
wbt_qin_flow_accumulation(
  dem,
  output,
  out_type = "specific contributing area",
  exponent = 10,
  max_slope = 45,
  threshold = NULL,
  log = FALSE,
  clip = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input DEM raster file; must be depressionless.

- output:

  Name of the output raster file.

- out_type:

  Output type; one of 'cells', 'specific contributing area' (default),
  and 'catchment area'.

- exponent:

  Optional upper-bound exponent parameter; default is 10.0.

- max_slope:

  Optional upper-bound slope parameter, in degrees (0-90); default is
  45.0.

- threshold:

  Optional convergence threshold parameter, in grid cells; default is
  infinity.

- log:

  Log-transform the output values?.

- clip:

  Optional flag to request clipping the display max by 1 percent.

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
