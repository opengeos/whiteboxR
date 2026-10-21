# Image correlation neighbourhood analysis

Performs image correlation on two input images neighbourhood search
windows.

## Usage

``` r
wbt_image_correlation_neighbourhood_analysis(
  input1,
  input2,
  output1,
  output2,
  filter = 11,
  stat = "pearson",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input raster file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- input2:

  Input raster file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- output1:

  Output correlation (r-value or rho) raster file.

- output2:

  Output significance (p-value) raster file.

- filter:

  Size of the filter kernel.

- stat:

  Correlation type; one of 'pearson' (default) and 'spearman'.

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
