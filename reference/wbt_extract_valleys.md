# Extract valleys

Identifies potential valley bottom grid cells based on local
topolography alone.

## Usage

``` r
wbt_extract_valleys(
  dem,
  output,
  variant = "LQ",
  line_thin = TRUE,
  filter = 5,
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

- variant:

  Options include 'LQ' (lower quartile), 'JandR' (Johnston and
  Rosenfeld), and 'PandD' (Peucker and Douglas); default is 'LQ'.

- line_thin:

  Optional flag indicating whether post-processing line-thinning should
  be performed.

- filter:

  Optional argument (only used when variant='lq') providing the filter
  size, in grid cells, used for lq-filtering (default is 5).

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
