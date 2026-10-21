# Individual tree detection

Identifies points in a LiDAR point cloud that are associated with the
tops of individual trees.

## Usage

``` r
wbt_individual_tree_detection(
  input,
  output = NULL,
  min_search_radius = 1,
  min_height = 0,
  max_search_radius = "",
  max_height = "",
  only_use_veg = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input LiDAR file.

- output:

  Name of the output vector points file.

- min_search_radius:

  Minimum search radius (m).

- min_height:

  Minimum height (m).

- max_search_radius:

  Maximum search radius (m).

- max_height:

  Maximum height (m).

- only_use_veg:

  Only use veg. class points?.

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
