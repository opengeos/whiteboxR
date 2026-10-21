# Classify overlap points

Classifies or filters LAS points in regions of overlapping flight lines.

## Usage

``` r
wbt_classify_overlap_points(
  input,
  output,
  resolution = 2,
  criterion = "max scan angle",
  filter = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input LiDAR file.

- output:

  Output LiDAR file.

- resolution:

  The size of the square area used to evaluate nearby points in the
  LiDAR data.

- criterion:

  Criterion used to identify overlapping points; options are 'max scan
  angle', 'not min point source ID', 'not min time', 'multiple point
  source IDs'.

- filter:

  Filter out points from overlapping flightlines? If false, overlaps
  will simply be classified.

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
