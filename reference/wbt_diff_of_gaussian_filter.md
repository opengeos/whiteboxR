# Diff of gaussian filter

Performs a Difference of Gaussian (DoG) filter on an image.

## Usage

``` r
wbt_diff_of_gaussian_filter(
  input,
  output,
  sigma1 = 2,
  sigma2 = 4,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input raster file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- output:

  Output raster file.

- sigma1:

  Standard deviation distance in pixels.

- sigma2:

  Standard deviation distance in pixels.

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
