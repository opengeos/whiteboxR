# \`wbt()\` method: call 'Whitebox' tools by name

## `wbt()`

The [`wbt()`](../reference/wbt.md) method is a high-level wrapper
function to manage flow of information between R and WhiteboxTools. With
[`wbt()`](../reference/wbt.md) one can run sequential analyses in
Whitebox while having R prepare inputs, generate commands, and visualize
results.

``` r

library(whitebox)
```

### Getting Started

Know what tool you want to run but *can’t remember the required
parameters*? Just type `wbt("toolname")`

``` r

wbt("slope")
#> Required arguments:
#> - [ ] dem -- Input raster DEM file.
#> - [ ] output -- Output raster file.
#> 
#> Optional arguments:
#> - [ ] zfactor -- Optional multiplier for when the vertical and horizontal units are not the same.
#> - [ ] units -- Units of output raster; options include 'degrees', 'radians', 'percent'
#> <wbt_result>
#> No parameters (Slope)
#> 
#>  Slope ERROR: 'dem', 'output' required
```

Output produced on error and with invalid arguments helps guide use
interactively by prompting with required and optional arguments as a
checklist.

### Result Objects

All calls to [`wbt()`](../reference/wbt.md) return an S3 object with
class `wbt_result`.

``` r

# get file path of sample DEM
dem <- sample_dem_data()

wbt("slope", dem = dem, output = file.path(tempdir(), "slope.tif"))
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> dem  : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/slope.tif' 
#> --- RESULT ---
#> $output
#>   File result:  //tmp/RtmplLXRlD/slope.tif exists (Last modified: 2026-10-21 14:02:38.2997)
```

Whether a system call succeeds or fails the parameters that were passed
to the WhiteboxTools executable and references to any output file paths
that were specified are returned. If output files reference spatial data
(e.g. a GeoTIFF file) they may be converted to a file-based R object
providing information about the result.

``` r

wbt("slope", goof = dem, output = file.path(tempdir(), "slope.tif"))
#> Error: invalid parameter 'goof'
#> Required arguments:
#> - [ ] dem -- Input raster DEM file.
#> - [*] output -- Output raster file.
#> 
#> Optional arguments:
#> - [ ] zfactor -- Optional multiplier for when the vertical and horizontal units are not the same.
#> - [ ] units -- Units of output raster; options include 'degrees', 'radians', 'percent'
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> goof : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/slope.tif' 
#> 
#>  Slope ERROR: 'goof' invalid; 'dem' required
```

When a call fails an informative error message issued, and the error
will be cached inside the result. Prior runs references are stored as
well for sequential tool runs; more on that below.

#### `wbt_result` class

A `wbt_result` class object is a base R
[`list()`](https://rdrr.io/r/base/list.html) with standard element names
(`"tool"`, `"args"`, `"stdout"`, `"crs"`, `"result"`, `"history"`) and
the `"class"` attribute `"wbt_result"`.

``` r

str(wbt("slope", dem = dem, output = file.path(tempdir(), "slope.tif")), max.level = 1)
#> List of 6
#>  $ tool   : chr "Slope"
#>  $ args   : chr "--dem=/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif --output=/tmp/RtmplLXRlD/slope.tif"
#>  $ stdout : chr "Slope - Elapsed Time (excluding I/O): 0.10s"
#>  $ crs    : chr ""
#>   ..- attr(*, "package")= Named chr ""
#>   .. ..- attr(*, "names")= chr "dem"
#>  $ result :List of 1
#>  $ history:List of 1
#>  - attr(*, "class")= chr "wbt_result"
```

Any `output` produced by the tool (usually file paths set by the user)
will be included in the `wbt_result$result` list.

#### `wbt_result` on error

If there is an error a `try-error` class object with an error message is
returned in lieu of a list in `$result`

``` r

# on error there is a try-error object in $result
x <- wbt("slope")
#> Required arguments:
#> - [ ] dem -- Input raster DEM file.
#> - [ ] output -- Output raster file.
#> 
#> Optional arguments:
#> - [ ] zfactor -- Optional multiplier for when the vertical and horizontal units are not the same.
#> - [ ] units -- Units of output raster; options include 'degrees', 'radians', 'percent'
inherits(x$result, 'try-error')
#> [1] TRUE
message(x$result[1])
#> ERROR: 'dem', 'output' required
```

### Vignette Topics

We now will cover how the [`wbt()`](../reference/wbt.md) method and
`wbt_result` class can be used for the following:

- Input and Output with R spatial objects

- Running Sequences of Tools (optionally: with pipe `|>` or `%>%`)

- Handling Coordinate Reference Systems

## Input and Output with R spatial objects

A feature of [`wbt()`](../reference/wbt.md) is that it handles
input/output and file name management if you are using R objects as
input. It can be an onerous task to manage files for workflows involving
many tool runs.

If you use a `terra` object as input, you will get a `SpatRaster`. If
you use a `raster` object as your input object frontend, you will get a
`RasterLayer` object as output for tools that produce a raster. There
will be file paths associated with that R object.

#### Compare `raster` and `terra` as R raster object frontends

``` r

if (requireNamespace("raster")) {
  rdem <- raster::raster(dem)

  # raster input; raster output
  r1 <- wbt("slope", dem = rdem, output = file.path(tempdir(), "slope.tif"))
  r1
  class(r1$result$output)
}
#> Loading required namespace: raster
#> [1] "RasterLayer"
#> attr(,"package")
#> [1] "raster"
```

``` r

tdem <- terra::rast(dem)

## terra input; terra output
t1 <- wbt("slope", dem = tdem, output =  file.path(tempdir(), "slope.tif"))
t1
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> dem  : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/slope.tif' 
#> --- RESULT ---
#> $output
#> class       : SpatRaster
#> size        : 188, 237, 1  (nrow, ncol, nlyr)
#> resolution  : 90, 90  (x, y)
#> extent      : 664692, 686022, 4878904, 4895824  (xmin, xmax, ymin, ymax)
#> coord. ref. : NAD83 / UTM zone 18N (EPSG:26918)
#> source      : slope.tif
#> name        : slope
class(t1$result$output)
#> [1] "SpatRaster"
#> attr(,"package")
#> [1] "terra"
```

The user still needs to specify paths but [`wbt()`](../reference/wbt.md)
eases the process of converting input objects to paths and reading
output paths to R objects after the tool has run. In principle any R
object that references a file with type that Whitebox supports can be
handled under the current (simple; proof of concept) system. Using
file-based representations may not be the most efficient, but allows for
a tangible trail of the steps in a workflow to be followed that
otherwise might be hard to track.

## `wbt_source()`: rasters in memory, and vector data

The terra and raster packages use pointers to a file/raster connection
except when a grid is entirely in memory. Processing these types of
rasters with whitebox requires writing out as a temporary GeoTIFF file
for tool input. In general [`wbt()`](../reference/wbt.md) can handle
this for you.

Vector data (point, line and polygon geometries) are commonly stored
stored in sf data.frames, sp objects, or terra SpatVector objects. These
types are read into memory on creation.

Reading vector data into R memory is not needed to run Whitebox tools,
so [`wbt_source()`](../reference/wbt_source.md) provides a means to
annotate objects with information about source file path (similar to how
terra/raster handle raster sources) such that they can be processed
further by [`wbt()`](../reference/wbt.md) with minimal overhead. Objects
like the terra SpatVectorProxy use delayed read by default. Passing a
file path to [`wbt_source()`](../reference/wbt_source.md) will create a
SpatVectorProxy with necessary information for use with
[`wbt()`](../reference/wbt.md).

For instance, we can create a reference for a sample ESRI Shapefile via
[`wbt_source()`](../reference/wbt_source.md). The result is a
SpatVectorProxy.

``` r

library(terra)
shp <- system.file("ex/lux.shp", package = "terra")
x <- wbt_source(shp)
x
#>  class       : SpatVectorProxy
#>  geometry    : polygons
#>  dimensions  : 1, 6  (geometries, attributes)
#>  extent      : 5.74414, 6.528252, 49.44781, 50.18162  (xmin, xmax, ymin, ymax)
#>  source      : lux.shp
#>  coord. ref. : lon/lat WGS 84 (EPSG:4326)
#> names       :  ID_1 NAME_1  ID_2 NAME_2  AREA   POP
#> type        : <num>  <chr> <num>  <chr> <num> <num>
```

The SpatVectorProxy provides a light-weight means to create an R object
reference to a large file; allowing the “heavy” lifting for that file to
be done primarily by WhiteboxTools (or GDAL via {terra}).

At time of writing this document, WhiteboxTools does not support vector
data inputs other than Shapefile. If we have, for example, a GeoPackage,
[`wbt_source()`](../reference/wbt_source.md) will convert the input to a
temporary shapefile and return a SpatVectorProxy that references that
file. This object can then be used as input to
[`wbt()`](../reference/wbt.md).

``` r

# load the data
x2 <- query(x)

# remove area column
x2$AREA <- NULL

# create a GeoPackage
terra::writeVector(x2, filename = file.path(tempdir(), "lux.gpkg"), overwrite = TRUE)

# now the source is a temporary .shp
x3 <- wbt_source(file.path(tempdir(), "lux.gpkg"))

wbt("polygon_area", input = x3)
#> <wbt_result>
#> --- PARAMETERS (PolygonArea) ---
#> input    : '/tmp/RtmplLXRlD/lux.gpkg_wbt42a529520222.shp' 
#> --- RESULT ---
#> $output
#>  class       : SpatVectorProxy
#>  geometry    : polygons
#>  dimensions  : 1, 6  (geometries, attributes)
#>  extent      : 5.74414, 6.528252, 49.44781, 50.18162  (xmin, xmax, ymin, ymax)
#>  source      : lux.gpkg_wbt42a529520222.shp
#>  coord. ref. : lon/lat WGS 84 (EPSG:4326)
#> names       :  ID_1 NAME_1  ID_2 NAME_2   POP  AREA
#> type        : <num>  <chr> <num>  <chr> <num> <num>
```

## Running Sequences of Tools

When you call [`wbt()`](../reference/wbt.md) and the first argument is a
`wbt_result` the `output` from the input `wbt_result` is passed as the
first `input` to the new tool run.

This general “pass the output as the first input” works even if the
first `input` parameter (`"-i"` flag) is something different such as
`dem` or `input1`.

This makes it possible to chain different operations together in a
sequence.

If all of the required parameters are specified the tool will be run.

Here we run “Slope” on a DEM, then run “Slope” on it again to get a
second derivative “curvature”.

``` r

x <- wbt("slope", dem = dem, output = file.path(tempdir(), "slope.tif"))
x2 <- wbt(x, tool_name = "slope", output = file.path(tempdir(), "curvature.tif"))
```

### Using pipes

Nested chained operation syntax can be transformed to use pipe operators
({base} R 4.1+ `|>` or {magrittr} `%>%`). This can improve the
readability of the code (fewer nested parentheses) and the first
argument transfer behavior allows results from each step to be
transferred to the input of the next.

``` r

wbt("slope", dem = dem, output = file.path(tempdir(), "slope.tif")) |>
  wbt("slope", output = file.path(tempdir(), "curvature.tif"))
```

The `wbt_result` output that prints to the console will reflect the
input/output parameters of the most recent tool run in a tool chain.

``` r

x2
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> dem  : '//tmp/RtmplLXRlD/slope.tif'
#> output   : '/tmp/RtmplLXRlD/curvature.tif' 
#> --- RESULT ---
#> $output
#>   File result:  //tmp/RtmplLXRlD/curvature.tif exists (Last modified: 2026-10-21 14:02:41.242709)
#> --- HISTORY ---
#> Prior results (n=1) for: Slope 
#>  - Slope (output<character>)
```

[`wbt_result()`](../reference/wbt.md) is the method to get `$result` for
single runs or all `$result` in `$history` for chained runs from a
`wbt_result` object.

``` r

str(wbt_result(x2), max.level = 1)
#>  chr [1:2] "//tmp/RtmplLXRlD/slope.tif" "//tmp/RtmplLXRlD/curvature.tif"
```

The `$history` element is a list of the `wbt_result` from individual
runs.

``` r

str(x2$history, max.level = 1)
#> List of 2
#>  $ :List of 5
#>   ..- attr(*, "class")= chr "wbt_result"
#>  $ :List of 5
#>   ..- attr(*, "class")= chr "wbt_result"
```

If you pass invalid results from one step to the next, you get an
informative error message.

``` r

x <- wbt("slope")
#> Required arguments:
#> - [ ] dem -- Input raster DEM file.
#> - [ ] output -- Output raster file.
#> 
#> Optional arguments:
#> - [ ] zfactor -- Optional multiplier for when the vertical and horizontal units are not the same.
#> - [ ] units -- Units of output raster; options include 'degrees', 'radians', 'percent'
wbt(x, "slope", output = file.path(tempdir(), "foo.tif"))
#> NOTE: try-error result cannot be used as `dem`
#> Required arguments:
#> - [ ] dem -- Input raster DEM file.
#> - [*] output -- Output raster file.
#> 
#> Optional arguments:
#> - [ ] zfactor -- Optional multiplier for when the vertical and horizontal units are not the same.
#> - [ ] units -- Units of output raster; options include 'degrees', 'radians', 'percent'
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> output   : '/tmp/RtmplLXRlD/foo.tif' 
#> 
#>  Slope ERROR: 'dem' required 
#> --- HISTORY ---
#> Prior results (n=1) for: Slope 
#>  - Slope (<character>)
```

## Coordinate Reference Systems (CRS)

On top of handling file paths it is necessary for Geographic Information
Systems to handle Coordinate Reference System (CRS) information. Many R
tools in the GDAL/PROJ sphere require valid CRS to operate.

WhiteboxTools will read the GeoKey information from your *GeoTIFF* files
specified by path and propagate that to the output file result. When you
read those files with R, you should find that the original file’s CRS
has been transferred.

[`wbt()`](../reference/wbt.md) and `wbt_result` help ensure consistent
file and CRS information across sequences of operations and within
calls–especially those *involving R spatial objects*.

If you specified the CRS in R, or made the raster entirely in R, you
might need a hand setting up the file-based representation that
WhiteboxTools will use. This is easy enough to do with
[`crs()`](https://rspatial.github.io/terra/reference/crs.html),
[`writeRaster()`](https://rspatial.github.io/terra/reference/writeRaster.html)
and the equivalent but often requires more boilerplate code than just
specifying the argument, or having CRS propagate from input.

For inputs that have a file-based representation (e.g. `RasterLayer` and
`SpatRaster` objects) [`wbt()`](../reference/wbt.md) provides an
interface where R objects can be substituted for file names and vice
versa. User and workflow level attributes like CRS and working directory
be handled at the same time.

``` r

dem <- sample_dem_data()

## equivalent to:
# dem <- system.file("extdata/DEM.tif", package = "whitebox")
```

In the process of reading/writing files that may contain CRS
information, such as this sample DEM, the CRS can be inspected, modified
and propagated to file or R objects.

### Setting the CRS

If the CRS is specified in the input `SpatRaster` object,
[`wbt()`](../reference/wbt.md) makes sure it is propagated to the R
object result. [`wbt()`](../reference/wbt.md) does not alter or copy the
source or output files which may or may not have CRS information.

``` r

araster <- terra::rast(dem)
wbt("slope", dem = araster, output = file.path(tempdir(), "foo.tif"))
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> dem  : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/foo.tif' 
#> --- RESULT ---
#> $output
#> class       : SpatRaster
#> size        : 188, 237, 1  (nrow, ncol, nlyr)
#> resolution  : 90, 90  (x, y)
#> extent      : 664692, 686022, 4878904, 4895824  (xmin, xmax, ymin, ymax)
#> coord. ref. : NAD83 / UTM zone 18N (EPSG:26918)
#> source      : foo.tif
#> name        : foo
```

Alternately you can specify the `crs` argument to
[`wbt()`](../reference/wbt.md) instead of
[`rast()`](https://rspatial.github.io/terra/reference/rast.html). This
will directly set the `crs` element of the `wbt_result` of your output.

``` r

wbt("slope", dem = terra::rast(dem), crs = "EPSG:26918", output = file.path(tempdir(), "foo.tif"))
#> <wbt_result>
#> --- PARAMETERS (Slope) ---
#> dem  : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/foo.tif' 
#> --- RESULT ---
#> $output
#> class       : SpatRaster
#> size        : 188, 237, 1  (nrow, ncol, nlyr)
#> resolution  : 90, 90  (x, y)
#> extent      : 664692, 686022, 4878904, 4895824  (xmin, xmax, ymin, ymax)
#> coord. ref. : NAD83 / UTM zone 18N (EPSG:26918)
#> source      : foo.tif
#> name        : foo
```

In either case wherever you specify the `crs` argument the `crs` is
stored in the `wbt_result` and propagated to the relevant output. Again,
the source files are unchanged if they had no CRS or invalid CRS (until
you write that updated CRS to file).

If two input R objects have different (or no) CRS then the
[`wbt()`](../reference/wbt.md) method will provide a message to the
user:

``` r

r1 <- terra::rast(dem) # default: EPSG:26918
r2 <- terra::deepcopy(r1)
crs(r2) <- "EPSG:26917" # something else/wrong
wbt("add", 
    input1 = r1, 
    input2 = r2, 
    output = file.path(tempdir(), "foo.tif")
   )
#> NOTE: Input CRS do not match.
#> <wbt_result>
#> --- PARAMETERS (Add) ---
#> input1   : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> input2   : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/foo.tif' 
#> --- RESULT ---
#> $output
#> class       : SpatRaster
#> size        : 188, 237, 1  (nrow, ncol, nlyr)
#> resolution  : 90, 90  (x, y)
#> extent      : 664692, 686022, 4878904, 4895824  (xmin, xmax, ymin, ymax)
#> coord. ref. : NAD83 / UTM zone 18N (EPSG:26918)
#> source      : foo.tif
#> name        : foo
```

This message is suppressed and output CRS set accordingly if the `crs`
argument is specified. This user set CRS is only in the SpatRaster
object, and does not necessarily match that of the file used as input or
returned as output.

``` r

wbt("add", 
    input1 = r1,
    input2 = r2, 
    crs = "EPSG:26918",
    output = file.path(tempdir(), "foo.tif")
   )
#> <wbt_result>
#> --- PARAMETERS (Add) ---
#> input1   : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> input2   : '/home/runner/work/_temp/Library/whitebox/extdata/DEM.tif'
#> output   : '/tmp/RtmplLXRlD/foo.tif' 
#> --- RESULT ---
#> $output
#> class       : SpatRaster
#> size        : 188, 237, 1  (nrow, ncol, nlyr)
#> resolution  : 90, 90  (x, y)
#> extent      : 664692, 686022, 4878904, 4895824  (xmin, xmax, ymin, ymax)
#> coord. ref. : NAD83 / UTM zone 18N (EPSG:26918)
#> source      : foo.tif
#> name        : foo
```
