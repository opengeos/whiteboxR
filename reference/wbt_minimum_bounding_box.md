# Minimum bounding box

Creates a vector minimum bounding rectangle around vector features.

## Usage

``` r
wbt_minimum_bounding_box(
  input,
  output,
  criterion = "area",
  features = TRUE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input vector file path. See [`wbt_file_path()`](wbt_file_path.md) for
  details.

- output:

  Output vector polygon file.

- criterion:

  Minimization criterion; options include 'area' (default), 'length',
  'width', and 'perimeter'.

- features:

  Find the minimum bounding rectangles around each individual vector
  feature.

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
