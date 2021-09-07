#' Aggregate raster
#'
#' Aggregates a raster to a lower resolution.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param agg_factor Aggregation factor, in pixels.
#' @param type Statistic used to fill output pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_aggregate_raster <- function(input, output, agg_factor=2, type="mean", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(agg_factor)) {
    args <- paste(args, paste0("--agg_factor=", agg_factor))
  }
  if (!is.null(type)) {
    args <- paste(args, paste0("--type=", type))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "aggregate_raster"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Block maximum gridding
#'
#' Creates a raster grid based on a set of vector points and assigns grid values using a block maximum scheme.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_block_maximum_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "block_maximum_gridding"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Block minimum gridding
#'
#' Creates a raster grid based on a set of vector points and assigns grid values using a block minimum scheme.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_block_minimum_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "block_minimum_gridding"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Centroid
#'
#' Calculates the centroid, or average location, of raster polygon objects.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param text_output Optional text output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_centroid <- function(input, output, text_output=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (text_output) {
    args <- paste(args, "--text_output")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "centroid"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Centroid vector
#'
#' Identifies the centroid point of a vector polyline or polygon feature or a group of vector points.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_centroid_vector <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "centroid_vector"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Clump
#'
#' Groups cells that form discrete areas, assigning them unique identifiers.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param diag Flag indicating whether diagonal connections should be considered.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clump <- function(input, output, diag=TRUE, zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (diag) {
    args <- paste(args, "--diag")
  }
  if (zero_back) {
    args <- paste(args, "--zero_back")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "clump"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Construct vector tin
#'
#' Creates a vector triangular irregular network (TIN) for a set of vector points.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output vector polygon file.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_construct_vector_tin <- function(input, output, field=NULL, use_z=FALSE, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "construct_vector_tin"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Create hexagonal vector grid
#'
#' Creates a hexagonal vector grid.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_hexagonal_vector_grid <- function(input, output, width, orientation="horizontal", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--width=", width))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "create_hexagonal_vector_grid"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Create plane
#'
#' Creates a raster image based on the equation for a simple plane.
#'
#' @param base Input base raster file.
#' @param output Output raster file.
#' @param gradient Slope gradient in degrees (-85.0 to 85.0).
#' @param aspect Aspect (direction) in degrees clockwise from north (0.0-360.0).
#' @param constant Constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_plane <- function(base, output, gradient=15.0, aspect=90.0, constant=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(gradient)) {
    args <- paste(args, paste0("--gradient=", gradient))
  }
  if (!is.null(aspect)) {
    args <- paste(args, paste0("--aspect=", aspect))
  }
  if (!is.null(constant)) {
    args <- paste(args, paste0("--constant=", constant))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "create_plane"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Create rectangular vector grid
#'
#' Creates a rectangular vector grid.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param height The grid cell height.
#' @param xorig The grid origin x-coordinate.
#' @param yorig The grid origin y-coordinate.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_rectangular_vector_grid <- function(input, output, width, height, xorig=0, yorig=0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--width=", width))
  args <- paste(args, paste0("--height=", height))
  if (!is.null(xorig)) {
    args <- paste(args, paste0("--xorig=", xorig))
  }
  if (!is.null(yorig)) {
    args <- paste(args, paste0("--yorig=", yorig))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "create_rectangular_vector_grid"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Dissolve
#'
#' Removes the interior, or shared, boundaries within a vector polygon coverage.
#'
#' @param input Input vector file.
#' @param field Dissolve field attribute (optional).
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_dissolve <- function(input, output, field=NULL, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "dissolve"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Eliminate coincident points
#'
#' Removes any coincident, or nearly coincident, points from a vector points file.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param tolerance The distance tolerance for points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_eliminate_coincident_points <- function(input, output, tolerance, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--tolerance=", tolerance))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "eliminate_coincident_points"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extend vector lines
#'
#' Extends vector lines by a specified distance.
#'
#' @param input Input vector polyline file.
#' @param output Output vector polyline file.
#' @param dist The distance to extend.
#' @param extend Extend direction, 'both ends' (default), 'line start', 'line end'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extend_vector_lines <- function(input, output, dist, extend="both ends", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--dist=", dist))
  if (!is.null(extend)) {
    args <- paste(args, paste0("--extend=", extend))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "extend_vector_lines"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extract nodes
#'
#' Converts vector lines or polygons into vertex points.
#'
#' @param input Input vector lines or polygon file.
#' @param output Output vector points file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_nodes <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "extract_nodes"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extract raster values at points
#'
#' Extracts the values of raster(s) at vector point locations.
#'
#' @param inputs Input raster files.
#' @param points Input vector points file.
#' @param out_text Output point values as text? Otherwise, the only output is to to the points file's attribute table.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_raster_values_at_points <- function(inputs, points, out_text=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--points=", points))
  if (out_text) {
    args <- paste(args, "--out_text")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "extract_raster_values_at_points"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Filter raster features by area
#'
#' Removes small-area features from a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param threshold Remove features with fewer grid cells than this threshold value.
#' @param background Background value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_filter_raster_features_by_area <- function(input, output, threshold, background="zero", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--threshold=", threshold))
  if (!is.null(background)) {
    args <- paste(args, paste0("--background=", background))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "filter_raster_features_by_area"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find lowest or highest points
#'
#' Locates the lowest and/or highest valued cells in a raster.
#'
#' @param input Input raster file.
#' @param output Output vector points file.
#' @param out_type Output type; one of 'area' (default) and 'volume'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_lowest_or_highest_points <- function(input, output, out_type="lowest", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "find_lowest_or_highest_points"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Idw interpolation
#'
#' Interpolates vector points into a raster surface using an inverse-distance weighted scheme.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param weight IDW weight value.
#' @param radius Search Radius in map units.
#' @param min_points Minimum number of points.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_idw_interpolation <- function(input, field, output, use_z=FALSE, weight=2.0, radius=NULL, min_points=NULL, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_points)) {
    args <- paste(args, paste0("--min_points=", min_points))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "idw_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Layer footprint
#'
#' Creates a vector polygon footprint of the area covered by a raster grid or vector layer.
#'
#' @param input Input raster or vector file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_layer_footprint <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "layer_footprint"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Medoid
#'
#' Calculates the medoid for a series of vector features contained in a shapefile.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_medoid <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "medoid"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Minimum bounding box
#'
#' Creates a vector minimum bounding rectangle around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param criterion Minimization criterion; options include 'area' (default), 'length', 'width', and 'perimeter'.
#' @param features Find the minimum bounding rectangles around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_box <- function(input, output, criterion="area", features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(criterion)) {
    args <- paste(args, paste0("--criterion=", criterion))
  }
  if (features) {
    args <- paste(args, "--features")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "minimum_bounding_box"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Minimum bounding circle
#'
#' Delineates the minimum bounding circle (i.e. smallest enclosing circle) for a group of vectors.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the minimum bounding circle around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_circle <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "minimum_bounding_circle"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Minimum bounding envelope
#'
#' Creates a vector axis-aligned minimum bounding rectangle (envelope) around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the minimum bounding envelop around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_envelope <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "minimum_bounding_envelope"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Minimum convex hull
#'
#' Creates a vector convex polygon around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the hulls around each vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_convex_hull <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "minimum_convex_hull"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Natural neighbour interpolation
#'
#' Creates a raster grid based on Sibson's natural neighbour method.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param clip Clip the data to the convex hull of the points?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_natural_neighbour_interpolation <- function(input, output, field=NULL, use_z=FALSE, cell_size=NULL, base=NULL, clip=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "natural_neighbour_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Nearest neighbour gridding
#'
#' Creates a raster grid based on a set of vector points and assigns grid values using the nearest neighbour.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param max_dist Maximum search distance (optional).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_nearest_neighbour_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, max_dist=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "nearest_neighbour_gridding"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygon area
#'
#' Calculates the area of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_area <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "polygon_area"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygon long axis
#'
#' This tool can be used to map the long axis of polygon features.
#'
#' @param input Input vector polygons file.
#' @param output Output vector polyline file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_long_axis <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "polygon_long_axis"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygon perimeter
#'
#' Calculates the perimeter of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_perimeter <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "polygon_perimeter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygon short axis
#'
#' This tool can be used to map the short axis of polygon features.
#'
#' @param input Input vector polygons file.
#' @param output Output vector polyline file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_short_axis <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "polygon_short_axis"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Radial basis function interpolation
#'
#' Interpolates vector points into a raster surface using a radial basis function scheme.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param radius Search Radius (in map units).
#' @param min_points Minimum number of points.
#' @param func_type Radial basis function type; options are 'ThinPlateSpline' (default), 'PolyHarmonic', 'Gaussian', 'MultiQuadric', 'InverseMultiQuadric'.
#' @param poly_order Polynomial order; options are 'none' (default), 'constant', 'affine'.
#' @param weight Weight parameter used in basis function.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_radial_basis_function_interpolation <- function(input, field, output, use_z=FALSE, radius=NULL, min_points=NULL, func_type="ThinPlateSpline", poly_order="none", weight=0.1, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_points)) {
    args <- paste(args, paste0("--min_points=", min_points))
  }
  if (!is.null(func_type)) {
    args <- paste(args, paste0("--func_type=", func_type))
  }
  if (!is.null(poly_order)) {
    args <- paste(args, paste0("--poly_order=", poly_order))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "radial_basis_function_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster area
#'
#' Calculates the area of polygons or classes within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param out_text Would you like to output polygon areas to text?.
#' @param units Area units; options include 'grid cells' and 'map units'.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_area <- function(input, output=NULL, out_text=FALSE, units="grid cells", zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (out_text) {
    args <- paste(args, "--out_text")
  }
  if (!is.null(units)) {
    args <- paste(args, paste0("--units=", units))
  }
  if (zero_back) {
    args <- paste(args, "--zero_back")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "raster_area"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster cell assignment
#'
#' Assign row or column number to cells.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param assign Which variable would you like to assign to grid cells? Options include 'column', 'row', 'x', and 'y'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_cell_assignment <- function(input, output, assign="column", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(assign)) {
    args <- paste(args, paste0("--assign=", assign))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "raster_cell_assignment"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster perimeter
#'
#' Calculates the perimeters of polygons or classes within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param out_text Would you like to output polygon areas to text?.
#' @param units Area units; options include 'grid cells' and 'map units'.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_perimeter <- function(input, output=NULL, out_text=FALSE, units="grid cells", zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (out_text) {
    args <- paste(args, "--out_text")
  }
  if (!is.null(units)) {
    args <- paste(args, paste0("--units=", units))
  }
  if (zero_back) {
    args <- paste(args, "--zero_back")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "raster_perimeter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Reclass
#'
#' Reclassifies the values in a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param reclass_vals Reclassification triplet values (new value; from value; to less than), e.g. '0.0;0.0;1.0;1.0;1.0;2.0'.
#' @param assign_mode Optional Boolean flag indicating whether to operate in assign mode, reclass_vals values are interpreted as new value; old value pairs.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass <- function(input, output, reclass_vals, assign_mode=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--reclass_vals=", reclass_vals))
  if (assign_mode) {
    args <- paste(args, "--assign_mode")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "reclass"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Reclass equal interval
#'
#' Reclassifies the values in a raster image based on equal-ranges.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param interval Class interval size.
#' @param start_val Optional starting value (default is input minimum value).
#' @param end_val Optional ending value (default is input maximum value).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass_equal_interval <- function(input, output, interval=10.0, start_val=NULL, end_val=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(start_val)) {
    args <- paste(args, paste0("--start_val=", start_val))
  }
  if (!is.null(end_val)) {
    args <- paste(args, paste0("--end_val=", end_val))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "reclass_equal_interval"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Reclass from file
#'
#' Reclassifies the values in a raster image using reclass ranges in a text file.
#'
#' @param input Input raster file.
#' @param reclass_file Input text file containing reclass ranges.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass_from_file <- function(input, reclass_file, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--reclass_file=", reclass_file))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "reclass_from_file"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Smooth vectors
#'
#' Smooths a vector coverage of either a POLYLINE or POLYGON base ShapeType.
#'
#' @param input Input vector POLYLINE or POLYGON file.
#' @param output Output vector file.
#' @param filter The filter size, any odd integer greater than or equal to 3; default is 3.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_smooth_vectors <- function(input, output, filter=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "smooth_vectors"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Split vector lines
#'
#' This tool can be used to approximate the harvester pass lines from yield points.
#'
#' @param input Name of the input lines shapefile.
#' @param output Name of the output lines shapefile.
#' @param length Maximum segment length (m).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_vector_lines <- function(input, output, length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(length)) {
    args <- paste(args, paste0("--length=", length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "split_vector_lines"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tin gridding
#'
#' Creates a raster grid based on a triangular irregular network (TIN) fitted to vector points.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output raster file.
#' @param resolution Output raster's grid resolution.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tin_gridding <- function(input, output, field=NULL, use_z=FALSE, resolution=NULL, base=NULL, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "tin_gridding"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Vector hex binning
#'
#' Hex-bins a set of vector points.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vector_hex_binning <- function(input, output, width, orientation="horizontal", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--width=", width))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "vector_hex_binning"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Voronoi diagram
#'
#' Creates a vector Voronoi diagram for a set of vector points.
#'
#' @param input Input vector points file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_voronoi_diagram <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "voronoi_diagram"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Buffer raster
#'
#' Maps a distance-based buffer around each non-background (non-zero/non-nodata) grid cell in an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param size Buffer size.
#' @param gridcells Optional flag to indicate that the 'size' threshold should be measured in grid cells instead of the default map units.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_buffer_raster <- function(input, output, size, gridcells=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--size=", size))
  if (gridcells) {
    args <- paste(args, "--gridcells")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "buffer_raster"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cost allocation
#'
#' Identifies the source cell to which each grid cell is connected by a least-cost pathway in a cost-distance analysis.
#'
#' @param source Input source raster file.
#' @param backlink Input backlink raster file generated by the cost-distance tool.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cost_allocation <- function(source, backlink, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--source=", source))
  args <- paste(args, paste0("--backlink=", backlink))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "cost_allocation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cost distance
#'
#' Performs cost-distance accumulation on a cost surface and a group of source cells.
#'
#' @param source Input source raster file.
#' @param cost Input cost (friction) raster file.
#' @param out_accum Output cost accumulation raster file.
#' @param out_backlink Output backlink raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cost_distance <- function(source, cost, out_accum, out_backlink, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--source=", source))
  args <- paste(args, paste0("--cost=", cost))
  args <- paste(args, paste0("--out_accum=", out_accum))
  args <- paste(args, paste0("--out_backlink=", out_backlink))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "cost_distance"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cost pathway
#'
#' Performs cost-distance pathway analysis using a series of destination grid cells.
#'
#' @param destination Input destination raster file.
#' @param backlink Input backlink raster file generated by the cost-distance tool.
#' @param output Output cost pathway raster file.
#' @param zero_background Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cost_pathway <- function(destination, backlink, output, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--destination=", destination))
  args <- paste(args, paste0("--backlink=", backlink))
  args <- paste(args, paste0("--output=", output))
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "cost_pathway"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Euclidean allocation
#'
#' Assigns grid cells in the output raster the value of the nearest target cell in the input image, measured by the Shih and Wu (2004) Euclidean distance transform.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_euclidean_allocation <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "euclidean_allocation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Euclidean distance
#'
#' Calculates the Shih and Wu (2004) Euclidean distance transform.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_euclidean_distance <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "euclidean_distance"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Average overlay
#'
#' Calculates the average for each grid cell from a group of raster images.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "average_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Clip
#'
#' Extract all the features, or parts of features, that overlap with the features of the clip vector.
#'
#' @param input Input vector file.
#' @param clip Input clip polygon vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clip <- function(input, clip, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--clip=", clip))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "clip"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Clip raster to polygon
#'
#' Clips a raster to a vector polygon.
#'
#' @param input Input raster file.
#' @param polygons Input vector polygons file.
#' @param output Output raster file.
#' @param maintain_dimensions Maintain input raster dimensions?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clip_raster_to_polygon <- function(input, polygons, output, maintain_dimensions=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--polygons=", polygons))
  args <- paste(args, paste0("--output=", output))
  if (maintain_dimensions) {
    args <- paste(args, "--maintain_dimensions")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "clip_raster_to_polygon"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Count if
#'
#' Counts the number of occurrences of a specified value in a cell-stack of rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param value Search value (e.g. countif value = 5.0).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_count_if <- function(inputs, output, value, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--value=", value))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "count_if"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Difference
#'
#' Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_difference <- function(input, overlay, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--overlay=", overlay))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "difference"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Erase
#'
#' Removes all the features, or parts of features, that overlap with the features of the erase vector polygon.
#'
#' @param input Input vector file.
#' @param erase Input erase polygon vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_erase <- function(input, erase, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--erase=", erase))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "erase"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Erase polygon from raster
#'
#' Erases (cuts out) a vector polygon from a raster.
#'
#' @param input Input raster file.
#' @param polygons Input vector polygons file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_erase_polygon_from_raster <- function(input, polygons, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--polygons=", polygons))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "erase_polygon_from_raster"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Highest position
#'
#' Identifies the stack position of the maximum value within a raster stack on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_highest_position <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "highest_position"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Intersect
#'
#' Identifies the parts of features in common between two input vector layers.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_intersect <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--overlay=", overlay))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "intersect"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Line intersections
#'
#' Identifies points where the features of two vector line layers intersect.
#'
#' @param input1 Input vector polyline file.
#' @param input2 Input vector polyline file.
#' @param output Output vector point file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_intersections <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "line_intersections"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lowest position
#'
#' Identifies the stack position of the minimum value within a raster stack on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lowest_position <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "lowest_position"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max absolute overlay
#'
#' Evaluates the maximum absolute value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_absolute_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "max_absolute_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max overlay
#'
#' Evaluates the maximum value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "max_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Merge line segments
#'
#' Merges vector line segments into larger features.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_merge_line_segments <- function(input, output, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "merge_line_segments"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min absolute overlay
#'
#' Evaluates the minimum absolute value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_absolute_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "min_absolute_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min overlay
#'
#' Evaluates the minimum value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "min_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Percent equal to
#'
#' Calculates the percentage of a raster stack that have cell values equal to an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_equal_to <- function(inputs, comparison, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--comparison=", comparison))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "percent_equal_to"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Percent greater than
#'
#' Calculates the percentage of a raster stack that have cell values greater than an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_greater_than <- function(inputs, comparison, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--comparison=", comparison))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "percent_greater_than"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Percent less than
#'
#' Calculates the percentage of a raster stack that have cell values less than an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_less_than <- function(inputs, comparison, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--comparison=", comparison))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "percent_less_than"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Pick from list
#'
#' Outputs the value from a raster stack specified by a position raster.
#'
#' @param inputs Input raster files.
#' @param pos_input Input position raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_pick_from_list <- function(inputs, pos_input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--pos_input=", pos_input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "pick_from_list"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygonize
#'
#' Creates a polygon layer from two or more intersecting line features contained in one or more input vector line files.
#'
#' @param inputs Input vector polyline file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygonize <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "polygonize"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Split with lines
#'
#' Splits the lines or polygons in one layer using the lines in another layer.
#'
#' @param input Input vector line or polygon file.
#' @param split Input vector polyline file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_with_lines <- function(input, split, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--split=", split))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "split_with_lines"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sum overlay
#'
#' Calculates the sum for each grid cell from a group of raster images.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sum_overlay <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "sum_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Symmetrical difference
#'
#' Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_symmetrical_difference <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--overlay=", overlay))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "symmetrical_difference"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Union
#'
#' Splits vector layers at their overlaps, creating a layer containing all the portions from both input and overlay layers.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_union <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--overlay=", overlay))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "union"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Update nodata cells
#'
#' Replaces the NoData values in an input raster with the corresponding values contained in a second update layer.
#'
#' @param input1 Input raster file 1.
#' @param input2 Input raster file 2; update layer.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_update_nodata_cells <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "update_nodata_cells"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Weighted overlay
#'
#' Performs a weighted sum on multiple input rasters after converting each image to a common scale. The tool performs a multi-criteria evaluation (MCE).
#'
#' @param factors Input factor raster files.
#' @param weights Weight values, contained in quotes and separated by commas or semicolons. Must have the same number as factors.
#' @param cost Weight values, contained in quotes and separated by commas or semicolons. Must have the same number as factors.
#' @param constraints Input constraints raster files.
#' @param output Output raster file.
#' @param scale_max Suitability scale maximum value (common values are 1.0, 100.0, and 255.0).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_weighted_overlay <- function(factors, weights, output, cost=NULL, constraints=NULL, scale_max=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--factors=", factors))
  args <- paste(args, paste0("--weights=", weights))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(cost)) {
    args <- paste(args, paste0("--cost=", cost))
  }
  if (!is.null(constraints)) {
    args <- paste(args, paste0("--constraints=", constraints))
  }
  if (!is.null(scale_max)) {
    args <- paste(args, paste0("--scale_max=", scale_max))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "weighted_overlay"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Weighted sum
#'
#' Performs a weighted-sum overlay on multiple input raster images.
#'
#' @param inputs Input raster files.
#' @param weights Weight values, contained in quotes and separated by commas or semicolons.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_weighted_sum <- function(inputs, weights, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--weights=", weights))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "weighted_sum"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Boundary shape complexity
#'
#' Calculates the complexity of the boundaries of raster polygons.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_boundary_shape_complexity <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "boundary_shape_complexity"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Compactness ratio
#'
#' Calculates the compactness ratio (A/P), a measure of shape complexity, for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_compactness_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "compactness_ratio"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Edge proportion
#'
#' Calculate the proportion of cells in a raster polygon that are edge cells.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param output_text flag indicating whether a text report should also be output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_proportion <- function(input, output, output_text=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (output_text) {
    args <- paste(args, "--output_text")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "edge_proportion"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elongation ratio
#'
#' Calculates the elongation ratio for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elongation_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "elongation_ratio"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find patch or class edge cells
#'
#' Finds all cells located on the edge of patch or class features.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_patch_or_class_edge_cells <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "find_patch_or_class_edge_cells"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Hole proportion
#'
#' Calculates the proportion of the total area of a polygon's holes relative to the area of the polygon's hull.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hole_proportion <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "hole_proportion"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Linearity index
#'
#' Calculates the linearity index for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_linearity_index <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "linearity_index"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Narrowness index
#'
#' Calculates the narrowness of raster polygons.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_narrowness_index <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "narrowness_index"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Patch orientation
#'
#' Calculates the orientation of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_patch_orientation <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "patch_orientation"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Perimeter area ratio
#'
#' Calculates the perimeter-area ratio of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_perimeter_area_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "perimeter_area_ratio"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Radius of gyration
#'
#' Calculates the distance of cells from their polygon's centroid.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param text_output Optional text output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_radius_of_gyration <- function(input, output, text_output=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (text_output) {
    args <- paste(args, "--text_output")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "radius_of_gyration"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Related circumscribing circle
#'
#' Calculates the related circumscribing circle of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_related_circumscribing_circle <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "related_circumscribing_circle"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Shape complexity index
#'
#' Calculates overall polygon shape complexity or irregularity.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shape_complexity_index <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "shape_complexity_index"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Shape complexity index raster
#'
#' Calculates the complexity of raster polygons or classes.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shape_complexity_index_raster <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "shape_complexity_index_raster"
  wbt_run_tool(tool_name, args, verbose_mode)
}


