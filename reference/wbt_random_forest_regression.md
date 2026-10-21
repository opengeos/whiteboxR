# Random forest regression

Performs a random forest regression analysis using training site data
and predictor rasters.

## Usage

``` r
wbt_random_forest_regression(
  inputs,
  training,
  field,
  output = NULL,
  n_trees = 100,
  min_samples_leaf = 1,
  min_samples_split = 2,
  test_proportion = 0.2,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- inputs:

  Names of the input predictor rasters.

- training:

  Name of the input training site points shapefile.

- field:

  Name of the attribute containing response variable name data.

- output:

  Name of the output raster file. This parameter is optional. When
  unspecified, the tool will only build the model. When specified, the
  tool will use the built model and predictor rasters to perform a
  spatial prediction.

- n_trees:

  The number of trees in the forest.

- min_samples_leaf:

  The minimum number of samples required to be at a leaf node.

- min_samples_split:

  The minimum number of samples required to split an internal node.

- test_proportion:

  The proportion of the dataset to include in the test split; default is
  0.2.

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
