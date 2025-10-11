#' Initialize an R object containing spatial data for use by WhiteboxTools
#'
#' @param x A terra SpatVector or sf object (in memory) or a path to a file that
#'   can be read as a SpatVectorProxy. Or a memory or file-based SpatRaster.
#'   When `x` has multiple layers/bands, the first layer is used by default; use
#'   the \code{layer} argument to select a specific layer/band.
#' @param dsn Data source path / file name
#' @param layer Data layer. For vectors, `layer` is interpreted as a layer
#'   name (character); for rasters, `layer` is interpreted as a band index or
#'   name (integer OR character)
#' @param tmpdir Directory to write temporary ESRI Shapefiles for vector input
#'   in memory or otherwise not already in shapefile. Default: `tempdir()`
#' @param pattern Character vector giving the initial part of the temporary file
#'   name
#' @param force Force write of vector data to file? Default: FALSE (only write
#'   if file does not exist and new file is needed)
#' @param verbose Print information about data source and contents?
#' @param ... Additional arguments passed to `terra::writeVector()` or
#'   `sf::st_write()`, or `terra::writeRaster` (for rasters).
#' @return An R object (SpatRaster, SpatVector, SpatVectorProxy, sf) with
#'   attributes `wbt_dsn` and `wbt_layer` set as needed to support reading and
#'   writing R objects from file by WhiteboxTools.
#' @keywords General
#' @export
wbt_source <- function(x,
                       dsn = NULL,
                       layer = NULL,
                       force = FALSE,
                       tmpdir = tempdir(),
                       pattern = "wbt",
                       verbose = wbt_verbose(),
                       ...) {

  if (length(layer) > 1) {
    stop("argument `layer` must have length 1 or 0 (NULL)", call. = FALSE)
  }

  .check_pkg_ns <- function(pkg) {
    if (!requireNamespace(pkg)) {
      stop("package `", pkg, "` is required to convert to `wbt()`-compatible data sources", call. = FALSE)
    }
  }

  .first_source <- function(x) {
    src <- terra::sources(x)
    if (length(src) > 0 && any(nzchar(src))) {
      if (length(src) > 1) {
        if (verbose) {
          message("object 'x' has multiple source files; using first non-empty source path")
        }
      }
      src <- src[which(nzchar(src))[1]]
    }
    src
  }

  if (is.character(x)) {
    if (file.exists(x)) {
      .check_pkg_ns("terra")

      # convert to shapefile if needed
      x2 <- try(terra::vect(x, layer = ifelse(is.null(layer), "", layer), proxy = TRUE), silent = TRUE)
      fp <- file.path(tmpdir, paste0(basename(x), "_", basename(tempfile(pattern = pattern))))
      if (!inherits(x2, 'try-error') && !grepl("\\.shp$", x, ignore.case = TRUE)) {
        fp <- paste0(fp, ".shp")

        if (terra::writeVector(terra::query(x2), fp)) {
          x <- fp
        } else {
          stop("Failed to convert `x` (", x, ") to Shapefile.")
        }
      } else if (inherits(x2, 'try-error')) {
        if (!grepl("\\.tiff?$", x, ignore.case = TRUE) || length(layer) > 0) {
          # try reading a raster file and writing to geotiff
          fp <- paste0(fp, ".tif")
          if (length(layer) > 0) {
            x2 <- terra::rast(x, lyrs = layer[1])
          } else {
            x2 <- terra::rast(x)
          }
          if (terra::writeRaster(x2, fp)) {
            x <- fp
          } else {
            stop("Failed to convert `x` (", x, ") to GeoTIFF")
          }
        }
        x <- terra::rast(x)
      }

      if (!inherits(x, 'SpatRaster')) {
        # a SpatVectorProxy allows us to get some basic info without loading the whole file
        x <- terra::vect(x, proxy = TRUE)
      }

      if (is.character(x) && !file.exists(x)) {
        stop("File (", x, ") does not exist")
      }

      if (!inherits(x, c("SpatRaster", "SpatVectorProxy"))) {
        stop("Unhandled input object type: ", paste(class(x), collapse = ", "))
      }

      attr(x, 'wbt_dsn') <-  .first_source(x)
      attr(x, 'wbt_layer') <- layer
      return(x)
    } else {
      stop("File (", x, ") does not exist")
    }
  }

  ext <- ".shp"
  if (inherits(x, c('SpatRaster', 'RasterLayer',
                    'RasterStack', 'RasterBrick'))) {
    .check_pkg_ns("terra")
    if (!inherits(x, 'SpatRaster')) {
      x <- terra::rast(x)
    }
    ext <- ".tif"

    if (is.null(dsn)) {
      dsn <- .first_source(x)
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
      bn <- paste0(pattern, "_", layer)
    } else {
      bn <- pattern
    }
    dsn <- tempfile(pattern = bn, tmpdir = tmpdir, fileext = ext)
    # }
  }

  if (!file.exists(dsn) || force) {

      # write to file/db
    if (inherits(x, c('SpatVector', 'SpatVectorProxy', 'SpatRaster'))) {
      .check_pkg_ns("terra")
      if (inherits(x, 'SpatVectorProxy')) {
        x <- terra::query(x)
      }
      if (inherits(x, 'SpatVector')) {
        terra::writeVector(x,
                           filename = dsn,
                           layer = layer,
                           overwrite = force,
                           ...)
      } else if (inherits(x, 'SpatRaster')) {
        if (!is.null(layer)) {
          x <- x[[layer[1]]]
        } else if (terra::nlyr(x) > 1) {
          x <- x[[1]]
        }
        terra::writeRaster(x, filename = dsn, overwrite = force, ...)
      }
    } else {
      .check_pkg_ns("sf")

      # convert less common types to core types
      if (inherits(x, 'sfc') || inherits(x, 'Spatial')) {
        x <- sf::st_as_sf(x)
      }

      if (inherits(x, 'sf')) {
        sf::st_write(
          x,
          dsn = dsn,
          layer = layer,
          quiet = !verbose,
          delete_dsn = force,
          ...
        )
      }
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
