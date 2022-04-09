#' Reconcile multiple headers
#'
#' This tool adjusts the crop yield values for data sets collected with multiple headers or combines.
#'
#' @param input Name of the input points shapefile.
#' @param region_field Name of the attribute containing region data.
#' @param yield_field Name of the attribute containing yield data.
#' @param output Name of the output points shapefile.
#' @param radius Optional search radius, in metres. Only specify this value if you want to calculate locally normalized yield.
#' @param min_yield Minimum yield value in output.
#' @param max_yield Maximum yield value in output.
#' @param mean_tonnage Use this optional parameter to force the output to have a certain overall average tonnage.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reconcile_multiple_headers <- function(input, region_field, yield_field, output, radius=NULL, min_yield=NULL, max_yield=NULL, mean_tonnage=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--region_field=", wbt_file_path(region_field)))
  args <- paste(args, paste0("--yield_field=", wbt_file_path(yield_field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_yield)) {
    args <- paste(args, paste0("--min_yield=", min_yield))
  }
  if (!is.null(max_yield)) {
    args <- paste(args, paste0("--max_yield=", max_yield))
  }
  if (!is.null(mean_tonnage)) {
    args <- paste(args, paste0("--mean_tonnage=", mean_tonnage))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reconcile_multiple_headers"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Recreate pass lines
#'
#' This tool can be used to approximate the harvester pass lines from yield points.
#'
#' @param input Name of the input points shapefile.
#' @param yield_field_name Name of the attribute containing yield data.
#' @param output_lines Name of the output pass lines shapefile.
#' @param output_points Name of the output points shapefile.
#' @param max_change_in_heading Max change in heading.
#' @param ignore_zeros Ignore zero-valued yield points?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_recreate_pass_lines <- function(input, yield_field_name, output_lines, output_points, max_change_in_heading=25.0, ignore_zeros=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--yield_field_name=", wbt_file_path(yield_field_name)))
  args <- paste(args, paste0("--output_lines=", wbt_file_path(output_lines)))
  args <- paste(args, paste0("--output_points=", wbt_file_path(output_points)))
  if (!is.null(max_change_in_heading)) {
    args <- paste(args, paste0("--max_change_in_heading=", max_change_in_heading))
  }
  if (ignore_zeros) {
    args <- paste(args, "--ignore_zeros")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "recreate_pass_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Remove field edge points
#'
#' This tool can be used to remove, or flag, most of the points along the edges from a crop yield data set.
#'
#' @param input Name of the input points shapefile.
#' @param output Name of the output points shapefile.
#' @param dist Average distance between passes, in meters.
#' @param max_change_in_heading Max change in heading.
#' @param flag_edges Don't remove edge points, just flag them in the attribute table?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_field_edge_points <- function(input, output, dist=NULL, max_change_in_heading=25.0, flag_edges=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(dist)) {
    args <- paste(args, paste0("--dist=", dist))
  }
  if (!is.null(max_change_in_heading)) {
    args <- paste(args, paste0("--max_change_in_heading=", max_change_in_heading))
  }
  if (flag_edges) {
    args <- paste(args, "--flag_edges")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "remove_field_edge_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Yield filter
#'
#' Filters crop yield values of point data derived from combine harvester yield monitors.
#'
#' @param input Name of the input points shapefile.
#' @param yield_field Name of the attribute containing yield data.
#' @param pass_field Name of the attribute containing pass line ID.
#' @param output Name of the output points shapefile.
#' @param width Pass swath width (m).
#' @param z_score_threshold Z-score threshold value (default=2.5).
#' @param min_yield Minimum yield value in output.
#' @param max_yield Maximum yield value in output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_yield_filter <- function(input, yield_field, pass_field, output, width=6.096, z_score_threshold=2.5, min_yield=0.0, max_yield=99999.9, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--yield_field=", wbt_file_path(yield_field)))
  args <- paste(args, paste0("--pass_field=", wbt_file_path(pass_field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(width)) {
    args <- paste(args, paste0("--width=", width))
  }
  if (!is.null(z_score_threshold)) {
    args <- paste(args, paste0("--z_score_threshold=", z_score_threshold))
  }
  if (!is.null(min_yield)) {
    args <- paste(args, paste0("--min_yield=", min_yield))
  }
  if (!is.null(max_yield)) {
    args <- paste(args, paste0("--max_yield=", max_yield))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "yield_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Yield map
#'
#' This tool can be used to create a segmented-vector polygon yield map from a set of harvester points.
#'
#' @param input Name of the input points shapefile.
#' @param pass_field_name Name of the attribute containing pass line ID.
#' @param output Name of the output polygon shapefile.
#' @param width Pass swath width (m).
#' @param max_change_in_heading Max change in heading.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_yield_map <- function(input, pass_field_name, output, width=6.096, max_change_in_heading=25.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--pass_field_name=", wbt_file_path(pass_field_name)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(width)) {
    args <- paste(args, paste0("--width=", width))
  }
  if (!is.null(max_change_in_heading)) {
    args <- paste(args, paste0("--max_change_in_heading=", max_change_in_heading))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "yield_map"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Yield normalization
#'
#' This tool can be used to normalize the yield points for a field.
#'
#' @param input Name of the input points shapefile.
#' @param yield_field Name of the attribute containing yield data.
#' @param output Name of the output points shapefile.
#' @param standardize Should the yield values be standardized (converted to z-scores) rather than normalized?.
#' @param radius Optional search radius, in metres. Only specify this value if you want to calculate locally normalized yield.
#' @param min_yield Minimum yield value in output.
#' @param max_yield Maximum yield value in output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_yield_normalization <- function(input, yield_field, output, standardize=FALSE, radius=NULL, min_yield=0.0, max_yield=99999.9, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--yield_field=", wbt_file_path(yield_field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (standardize) {
    args <- paste(args, "--standardize")
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_yield)) {
    args <- paste(args, paste0("--min_yield=", min_yield))
  }
  if (!is.null(max_yield)) {
    args <- paste(args, paste0("--max_yield=", max_yield))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "yield_normalization"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


