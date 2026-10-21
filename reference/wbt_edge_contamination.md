# Edge contamination

Identifies grid cells within an input DEM that may be impacted by edge
contamination for hydrological applications.

## Usage

``` r
wbt_edge_contamination(
  dem,
  output,
  flow_type = "mfd",
  zfactor = "",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Name of the input DEM raster file; must be depressionless.

- output:

  Name of the output raster file.

- flow_type:

  Flow algorithm type, one of 'd8', 'mfd', or 'dinf'.

- zfactor:

  Optional multiplier for when the vertical and horizontal units are not
  the same.

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
