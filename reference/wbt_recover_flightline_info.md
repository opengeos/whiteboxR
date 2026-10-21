# Recover flightline info

Associates LiDAR points by their flightlines.

## Usage

``` r
wbt_recover_flightline_info(
  input,
  output,
  max_time_diff = 5,
  pt_src_id = FALSE,
  user_data = FALSE,
  rgb = FALSE,
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

- max_time_diff:

  Maximum in-flightline time difference (seconds).

- pt_src_id:

  Add flightline information to the point source ID.

- user_data:

  Add flightline information to the user data.

- rgb:

  Add flightline information to the RGB colour data.

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
