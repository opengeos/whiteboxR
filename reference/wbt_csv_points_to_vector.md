# Csv points to vector

Converts a CSV text file to vector points.

## Usage

``` r
wbt_csv_points_to_vector(
  input,
  output,
  xfield = 0,
  yfield = 1,
  epsg = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input:

  Input CSV file (i.e. source of data to be imported).

- output:

  Output vector file.

- xfield:

  X field number (e.g. 0 for first field).

- yfield:

  Y field number (e.g. 1 for second field).

- epsg:

  EPSG projection (e.g. 2958).

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
