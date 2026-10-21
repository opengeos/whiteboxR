# High pass bilateral filter

Performs a high-pass bilateral filter, by differencing an input image by
the bilateral filter by Tomasi and Manduchi (1998).

## Usage

``` r
wbt_high_pass_bilateral_filter(
  input,
  output,
  sigma_dist = 0.75,
  sigma_int = 1,
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

- sigma_dist:

  Standard deviation in distance in pixels.

- sigma_int:

  Standard deviation in intensity in pixels.

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
