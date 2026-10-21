# Initialize an R object containing spatial data for use by WhiteboxTools

Initialize an R object containing spatial data for use by WhiteboxTools

## Usage

``` r
wbt_source(
  x,
  dsn = NULL,
  layer = NULL,
  force = FALSE,
  tmpdir = tempdir(),
  pattern = "wbt",
  verbose = wbt_verbose(),
  ...
)
```

## Arguments

- x:

  A terra SpatVector or sf object (in memory) or a path to a file that
  can be read as a SpatVectorProxy. Or a memory or file-based
  SpatRaster. When `x` has multiple layers/bands, the first layer is
  used by default; use the `layer` argument to select a specific
  layer/band.

- dsn:

  Data source path / file name

- layer:

  Data layer. For vectors, `layer` is interpreted as a layer name
  (character); for rasters, `layer` is interpreted as a band index or
  name (integer OR character)

- force:

  Force write of vector data to file? Default: FALSE (only write if file
  does not exist and new file is needed)

- tmpdir:

  Directory to write temporary ESRI Shapefiles for vector input in
  memory or otherwise not already in shapefile. Default:
  [`tempdir()`](https://rdrr.io/r/base/tempfile.html)

- pattern:

  Character vector giving the initial part of the temporary file name

- verbose:

  Print information about data source and contents?

- ...:

  Additional arguments passed to
  [`terra::writeVector()`](https://rspatial.github.io/terra/reference/writeVector.html)
  or
  [`sf::st_write()`](https://r-spatial.github.io/sf/reference/st_write.html),
  or
  [`terra::writeRaster`](https://rspatial.github.io/terra/reference/writeRaster.html)
  (for rasters).

## Value

An R object (SpatRaster, SpatVector, SpatVectorProxy, sf) with
attributes `wbt_dsn` and `wbt_layer` set as needed to support reading
and writing R objects from file by WhiteboxTools.
