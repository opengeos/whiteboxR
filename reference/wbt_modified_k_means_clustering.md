# Modified k means clustering

Performs a modified k-means clustering operation on a multi-spectral
dataset.

## Usage

``` r
wbt_modified_k_means_clustering(
  inputs,
  output,
  out_html = NULL,
  start_clusters = 1000,
  merge_dist = NULL,
  max_iterations = 10,
  class_change = 2,
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

- out_html:

  Output HTML report file.

- start_clusters:

  Initial number of clusters.

- merge_dist:

  Cluster merger distance.

- max_iterations:

  Maximum number of iterations.

- class_change:

  Minimum percent of cells changed between iterations before completion.

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
