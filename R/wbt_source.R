#' Initialize an R object containing vector data for use by WhiteboxTools
#'
#' @param x A terra SpatVector or sf object, or a path to a file that can be read as a SpatVectorProxy
#' @param dsn Data source path / file name
#' @param layer Data layer
#' @param force Force write of vector data to file? Default: FALSE (only write if file does not exist)
#' @param ... Additional arguments passed to `terra::writeVector()` or `sf::st_write()`
#' @param verbose Print information about data source and contents? 
#' @return An R object with attributes `wbt_dsn` and `wbt_layer` set as needed to support reading and writing R objects from file by WhiteboxTools.
#' 
#' @export
wbt_source <- function(x,
                       dsn = NULL,
                       layer = NULL,
                       force = FALSE,
                       verbose = wbt_verbose(),
                       ...) {
  if (is.character(x)) {
    if (file.exists(x)) {
      # a SpatVectorProxy allows us to get some basic info without loading the whole file
      x <- terra::vect(x, proxy = TRUE)
      attr(x, 'wbt_dsn') <- x@ptr$v$source
      attr(x, 'wbt_layer') <- layer
      return(x)
    }
  }
  
    # NULL dsn (TODO: GDAL-supported dsn not supported by WBT)
  if (is.null(dsn)) {
    # if (gpkg) {
    #   # default geopackage file paths
    #   dsn <- wbt_geopackage()
    #   layer <- wbt_geopackage_layer()
    # } else {
    # only supported vector format is the ESRI Shapefile.
    # TODO: dbf limitations? use alternate wbt/gdal common format?
    if (!is.null(layer)) {
      bn <- layer
    } else bn <- "file"
    wd <- wbt_wd()
    if (wd == "") 
      wd <- getwd()
    ext <- ".shp"
    if (inherits(x, 'SpatRaster') || 
        inherits(x, 'RasterLayer') || 
        inherits(x, 'RasterStack') || 
        inherits(x, 'RasterBrick')) {
      ext <- ".tif"
    }
    dsn <- tempfile(pattern = bn, tmpdir = wd, fileext = ext)
    # }
  }
  
  if (!file.exists(dsn) || force) {
    # convert less common types to core types
    if (inherits(x, 'sfc') || inherits(x, 'Spatial')) {
      x <- sf::st_as_sf(x)
    }
    
    # write to file/db
    if (inherits(x, 'SpatVector')) {
      terra::writeVector(x, filename = dsn, layer = layer, ...)
    } else if (inherits(x, 'sf')) {
      sf::st_write(x, dsn = dsn, layer = layer, quiet = !verbose, ...)
    } else if (inherits(x, 'SpatRaster')) {
      terra::writeRaster(x, filename = dsn)
    }
  }
  
  # set attributes
  # TODO: support for DBIConnection as dsn?
  if (file.exists(dsn)) {
    # TODO: check layer exists in DSN?
    if (!is.null(layer)) {
      # ...
    }
    # TODO: check file metadata/extent/CRS/etc?
    attr(x, 'wbt_dsn') <- dsn
    attr(x, 'wbt_layer') <- layer
  }
  x
}

# draft, non-exported functions for generating paths/layers in a "scratch" geopackage
wbt_geopackage <- function(wd = wbt_wd(),
                           gpkg = "Default.gpkg") {
  if (wd == "")
    wd <- getwd()
  file.path(wd, gpkg)
}

wbt_geopackage_layer <- function(layer = NULL) {
  basename(tempfile(pattern = "layer"))
}

wbt_add2 <- function(input1,
           input2,
           output,
           wd = getOption("whitebox.wd", getwd()),
           verbose_mode = wbt_verbose(),
           compress_rasters = wbt_compress_rasters(),
           ...) {
    
    wbt(
      "add",
      input1 = input1,
      input2 = input2,
      output = output,
      # wd = wd,
      # verbose_mode = verbose_mode,
      # compress_rasters = compress_rasters,
      ...
    )
}