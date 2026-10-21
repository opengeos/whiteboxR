# Image regression

Performs image regression analysis on two input images.

## Usage

``` r
wbt_image_regression(
  input1,
  input2,
  output,
  out_residuals = NULL,
  standardize = FALSE,
  scattergram = FALSE,
  num_samples = 1000,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input raster file (independent variable, X).

- input2:

  Input raster file (dependent variable, Y).

- output:

  Output HTML file for regression summary report.

- out_residuals:

  Output raster regression residual file.

- standardize:

  Optional flag indicating whether to standardize the residuals map.

- scattergram:

  Optional flag indicating whether to output a scattergram.

- num_samples:

  Number of samples used to create scattergram.

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
