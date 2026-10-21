# Colourize based on class

Sets the RGB values of a LiDAR point cloud based on the point
classification values.

## Usage

``` r
wbt_colourize_based_on_class(
  input,
  output = NULL,
  intensity_blending = 50,
  clr_str = "",
  use_unique_clrs_for_buildings = FALSE,
  radius = "",
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

- clr_str:

  Colour values, e.g. 2: (184, 167, 108); 5: \#9ab86c.

- use_unique_clrs_for_buildings:

  Use unique colours for each building?.

- radius:

  Search distance used in neighbourhood search.

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
