# Geomorphons

Computes geomorphon patterns.

## Usage

``` r
wbt_geomorphons(
  dem,
  output,
  search = 50,
  threshold = 0,
  fdist = 0,
  skip = 0,
  forms = TRUE,
  residuals = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- output:

  Output raster file.

- search:

  Look up distance (in cells).

- threshold:

  Flatness threshold for the classification function (in degrees).

- fdist:

  Distance (in cells) to begin reducing the flatness threshold to avoid
  problems with pseudo-flat lines-of-sight.

- skip:

  Distance (in cells) to begin calculating lines-of-sight.

- forms:

  Classify geomorphons into 10 common land morphologies, else output
  ternary pattern.

- residuals:

  Convert elevation to residuals of a linear model.

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
