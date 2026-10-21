# Slope vs aspect plot

This tool creates a slope-aspect relation plot from an input DEM.

## Usage

``` r
wbt_slope_vs_aspect_plot(
  input,
  output,
  bin_size = 2,
  min_slope = 0.1,
  zfactor = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input raster image file.

- output:

  Name of the output report file (\*.html).

- bin_size:

  Aspect bin size, in degrees.

- min_slope:

  Minimum slope, in degrees.

- zfactor:

  Z conversion factor.

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
