# Colourize based on point returns

Sets the RGB values of a LiDAR point cloud based on the point returns.

## Usage

``` r
wbt_colourize_based_on_point_returns(
  input,
  output = NULL,
  intensity_blending = 50,
  only = "(230,214,170)",
  first = "(0,140,0)",
  intermediate = "(255,0,255)",
  last = "(0,0,255)",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input LiDAR points.

- output:

  Name of the output LiDAR points.

- intensity_blending:

  Intensity blending amount (0-100 percent).

- only:

  Only return colour, e.g. (230,214,170), \#e6d6aa, or 0xe6d6aa.

- first:

  First return colour, e.g. (230,214,170), \#e6d6aa, or 0xe6d6aa.

- intermediate:

  Intermediate return colour, e.g. (230,214,170), \#e6d6aa, or 0xe6d6aa.

- last:

  Last return colour, e.g. (230,214,170), \#e6d6aa, or 0xe6d6aa.

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
