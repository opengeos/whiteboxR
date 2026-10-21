# Lidar elevation slice

Outputs all of the points within a LiDAR (LAS) point file that lie
between a specified elevation range.

## Usage

``` r
wbt_lidar_elevation_slice(
  input,
  output,
  minz = NULL,
  maxz = NULL,
  cls = FALSE,
  inclassval = 2,
  outclassval = 1,
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

- minz:

  Minimum elevation value (optional).

- maxz:

  Maximum elevation value (optional).

- cls:

  Optional boolean flag indicating whether points outside the range
  should be retained in output but reclassified.

- inclassval:

  Optional parameter specifying the class value assigned to points
  within the slice.

- outclassval:

  Optional parameter specifying the class value assigned to points
  within the slice.

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
