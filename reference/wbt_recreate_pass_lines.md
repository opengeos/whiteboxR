# Recreate pass lines

This tool can be used to approximate the harvester pass lines from yield
points.

## Usage

``` r
wbt_recreate_pass_lines(
  input,
  yield_field_name,
  output_lines,
  output_points,
  max_change_in_heading = 25,
  ignore_zeros = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Name of the input points shapefile.

- yield_field_name:

  Name of the attribute containing yield data.

- output_lines:

  Name of the output pass lines shapefile.

- output_points:

  Name of the output points shapefile.

- max_change_in_heading:

  Max change in heading.

- ignore_zeros:

  Ignore zero-valued yield points?.

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
