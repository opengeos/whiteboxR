# Join tables

Merge a vector's attribute table with another table based on a common
field.

## Usage

``` r
wbt_join_tables(
  input1,
  pkey,
  input2,
  fkey,
  import_field = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- input1:

  Input primary vector file (i.e. the table to be modified).

- pkey:

  Primary key field.

- input2:

  Input foreign vector file (i.e. source of data to be imported).

- fkey:

  Foreign key field.

- import_field:

  Imported field (all fields will be imported if not specified).

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
