# Heat map

Calculates a heat map, or kernel density estimation (KDE), for an input
point set.

## Usage

``` r
wbt_heat_map(
  input,
  output,
  weight_field = NULL,
  bandwidth = "",
  kernel = "quartic",
  cell_size = "",
  base = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input points shapefile.

- output:

  Name of the output raster image file.

- weight_field:

  Optional name of the attribute containing point weight.

- bandwidth:

  Bandwidth (metres).

- kernel:

  Kernel type; one of 'uniform', 'triangular', 'epanechnikov',
  'quartic', 'triweight', 'tricube', 'gaussian', 'cosine', 'logistic',
  'sigmoid', 'silverman'.

- cell_size:

  Optionally specified cell size of output raster, in metres. Not used
  when base raster is specified.

- base:

  Optionally specified input base raster file. Not used when a cell size
  is specified.

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
