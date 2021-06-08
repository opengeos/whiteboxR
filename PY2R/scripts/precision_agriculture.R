#' Recreate pass lines
#'
#' This tool can be used to approximate the harvester pass lines from yield points.
#'
#' @param input Name of the input points shapefile.
#' @param yield_field_name Name of the attribute containing yield data.
#' @param output_lines Name of the output pass lines shapefile.
#' @param output_points Name of the output points shapefile.
#' @param max_change_in_heading Max change in heading.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_recreate_pass_lines <- function(input, yield_field_name, output_lines, output_points, max_change_in_heading=25.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--yield_field_name=", yield_field_name))
  args <- paste(args, paste0("--output_lines=", output_lines))
  args <- paste(args, paste0("--output_points=", output_points))
  if (!is.null(max_change_in_heading)) {
    args <- paste(args, paste0("--max_change_in_heading=", max_change_in_heading))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Yield filter
#'
#' This tool can be used to approximate the harvester pass lines from yield points.
#'
#' @param input Name of the input points shapefile.
#' @param yield_field_name Name of the attribute containing yield data.
#' @param pass_field_name Name of the attribute containing pass line ID.
#' @param output Name of the output points shapefile.
#' @param width Pass swath width (m).
#' @param z_score_threshold Z-score threshold value (default=2.5).
#' @param min_yield Minimum yield value in output.
#' @param max_yield Maximum yield value in output.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_yield_filter <- function(input, yield_field_name, pass_field_name, output, width=6.096, z_score_threshold=2.5, min_yield=0.0, max_yield=99999.9, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--yield_field_name=", yield_field_name))
  args <- paste(args, paste0("--pass_field_name=", pass_field_name))
  args <- paste(args, paste0("--output=", output))
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_yield_map <- function(input, pass_field_name, output, width=6.096, max_change_in_heading=25.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--pass_field_name=", pass_field_name))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(width)) {
    args <- paste(args, paste0("--width=", width))
  }
  if (!is.null(max_change_in_heading)) {
    args <- paste(args, paste0("--max_change_in_heading=", max_change_in_heading))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


