# Svm regression

Performs a supervised SVM regression analysis using training site points
and predictor rasters.

## Usage

``` r
wbt_svm_regression(
  inputs,
  training,
  field,
  scaling = "Normalize",
  output = NULL,
  c = 50,
  eps = 10,
  gamma = 0.5,
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

  Name of the input training site points Shapefile.

- field:

  Name of the attribute containing class data.

- scaling:

  Scaling method for predictors. Options include 'None', 'Normalize',
  and 'Standardize'.

- output:

  Name of the output raster file.

- c:

  c-value, the regularization parameter.

- eps:

  Epsilon in the epsilon-SVR model.

- gamma:

  Gamma parameter used in setting the RBF (Gaussian) kernel function.

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
