#' Boundary shape complexity
#' Calculates the complexity of the boundaries of raster polygons.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_boundary_shape_complexity <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "boundary_shape_complexity"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Compactness ratio
#' Calculates the compactness ratio (A/P), a measure of shape complexity, for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_compactness_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "compactness_ratio"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Edge proportion
#' Calculate the proportion of cells in a raster polygon that are edge cells.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param output_text flag indicating whether a text report should also be output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_proportion <- function(input, output, output_text=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (output_text) {
    args <- paste(args, "--output_text")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "edge_proportion"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Elongation ratio
#' Calculates the elongation ratio for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elongation_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "elongation_ratio"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Find patch or class edge cells
#' Finds all cells located on the edge of patch or class features.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_patch_or_class_edge_cells <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "find_patch_or_class_edge_cells"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Hole proportion
#' Calculates the proportion of the total area of a polygon's holes relative to the area of the polygon's hull.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hole_proportion <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "hole_proportion"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Linearity index
#' Calculates the linearity index for vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_linearity_index <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "linearity_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Narrowness index
#' Calculates the narrowness of raster polygons.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_narrowness_index <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "narrowness_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Patch orientation
#' Calculates the orientation of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_patch_orientation <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "patch_orientation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Perimeter area ratio
#' Calculates the perimeter-area ratio of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_perimeter_area_ratio <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "perimeter_area_ratio"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Radius of gyration
#' Calculates the distance of cells from their polygon's centroid.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param text_output Optional text output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_radius_of_gyration <- function(input, output, text_output=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "radius_of_gyration"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Related circumscribing circle
#' Calculates the related circumscribing circle of vector polygons.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_related_circumscribing_circle <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "related_circumscribing_circle"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Shape complexity index
#' Calculates overall polygon shape complexity or irregularity.
#'
#' @param input Input vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shape_complexity_index <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "shape_complexity_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Shape complexity index raster
#' Calculates the complexity of raster polygons or classes.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords GISAnalysisPatchShapeTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shape_complexity_index_raster <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "shape_complexity_index_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


