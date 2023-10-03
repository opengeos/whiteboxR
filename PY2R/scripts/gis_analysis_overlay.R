#' @title Average overlay
#'
#' @description Calculates the average for each grid cell from a group of raster images.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "average_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Clip
#'
#' @description Extract all the features, or parts of features, that overlap with the features of the clip vector.
#'
#' @param input Input vector file.
#' @param clip Input clip polygon vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clip <- function(input, clip, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--clip=", wbt_file_path(clip)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "clip"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Clip raster to polygon
#'
#' @description Clips a raster to a vector polygon.
#'
#' @param input Input raster file.
#' @param polygons Input vector polygons file.
#' @param output Output raster file.
#' @param maintain_dimensions Maintain input raster dimensions?.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clip_raster_to_polygon <- function(input, polygons, output, maintain_dimensions=FALSE, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--polygons=", wbt_file_path(polygons)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (maintain_dimensions) {
    args <- paste(args, "--maintain_dimensions")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "clip_raster_to_polygon"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Count if
#'
#' @description Counts the number of occurrences of a specified value in a cell-stack of rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param value Search value (e.g. countif value = 5.0).
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_count_if <- function(inputs, output, value, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--value=", wbt_file_path(value)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "count_if"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Difference
#'
#' @description Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_difference <- function(input, overlay, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--overlay=", wbt_file_path(overlay)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "difference"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Erase
#'
#' @description Removes all the features, or parts of features, that overlap with the features of the erase vector polygon.
#'
#' @param input Input vector file.
#' @param erase Input erase polygon vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_erase <- function(input, erase, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--erase=", wbt_file_path(erase)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "erase"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Erase polygon from raster
#'
#' @description Erases (cuts out) a vector polygon from a raster.
#'
#' @param input Input raster file.
#' @param polygons Input vector polygons file.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_erase_polygon_from_raster <- function(input, polygons, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--polygons=", wbt_file_path(polygons)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "erase_polygon_from_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Highest position
#'
#' @description Identifies the stack position of the maximum value within a raster stack on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_highest_position <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "highest_position"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Intersect
#'
#' @description Identifies the parts of features in common between two input vector layers.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_intersect <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--overlay=", wbt_file_path(overlay)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "intersect"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Line intersections
#'
#' @description Identifies points where the features of two vector line layers intersect.
#'
#' @param input1 Input vector polyline file.
#' @param input2 Input vector polyline file.
#' @param output Output vector point file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_intersections <- function(input1, input2, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "line_intersections"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Lowest position
#'
#' @description Identifies the stack position of the minimum value within a raster stack on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lowest_position <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lowest_position"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Max absolute overlay
#'
#' @description Evaluates the maximum absolute value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_absolute_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_absolute_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Max overlay
#'
#' @description Evaluates the maximum value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Merge line segments
#'
#' @description Merges vector line segments into larger features.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_merge_line_segments <- function(input, output, snap=0.0, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "merge_line_segments"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Min absolute overlay
#'
#' @description Evaluates the minimum absolute value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_absolute_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min_absolute_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Min overlay
#'
#' @description Evaluates the minimum value for each grid cell from a stack of input rasters.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Multiply overlay
#'
#' @description Calculates the sum for each grid cell from a group of raster images.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiply_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiply_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Percent equal to
#'
#' @description Calculates the percentage of a raster stack that have cell values equal to an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_equal_to <- function(inputs, comparison, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--comparison=", wbt_file_path(comparison)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percent_equal_to"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Percent greater than
#'
#' @description Calculates the percentage of a raster stack that have cell values greater than an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_greater_than <- function(inputs, comparison, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--comparison=", wbt_file_path(comparison)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percent_greater_than"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Percent less than
#'
#' @description Calculates the percentage of a raster stack that have cell values less than an input on a cell-by-cell basis.
#'
#' @param inputs Input raster files.
#' @param comparison Input comparison raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_less_than <- function(inputs, comparison, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--comparison=", wbt_file_path(comparison)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percent_less_than"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Pick from list
#'
#' @description Outputs the value from a raster stack specified by a position raster.
#'
#' @param inputs Input raster files.
#' @param pos_input Input position raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_pick_from_list <- function(inputs, pos_input, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--pos_input=", wbt_file_path(pos_input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "pick_from_list"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygonize
#'
#' @description Creates a polygon layer from two or more intersecting line features contained in one or more input vector line files.
#'
#' @param inputs Input vector polyline file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygonize <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "polygonize"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Split with lines
#'
#' @description Splits the lines or polygons in one layer using the lines in another layer.
#'
#' @param input Input vector line or polygon file.
#' @param split Input vector polyline file.
#' @param output Output vector file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_with_lines <- function(input, split, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--split=", wbt_file_path(split)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "split_with_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Sum overlay
#'
#' @description Calculates the sum for each grid cell from a group of raster images.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sum_overlay <- function(inputs, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sum_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Symmetrical difference
#'
#' @description Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_symmetrical_difference <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--overlay=", wbt_file_path(overlay)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "symmetrical_difference"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Union
#'
#' @description Splits vector layers at their overlaps, creating a layer containing all the portions from both input and overlay layers.
#'
#' @param input Input vector file.
#' @param overlay Input overlay vector file.
#' @param output Output vector file.
#' @param snap Snap tolerance.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_union <- function(input, overlay, output, snap=0.0, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--overlay=", wbt_file_path(overlay)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(snap)) {
    args <- paste(args, paste0("--snap=", snap))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "union"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Update nodata cells
#'
#' @description Replaces the NoData values in an input raster with the corresponding values contained in a second update layer.
#'
#' @param input1 Input raster file 1.
#' @param input2 Input raster file 2; update layer.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_update_nodata_cells <- function(input1, input2, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "update_nodata_cells"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Weighted overlay
#'
#' @description Performs a weighted sum on multiple input rasters after converting each image to a common scale. The tool performs a multi-criteria evaluation (MCE).
#'
#' @param factors Input factor raster files.
#' @param weights Weight values, contained in quotes and separated by commas or semicolons. Must have the same number as factors.
#' @param cost Boolean array indicating which factors are cost factors, contained in quotes and separated by commas or semicolons. Must have the same number as factors.
#' @param constraints Input constraints raster files.
#' @param output Output raster file.
#' @param scale_max Suitability scale maximum value (common values are 1.0, 100.0, and 255.0).
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_weighted_overlay <- function(factors, weights, output, cost=NULL, constraints=NULL, scale_max=1.0, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--factors=", wbt_file_path(factors)))
  args <- paste(args, paste0("--weights=", wbt_file_path(weights)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(cost)) {
    args <- paste(args, paste0("--cost=", cost))
  }
  if (!is.null(constraints)) {
    args <- paste(args, paste0("--constraints=", constraints))
  }
  if (!is.null(scale_max)) {
    args <- paste(args, paste0("--scale_max=", scale_max))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "weighted_overlay"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Weighted sum
#'
#' @description Performs a weighted-sum overlay on multiple input raster images.
#'
#' @param inputs Input raster files.
#' @param weights Weight values, contained in quotes and separated by commas or semicolons.
#' @param output Output raster file.
#' @param wd Changes the working directory. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_wd()` for details.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_verbose()` for details.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: `NULL` will use the value in WhiteboxTools settings, see `wbt_compress_rasters()` for details.
#' @param command_only Return command that would be executed by `system()` rather than running tool. Default: `FALSE`.
#'
#' @keywords GISAnalysisOverlayTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_weighted_sum <- function(inputs, weights, output, wd=NULL, verbose_mode=NULL, compress_rasters=NULL, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--weights=", wbt_file_path(weights)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "weighted_sum"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


