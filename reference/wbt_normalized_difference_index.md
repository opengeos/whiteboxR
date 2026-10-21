# Normalized difference index

Calculate a normalized-difference index (NDI) from two bands of
multispectral image data.

## Usage

``` r
wbt_normalized_difference_index(
  input1,
  input2,
  output,
  clip = 0,
  correction = 0,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input image 1 (e.g. near-infrared band).

- input2:

  Input image 2 (e.g. red band).

- output:

  Output raster file.

- clip:

  Optional amount to clip the distribution tails by, in percent.

- correction:

  Optional adjustment value (e.g. 1, or 0.16 for the optimal soil
  adjusted vegetation index, OSAVI).

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
