# Las to zlidar

Converts one or more LAS files into the zlidar compressed LiDAR data
format.

## Usage

``` r
wbt_las_to_zlidar(
  inputs = NULL,
  outdir = NULL,
  compress = "brotli",
  level = 5,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- inputs:

  Input LAS files.

- outdir:

  Output directory into which zlidar files are created. If unspecified,
  it is assumed to be the same as the inputs.

- compress:

  Compression method, including 'brotli' and 'deflate'.

- level:

  Compression level (1-9).

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
