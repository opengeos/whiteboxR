#' @title Evaluate training sites
#'
#' @description This tool can be used to inspect the overlap in spectral signatures of training sites for various classes.
#'
#' @param inputs Name of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output report file (*.html).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_evaluate_training_sites <- function(inputs, polys, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--polys=", wbt_file_path(polys)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "evaluate_training_sites"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Generalize classified raster
#'
#' @description Generalizes a raster containing class or object features by removing small features.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output raster file.
#' @param min_size Minimum feature size, in grid cells.
#' @param method Grouping method; one of 'longest' (default), 'largest', and 'nearest'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_generalize_classified_raster <- function(input, output, min_size=4, method="longest", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(min_size)) {
    args <- paste(args, paste0("--min_size=", min_size))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "generalize_classified_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Generalize with similarity
#'
#' @description Generalizes a raster containing class or object features by removing small features using similarity criteria of neighbouring features.
#'
#' @param input Name of the input raster image file.
#' @param similarity Names of the input similarity images.
#' @param output Name of the output raster file.
#' @param min_size Minimum feature size, in grid cells.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_generalize_with_similarity <- function(input, similarity, output, min_size=4, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--similarity=", wbt_file_path(similarity)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(min_size)) {
    args <- paste(args, paste0("--min_size=", min_size))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "generalize_with_similarity"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Image segmentation
#'
#' @description Performs a region-growing based segmentation on a set of multi-spectral images.
#'
#' @param inputs Names of the input band images.
#' @param output Name of the output raster file.
#' @param threshold Distance threshold, in z-scores.
#' @param steps Number of steps.
#' @param min_area Minimum object area, in grid cells (1-8).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_segmentation <- function(inputs, output, threshold=0.5, steps=10, min_area=4, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(steps)) {
    args <- paste(args, paste0("--steps=", steps))
  }
  if (!is.null(min_area)) {
    args <- paste(args, paste0("--min_area=", min_area))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_segmentation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Min dist classification
#'
#' @description Performs a supervised minimum-distance classification using training site polygons and multi-spectral images.
#'
#' @param inputs Names of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output raster file.
#' @param threshold Distance threshold, in z-scores; blank for none.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_dist_classification <- function(inputs, polys, field, output, threshold=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--polys=", wbt_file_path(polys)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min_dist_classification"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Parallelepiped classification
#'
#' @description Performs a supervised parallelepiped classification using training site polygons and multi-spectral images.
#'
#' @param inputs Name of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsClassification
#'
#' @return Returns the tool text outputs.
#' @export
wbt_parallelepiped_classification <- function(inputs, polys, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--polys=", wbt_file_path(polys)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "parallelepiped_classification"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


