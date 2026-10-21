# K means clustering

Performs a k-means clustering operation on a multi-spectral dataset.

## Usage

``` r
wbt_k_means_clustering(
  inputs,
  output,
  classes,
  out_html = NULL,
  max_iterations = 10,
  class_change = 2,
  initialize = "diagonal",
  min_class_size = 10,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- inputs:

  Input raster file paths, concatenated with `","` or `";"`. See
  [`wbt_file_path()`](wbt_file_path.md) for details.

- output:

  Output raster file.

- classes:

  Number of classes.

- out_html:

  Output HTML report file.

- max_iterations:

  Maximum number of iterations.

- class_change:

  Minimum percent of cells changed between iterations before completion.

- initialize:

  How to initialize cluster centres?.

- min_class_size:

  Minimum class size, in pixels.

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
