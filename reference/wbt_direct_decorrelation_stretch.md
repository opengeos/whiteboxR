# Direct decorrelation stretch

Performs a direct decorrelation stretch enhancement on a
colour-composite image of multispectral data.

## Usage

``` r
wbt_direct_decorrelation_stretch(
  input,
  output,
  k = 0.5,
  clip = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input colour composite image file.

- output:

  Output raster file.

- k:

  Achromatic factor (k) ranges between 0 (no effect) and 1 (full
  saturation stretch), although typical values range from 0.3 to 0.7.

- clip:

  Optional percent to clip the upper tail by during the stretch.

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
