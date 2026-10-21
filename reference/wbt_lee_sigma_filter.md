# Lee sigma filter

Performs a Lee (Sigma) smoothing filter on an image.

## Usage

``` r
wbt_lee_sigma_filter(
  input,
  output,
  filterx = 11,
  filtery = 11,
  sigma = 10,
  m = 5,
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

- filterx:

  Size of the filter kernel in the x-direction.

- filtery:

  Size of the filter kernel in the y-direction.

- sigma:

  Sigma value should be related to the standard deviation of the
  distribution of image speckle noise.

- m:

  M-threshold value the minimum allowable number of pixels within the
  intensity range.

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
