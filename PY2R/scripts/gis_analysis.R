#' @title Aggregate raster
#'
#' @description Aggregates a raster to a lower resolution.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param agg_factor Aggregation factor, in pixels.
#' @param type Statistic used to fill output pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_aggregate_raster <- function(input, output, agg_factor=2, type="mean", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(agg_factor)) {
    args <- paste(args, paste0("--agg_factor=", agg_factor))
  }
  if (!is.null(type)) {
    args <- paste(args, paste0("--type=", type))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "aggregate_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Block maximum gridding
#'
#' @description Creates a raster grid based on a set of vector points and assigns grid values using a block maximum scheme.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_block_maximum_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "block_maximum_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Block minimum gridding
#'
#' @description Creates a raster grid based on a set of vector points and assigns grid values using a block minimum scheme.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_block_minimum_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "block_minimum_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Centroid
#'
#' @description Calculates the centroid, or average location, of raster polygon objects.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param text_output Optional text output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_centroid <- function(input, output, text_output=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (text_output) {
    args <- paste(args, "--text_output")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "centroid"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Centroid vector
#'
#' @description Identifies the centroid point of a vector polyline or polygon feature or a group of vector points.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_centroid_vector <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "centroid_vector"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Clump
#'
#' @description Groups cells that form discrete areas, assigning them unique identifiers.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param diag Flag indicating whether diagonal connections should be considered.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clump <- function(input, output, diag=TRUE, zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (diag) {
    args <- paste(args, "--diag")
  }
  if (zero_back) {
    args <- paste(args, "--zero_back")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "clump"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Construct vector tin
#'
#' @description Creates a vector triangular irregular network (TIN) for a set of vector points.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output vector polygon file.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_construct_vector_tin <- function(input, output, field=NULL, use_z=FALSE, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "construct_vector_tin"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Create hexagonal vector grid
#'
#' @description Creates a hexagonal vector grid.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_hexagonal_vector_grid <- function(input, output, width, orientation="horizontal", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--width=", wbt_file_path(width)))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "create_hexagonal_vector_grid"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Create plane
#'
#' @description Creates a raster image based on the equation for a simple plane.
#'
#' @param base Input base raster file.
#' @param output Output raster file.
#' @param gradient Slope gradient in degrees (-85.0 to 85.0).
#' @param aspect Aspect (direction) in degrees clockwise from north (0.0-360.0).
#' @param constant Constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_plane <- function(base, output, gradient=15.0, aspect=90.0, constant=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(gradient)) {
    args <- paste(args, paste0("--gradient=", gradient))
  }
  if (!is.null(aspect)) {
    args <- paste(args, paste0("--aspect=", aspect))
  }
  if (!is.null(constant)) {
    args <- paste(args, paste0("--constant=", constant))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "create_plane"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Create rectangular vector grid
#'
#' @description Creates a rectangular vector grid.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param height The grid cell height.
#' @param xorig The grid origin x-coordinate.
#' @param yorig The grid origin y-coordinate.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_rectangular_vector_grid <- function(input, output, width, height, xorig=0, yorig=0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--width=", wbt_file_path(width)))
  args <- paste(args, paste0("--height=", wbt_file_path(height)))
  if (!is.null(xorig)) {
    args <- paste(args, paste0("--xorig=", xorig))
  }
  if (!is.null(yorig)) {
    args <- paste(args, paste0("--yorig=", yorig))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "create_rectangular_vector_grid"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Dissolve
#'
#' @description Removes the interior, or shared, boundaries within a vector polygon coverage.
#'
#' @param input Input vector file.
#' @param field Dissolve field attribute (optional).
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_dissolve <- function(input, output, field=NULL, snap=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "dissolve"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Eliminate coincident points
#'
#' @description Removes any coincident, or nearly coincident, points from a vector points file.
#'
#' @param input Input vector file.
#' @param output Output vector points file.
#' @param tolerance The distance tolerance for points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_eliminate_coincident_points <- function(input, output, tolerance, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--tolerance=", wbt_file_path(tolerance)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "eliminate_coincident_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Extend vector lines
#'
#' @description Extends vector lines by a specified distance.
#'
#' @param input Input vector polyline file.
#' @param output Output vector polyline file.
#' @param dist The distance to extend.
#' @param extend Extend direction, 'both ends' (default), 'line start', 'line end'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extend_vector_lines <- function(input, output, dist, extend="both ends", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--dist=", wbt_file_path(dist)))
  if (!is.null(extend)) {
    args <- paste(args, paste0("--extend=", extend))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "extend_vector_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Extract nodes
#'
#' @description Converts vector lines or polygons into vertex points.
#'
#' @param input Input vector lines or polygon file.
#' @param output Output vector points file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_nodes <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "extract_nodes"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Extract raster values at points
#'
#' @description Extracts the values of raster(s) at vector point locations.
#'
#' @param inputs Input raster files.
#' @param points Input vector points file.
#' @param out_text Output point values as text? Otherwise, the only output is to to the points file's attribute table.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_raster_values_at_points <- function(inputs, points, out_text=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  if (out_text) {
    args <- paste(args, "--out_text")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "extract_raster_values_at_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Filter raster features by area
#'
#' @description Removes small-area features from a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param threshold Remove features with fewer grid cells than this threshold value.
#' @param background Background value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_filter_raster_features_by_area <- function(input, output, threshold, background="zero", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--threshold=", wbt_file_path(threshold)))
  if (!is.null(background)) {
    args <- paste(args, paste0("--background=", background))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "filter_raster_features_by_area"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Find lowest or highest points
#'
#' @description Locates the lowest and/or highest valued cells in a raster.
#'
#' @param input Input raster file.
#' @param output Output vector points file.
#' @param out_type Output type; one of 'area' (default) and 'volume'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_lowest_or_highest_points <- function(input, output, out_type="lowest", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "find_lowest_or_highest_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Heat map
#'
#' @description Calculates a heat map, or kernel density estimation (KDE), for an input point set.
#'
#' @param input Name of the input points shapefile.
#' @param weight_field Optional name of the attribute containing point weight.
#' @param output Name of the output raster image file.
#' @param bandwidth Bandwidth (metres).
#' @param kernel Kernel type; one of 'uniform', 'triangular', 'epanechnikov', 'quartic', 'triweight', 'tricube', 'gaussian', 'cosine', 'logistic', 'sigmoid', 'silverman'.
#' @param cell_size Optionally specified cell size of output raster, in metres. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_heat_map <- function(input, output, weight_field=NULL, bandwidth="", kernel="quartic", cell_size="", base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(weight_field)) {
    args <- paste(args, paste0("--weight_field=", weight_field))
  }
  if (!is.null(bandwidth)) {
    args <- paste(args, paste0("--bandwidth=", bandwidth))
  }
  if (!is.null(kernel)) {
    args <- paste(args, paste0("--kernel=", kernel))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "heat_map"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Idw interpolation
#'
#' @description Interpolates vector points into a raster surface using an inverse-distance weighted scheme.
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_idw_interpolation <- function(input, field, output, use_z=FALSE, weight=2.0, radius=NULL, min_points=NULL, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "idw_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Layer footprint
#'
#' @description Creates a vector polygon footprint of the area covered by a raster grid or vector layer.
#'
#' @param input Input raster or vector file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_layer_footprint <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "layer_footprint"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Medoid
#'
#' @description Calculates the medoid for a series of vector features contained in a shapefile.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_medoid <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "medoid"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Minimum bounding box
#'
#' @description Creates a vector minimum bounding rectangle around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param criterion Minimization criterion; options include 'area' (default), 'length', 'width', and 'perimeter'.
#' @param features Find the minimum bounding rectangles around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_box <- function(input, output, criterion="area", features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(criterion)) {
    args <- paste(args, paste0("--criterion=", criterion))
  }
  if (features) {
    args <- paste(args, "--features")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimum_bounding_box"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Minimum bounding circle
#'
#' @description Delineates the minimum bounding circle (i.e. smallest enclosing circle) for a group of vectors.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the minimum bounding circle around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_circle <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimum_bounding_circle"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Minimum bounding envelope
#'
#' @description Creates a vector axis-aligned minimum bounding rectangle (envelope) around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the minimum bounding envelop around each individual vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_bounding_envelope <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimum_bounding_envelope"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Minimum convex hull
#'
#' @description Creates a vector convex polygon around vector features.
#'
#' @param input Input vector file.
#' @param output Output vector polygon file.
#' @param features Find the hulls around each vector feature.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_convex_hull <- function(input, output, features=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (features) {
    args <- paste(args, "--features")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimum_convex_hull"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Natural neighbour interpolation
#'
#' @description Creates a raster grid based on Sibson's natural neighbour method.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param clip Clip the data to the convex hull of the points?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_natural_neighbour_interpolation <- function(input, output, field=NULL, use_z=FALSE, cell_size=NULL, base=NULL, clip=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "natural_neighbour_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Nearest neighbour gridding
#'
#' @description Creates a raster grid based on a set of vector points and assigns grid values using the nearest neighbour.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param use_z Use z-coordinate instead of field?.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param max_dist Maximum search distance (optional).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_nearest_neighbour_gridding <- function(input, field, output, use_z=FALSE, cell_size=NULL, base=NULL, max_dist=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "nearest_neighbour_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygon area
#'
#' @description Calculates the area of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_area <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "polygon_area"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygon long axis
#'
#' @description Used to map the long axis of polygon features.
#'
#' @param input Input vector polygons file.
#' @param output Output vector polyline file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_long_axis <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "polygon_long_axis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygon perimeter
#'
#' @description Calculates the perimeter of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_perimeter <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "polygon_perimeter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygon short axis
#'
#' @description Used to map the short axis of polygon features.
#'
#' @param input Input vector polygons file.
#' @param output Output vector polyline file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygon_short_axis <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "polygon_short_axis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Radial basis function interpolation
#'
#' @description Interpolates vector points into a raster surface using a radial basis function scheme.
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_radial_basis_function_interpolation <- function(input, field, output, use_z=FALSE, radius=NULL, min_points=NULL, func_type="ThinPlateSpline", poly_order="none", weight=0.1, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "radial_basis_function_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster area
#'
#' @description Calculates the area of polygons or classes within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param out_text Would you like to output polygon areas to text?.
#' @param units Area units; options include 'grid cells' and 'map units'.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_area <- function(input, output=NULL, out_text=FALSE, units="grid cells", zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_area"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster cell assignment
#'
#' @description Assign row or column number to cells.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param assign Which variable would you like to assign to grid cells? Options include 'column', 'row', 'x', and 'y'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_cell_assignment <- function(input, output, assign="column", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(assign)) {
    args <- paste(args, paste0("--assign=", assign))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_cell_assignment"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster perimeter
#'
#' @description Calculates the perimeters of polygons or classes within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param out_text Would you like to output polygon areas to text?.
#' @param units Area units; options include 'grid cells' and 'map units'.
#' @param zero_back Flag indicating whether zero values should be treated as a background.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_perimeter <- function(input, output=NULL, out_text=FALSE, units="grid cells", zero_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_perimeter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Reclass
#'
#' @description Reclassifies the values in a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param reclass_vals Reclassification triplet values (new value; from value; to less than), e.g. '0.0;0.0;1.0;1.0;1.0;2.0'.
#' @param assign_mode Optional Boolean flag indicating whether to operate in assign mode, reclass_vals values are interpreted as new value; old value pairs.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass <- function(input, output, reclass_vals, assign_mode=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--reclass_vals=", wbt_file_path(reclass_vals)))
  if (assign_mode) {
    args <- paste(args, "--assign_mode")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reclass"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Reclass equal interval
#'
#' @description Reclassifies the values in a raster image based on equal-ranges.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param interval Class interval size.
#' @param start_val Optional starting value (default is input minimum value).
#' @param end_val Optional ending value (default is input maximum value).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass_equal_interval <- function(input, output, interval=10.0, start_val=NULL, end_val=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(start_val)) {
    args <- paste(args, paste0("--start_val=", start_val))
  }
  if (!is.null(end_val)) {
    args <- paste(args, paste0("--end_val=", end_val))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reclass_equal_interval"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Reclass from file
#'
#' @description Reclassifies the values in a raster image using reclass ranges in a text file.
#'
#' @param input Input raster file.
#' @param reclass_file Input text file containing reclass ranges.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reclass_from_file <- function(input, reclass_file, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--reclass_file=", wbt_file_path(reclass_file)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reclass_from_file"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Smooth vectors
#'
#' @description Smooths a vector coverage of either a POLYLINE or POLYGON base ShapeType.
#'
#' @param input Input vector POLYLINE or POLYGON file.
#' @param output Output vector file.
#' @param filter The filter size, any odd integer greater than or equal to 3; default is 3.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_smooth_vectors <- function(input, output, filter=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "smooth_vectors"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Split vector lines
#'
#' @description Used to split a vector line coverage into even-lengthed segments.
#'
#' @param input Name of the input lines shapefile.
#' @param output Name of the output lines shapefile.
#' @param length Maximum segment length (m).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_vector_lines <- function(input, output, length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(length)) {
    args <- paste(args, paste0("--length=", length))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "split_vector_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Tin gridding
#'
#' @description Creates a raster grid based on a triangular irregular network (TIN) fitted to vector points.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output raster file.
#' @param resolution Output raster's grid resolution.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tin_gridding <- function(input, output, field=NULL, use_z=FALSE, resolution=NULL, base=NULL, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (use_z) {
    args <- paste(args, "--use_z")
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "tin_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Travelling salesman problem
#'
#' @description Finds approximate solutions to travelling salesman problems, the goal of which is to identify the shortest route connecting a set of locations.
#'
#' @param input Name of the input points shapefile.
#' @param output Name of the output lines shapefile.
#' @param duration Maximum duration, in seconds.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_travelling_salesman_problem <- function(input, output, duration=60, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(duration)) {
    args <- paste(args, paste0("--duration=", duration))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "travelling_salesman_problem"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Vector hex binning
#'
#' @description Hex-bins a set of vector points.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vector_hex_binning <- function(input, output, width, orientation="horizontal", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--width=", wbt_file_path(width)))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "vector_hex_binning"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Voronoi diagram
#'
#' @description Creates a vector Voronoi diagram for a set of vector points.
#'
#' @param input Input vector points file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysis
#'
#' @return Returns the tool text outputs.
#' @export
wbt_voronoi_diagram <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "voronoi_diagram"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


