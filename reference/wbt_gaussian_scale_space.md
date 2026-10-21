# Gaussian scale space

Uses the fast Gaussian approximation algorithm to produce scaled
land-surface parameter measurements from an input DEM.

## Usage

``` r
wbt_gaussian_scale_space(
  dem,
  output,
  output_zscore,
  output_scale,
  points = NULL,
  sigma = 0.5,
  step = 0.5,
  num_steps = 10,
  lsp = "Slope",
  z_factor = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input DEM raster file.

- output:

  Name of the output land-surface parameter raster file.

- output_zscore:

  Name of the output z-score raster file.

- output_scale:

  Name of the output scale raster file.

- points:

  Name of the input vector points shapefile.

- sigma:

  Initial sigma value (cells).

- step:

  Step size as any positive non-zero integer.

- num_steps:

  Number of steps.

- lsp:

  Output land-surface parameter; one of 'AnisotropyLTP', 'Aspect',
  'DiffMeanElev', 'Eastness', 'Elevation', 'Hillshade', 'MeanCurvature',
  'Northness', 'PlanCurvature', 'ProfileCurvature', 'Ruggedness',
  'Slope', 'TanCurvature', 'TotalCurvature'.

- z_factor:

  Optional multiplier for when the vertical and horizontal units are not
  the same.

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
