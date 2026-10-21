# Feature preserving smoothing

Reduces short-scale variation in an input DEM using a modified Sun et
al. (2007) algorithm.

## Usage

``` r
wbt_feature_preserving_smoothing(
  dem,
  output,
  filter = 11,
  norm_diff = 15,
  num_iter = 3,
  max_diff = 0.5,
  zfactor = NULL,
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

- filter:

  Size of the filter kernel.

- norm_diff:

  Maximum difference in normal vectors, in degrees.

- num_iter:

  Number of iterations.

- max_diff:

  Maximum allowable absolute elevation change (optional).

- zfactor:

  Optional multiplier for when the vertical and horizontal units are not
  the same.

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
