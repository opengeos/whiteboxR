#' Ascii to las
#'
#' Converts one or more ASCII files containing LiDAR points into LAS files.
#'
#' @param inputs Input LiDAR  ASCII files (.csv).
#' @param pattern Input field pattern.
#' @param proj Well-known-text string or EPSG code describing projection.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ascii_to_las <- function(inputs, pattern, proj=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--pattern=", wbt_file_path(pattern)))
  if (!is.null(proj)) {
    args <- paste(args, paste0("--proj=", proj))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ascii_to_las"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Classify buildings in lidar
#'
#' Reclassifies a LiDAR points that lie within vector building footprints.
#'
#' @param input Input LiDAR file.
#' @param buildings Input vector polygons file.
#' @param output Output LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_classify_buildings_in_lidar <- function(input, buildings, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--buildings=", wbt_file_path(buildings)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "classify_buildings_in_lidar"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Classify overlap points
#'
#' Classifies or filters LAS points in regions of overlapping flight lines.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution The size of the square area used to evaluate nearby points in the LiDAR data.
#' @param filter Filter out points from overlapping flightlines? If false, overlaps will simply be classified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_classify_overlap_points <- function(input, output, resolution=2.0, filter=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (filter) {
    args <- paste(args, "--filter")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "classify_overlap_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Clip lidar to polygon
#'
#' Clips a LiDAR point cloud to a vector polygon or polygons.
#'
#' @param input Input LiDAR file.
#' @param polygons Input vector polygons file.
#' @param output Output LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clip_lidar_to_polygon <- function(input, polygons, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--polygons=", wbt_file_path(polygons)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "clip_lidar_to_polygon"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Erase polygon from lidar
#'
#' Erases (cuts out) a vector polygon or polygons from a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param polygons Input vector polygons file.
#' @param output Output LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_erase_polygon_from_lidar <- function(input, polygons, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--polygons=", wbt_file_path(polygons)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "erase_polygon_from_lidar"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Filter lidar classes
#'
#' Removes points in a LAS file with certain specified class values.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_filter_lidar_classes <- function(input, output, exclude_cls=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "filter_lidar_classes"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Filter lidar scan angles
#'
#' Removes points in a LAS file with scan angles greater than a threshold.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param threshold Scan angle threshold.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_filter_lidar_scan_angles <- function(input, output, threshold, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--threshold=", wbt_file_path(threshold)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "filter_lidar_scan_angles"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Find flightline edge points
#'
#' Identifies points along a flightline's edge in a LAS file.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_flightline_edge_points <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "find_flightline_edge_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Flightline overlap
#'
#' Reads a LiDAR (LAS) point file and outputs a raster containing the number of overlapping flight lines in each grid cell.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flightline_overlap <- function(input, output=NULL, resolution=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "flightline_overlap"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Height above ground
#'
#' Normalizes a LiDAR point cloud, providing the height above the nearest ground-classified point.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_height_above_ground <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "height_above_ground"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Las to ascii
#'
#' Converts one or more LAS files into ASCII text files.
#'
#' @param inputs Input LiDAR files.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_las_to_ascii <- function(inputs, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "las_to_ascii"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Las to laz
#'
#' This tool converts one or more LAS files into the LAZ format.
#'
#' @param input Name of the input LAS files (leave blank to use all LAS files in WorkingDirectory.
#' @param output Output LAZ file (including extension).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_las_to_laz <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "las_to_laz"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Las to multipoint shapefile
#'
#' Converts one or more LAS files into MultipointZ vector Shapefiles. When the input parameter is not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_las_to_multipoint_shapefile <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "las_to_multipoint_shapefile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Las to shapefile
#'
#' Converts one or more LAS files into a vector Shapefile of POINT ShapeType.
#'
#' @param input Input LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_las_to_shapefile <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "las_to_shapefile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Las to zlidar
#'
#' Converts one or more LAS files into the zlidar compressed LiDAR data format.
#'
#' @param inputs Input LAS files.
#' @param outdir Output directory into which zlidar files are created. If unspecified, it is assumed to be the same as the inputs.
#' @param compress Compression method, including 'brotli' and 'deflate'.
#' @param level Compression level (1-9).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_las_to_zlidar <- function(inputs=NULL, outdir=NULL, compress="brotli", level=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  if (!is.null(inputs)) {
    args <- paste(args, paste0("--inputs=", inputs))
  }
  if (!is.null(outdir)) {
    args <- paste(args, paste0("--outdir=", outdir))
  }
  if (!is.null(compress)) {
    args <- paste(args, paste0("--compress=", compress))
  }
  if (!is.null(level)) {
    args <- paste(args, paste0("--level=", level))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "las_to_zlidar"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Laz to las
#'
#' This tool converts one or more LAZ files into the LAS format.
#'
#' @param input Name of the input LAZ files (leave blank to use all LAZ files in WorkingDirectory.
#' @param output Output LAS file (including extension).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_laz_to_las <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "laz_to_las"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar block maximum
#'
#' Creates a block-maximum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_block_maximum <- function(input, output=NULL, resolution=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_block_maximum"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar block minimum
#'
#' Creates a block-minimum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_block_minimum <- function(input, output=NULL, resolution=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_block_minimum"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar classify subset
#'
#' Classifies the values in one LiDAR point cloud that correspond with points in a subset cloud.
#'
#' @param base Input base LiDAR file.
#' @param subset Input subset LiDAR file.
#' @param output Output LiDAR file.
#' @param subset_class Subset point class value (must be 0-18; see LAS specifications).
#' @param nonsubset_class Non-subset point class value (must be 0-18; see LAS specifications).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_classify_subset <- function(base, subset, output, subset_class, nonsubset_class=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--subset=", wbt_file_path(subset)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--subset_class=", wbt_file_path(subset_class)))
  if (!is.null(nonsubset_class)) {
    args <- paste(args, paste0("--nonsubset_class=", nonsubset_class))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_classify_subset"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar colourize
#'
#' Adds the red-green-blue colour fields of a LiDAR (LAS) file based on an input image.
#'
#' @param in_lidar Input LiDAR file.
#' @param in_image Input colour image file.
#' @param output Output LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_colourize <- function(in_lidar, in_image, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--in_lidar=", wbt_file_path(in_lidar)))
  args <- paste(args, paste0("--in_image=", wbt_file_path(in_image)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_colourize"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar contour
#'
#' This tool creates a vector contour coverage from an input LiDAR point file.
#'
#' @param input Name of the input LiDAR points.
#' @param output Name of the output vector lines file.
#' @param interval Contour interval.
#' @param smooth Smoothing filter size (in num. points), e.g. 3, 5, 7, 9, 11.
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'user_data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_contour <- function(input, output=NULL, interval=10.0, smooth=5, parameter="elevation", returns="all", exclude_cls=NULL, minz=NULL, maxz=NULL, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(smooth)) {
    args <- paste(args, paste0("--smooth=", smooth))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_contour"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar digital surface model
#'
#' Creates a top-surface digital surface model (DSM) from a LiDAR point cloud.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param resolution Output raster's grid resolution.
#' @param radius Search Radius.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_digital_surface_model <- function(input, output=NULL, resolution=1.0, radius=0.5, minz=NULL, maxz=NULL, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_digital_surface_model"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar elevation slice
#'
#' Outputs all of the points within a LiDAR (LAS) point file that lie between a specified elevation range.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param minz Minimum elevation value (optional).
#' @param maxz Maximum elevation value (optional).
#' @param cls Optional boolean flag indicating whether points outside the range should be retained in output but reclassified.
#' @param inclassval Optional parameter specifying the class value assigned to points within the slice.
#' @param outclassval Optional parameter specifying the class value assigned to points within the slice.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_elevation_slice <- function(input, output, minz=NULL, maxz=NULL, cls=FALSE, inclassval=2, outclassval=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (cls) {
    args <- paste(args, "--cls")
  }
  if (!is.null(inclassval)) {
    args <- paste(args, paste0("--inclassval=", inclassval))
  }
  if (!is.null(outclassval)) {
    args <- paste(args, paste0("--outclassval=", outclassval))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_elevation_slice"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar ground point filter
#'
#' Identifies ground points within LiDAR dataset using a slope-based method.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param min_neighbours The minimum number of neighbouring points within search areas. If fewer points than this threshold are identified during the fixed-radius search, a subsequent kNN search is performed to identify the k number of neighbours.
#' @param slope_threshold Maximum inter-point slope to be considered an off-terrain point.
#' @param height_threshold Inter-point height difference to be considered an off-terrain point.
#' @param classify Classify points as ground (2) or off-ground (1).
#' @param slope_norm Perform initial ground slope normalization?.
#' @param height_above_ground Transform output to height above average ground elevation?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_ground_point_filter <- function(input, output, radius=2.0, min_neighbours=0, slope_threshold=45.0, height_threshold=1.0, classify=TRUE, slope_norm=TRUE, height_above_ground=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_neighbours)) {
    args <- paste(args, paste0("--min_neighbours=", min_neighbours))
  }
  if (!is.null(slope_threshold)) {
    args <- paste(args, paste0("--slope_threshold=", slope_threshold))
  }
  if (!is.null(height_threshold)) {
    args <- paste(args, paste0("--height_threshold=", height_threshold))
  }
  if (classify) {
    args <- paste(args, "--classify")
  }
  if (slope_norm) {
    args <- paste(args, "--slope_norm")
  }
  if (height_above_ground) {
    args <- paste(args, "--height_above_ground")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_ground_point_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar hex binning
#'
#' Hex-bins a set of LiDAR points.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_hex_binning <- function(input, output, width, orientation="horizontal", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--width=", wbt_file_path(width)))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_hex_binning"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar hillshade
#'
#' Calculates a hillshade value for points within a LAS file and stores these data in the RGB field.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param azimuth Illumination source azimuth in degrees.
#' @param altitude Illumination source altitude in degrees.
#' @param radius Search Radius.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_hillshade <- function(input, output, azimuth=315.0, altitude=30.0, radius=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_hillshade"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar histogram
#'
#' Creates a histogram of LiDAR data.
#'
#' @param input Input LiDAR file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param parameter Parameter; options are 'elevation' (default), 'intensity', 'scan angle', 'class', 'time'.
#' @param clip Amount to clip distribution tails (in percent).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_histogram <- function(input, output, parameter="elevation", clip=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_histogram"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar idw interpolation
#'
#' Interpolates LAS files using an inverse-distance weighted (IDW) scheme. When the input/output parameters are not specified, the tool interpolates all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'return_number', 'number_of_returns', 'scan angle', 'rgb', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param weight IDW weight value.
#' @param radius Search Radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_idw_interpolation <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, weight=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_idw_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar info
#'
#' Prints information about a LiDAR (LAS) dataset, including header, point return frequency, and classification data and information about the variable length records (VLRs) and geokeys.
#'
#' @param input Input LiDAR file.
#' @param output Output HTML file for summary report.
#' @param vlr Flag indicating whether or not to print the variable length records (VLRs).
#' @param geokeys Flag indicating whether or not to print the geokeys.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_info <- function(input, output=NULL, vlr=TRUE, geokeys=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (vlr) {
    args <- paste(args, "--vlr")
  }
  if (geokeys) {
    args <- paste(args, "--geokeys")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_info"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar join
#'
#' Joins multiple LiDAR (LAS) files into a single LAS file.
#'
#' @param inputs Input LiDAR files.
#' @param output Output LiDAR file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_join <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_join"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar kappa index
#'
#' Performs a kappa index of agreement (KIA) analysis on the classifications of two LAS files.
#'
#' @param input1 Input LiDAR classification file.
#' @param input2 Input LiDAR reference file.
#' @param output Output HTML file.
#' @param class_accuracy Output classification accuracy raster file.
#' @param resolution Output raster's grid resolution.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_kappa_index <- function(input1, input2, output, class_accuracy, resolution=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--class_accuracy=", wbt_file_path(class_accuracy)))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_kappa_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar nearest neighbour gridding
#'
#' Grids LiDAR files using nearest-neighbour scheme. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'return_number', 'number_of_returns', 'scan angle', 'rgb', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param radius Search Radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_nearest_neighbour_gridding <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_nearest_neighbour_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar point density
#'
#' Calculates the spatial pattern of point density for a LiDAR data set. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param radius Search radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_point_density <- function(input, output=NULL, returns="all", resolution=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_point_density"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar point return analysis
#'
#' This tool performs a quality control check on the return values of points in a LiDAR file.
#'
#' @param input Name of the input LiDAR points.
#' @param output Name of the output LiDAR points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_point_return_analysis <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_point_return_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar point stats
#'
#' Creates several rasters summarizing the distribution of LAS point data. When the input/output parameters are not specified, the tool works on all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param resolution Output raster's grid resolution.
#' @param num_points Flag indicating whether or not to output the number of points (returns) raster.
#' @param num_pulses Flag indicating whether or not to output the number of pulses raster.
#' @param avg_points_per_pulse Flag indicating whether or not to output the average number of points (returns) per pulse raster.
#' @param z_range Flag indicating whether or not to output the elevation range raster.
#' @param intensity_range Flag indicating whether or not to output the intensity range raster.
#' @param predom_class Flag indicating whether or not to output the predominant classification raster.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_point_stats <- function(input, resolution=1.0, num_points=TRUE, num_pulses=FALSE, avg_points_per_pulse=TRUE, z_range=FALSE, intensity_range=FALSE, predom_class=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (num_points) {
    args <- paste(args, "--num_points")
  }
  if (num_pulses) {
    args <- paste(args, "--num_pulses")
  }
  if (avg_points_per_pulse) {
    args <- paste(args, "--avg_points_per_pulse")
  }
  if (z_range) {
    args <- paste(args, "--z_range")
  }
  if (intensity_range) {
    args <- paste(args, "--intensity_range")
  }
  if (predom_class) {
    args <- paste(args, "--predom_class")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_point_stats"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar ransac planes
#'
#' Performs a RANSAC analysis to identify points within a LiDAR point cloud that belong to linear planes.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param num_iter Number of iterations.
#' @param num_samples Number of sample points on which to build the model.
#' @param threshold Threshold used to determine inlier points.
#' @param model_size Acceptable model size.
#' @param max_slope Maximum planar slope.
#' @param classify Classify points as ground (2) or off-ground (1).
#' @param last_returns Only include last- and only-return points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_ransac_planes <- function(input, output, radius=2.0, num_iter=50, num_samples=5, threshold=0.35, model_size=8, max_slope=80.0, classify=FALSE, last_returns=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(num_iter)) {
    args <- paste(args, paste0("--num_iter=", num_iter))
  }
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(model_size)) {
    args <- paste(args, paste0("--model_size=", model_size))
  }
  if (!is.null(max_slope)) {
    args <- paste(args, paste0("--max_slope=", max_slope))
  }
  if (classify) {
    args <- paste(args, "--classify")
  }
  if (last_returns) {
    args <- paste(args, "--last_returns")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_ransac_planes"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar rbf interpolation
#'
#' Interpolates LAS files using a radial basis function (RBF) scheme. When the input/output parameters are not specified, the tool interpolates all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'return_number', 'number_of_returns', 'scan angle', 'rgb', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param num_points Number of points.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param func_type Radial basis function type; options are 'ThinPlateSpline' (default), 'PolyHarmonic', 'Gaussian', 'MultiQuadric', 'InverseMultiQuadric'.
#' @param poly_order Polynomial order; options are 'none' (default), 'constant', 'affine'.
#' @param weight Weight parameter used in basis function.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_rbf_interpolation <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, num_points=20, exclude_cls=NULL, minz=NULL, maxz=NULL, func_type="ThinPlateSpline", poly_order="none", weight=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(num_points)) {
    args <- paste(args, paste0("--num_points=", num_points))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_rbf_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar remove duplicates
#'
#' Removes duplicate points from a LiDAR data set.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param include_z Include z-values in point comparison?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_remove_duplicates <- function(input, output, include_z=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (include_z) {
    args <- paste(args, "--include_z")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_remove_duplicates"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar remove outliers
#'
#' Removes outliers (high and low points) in a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param elev_diff Max. elevation difference.
#' @param use_median Optional flag indicating whether to use the difference from median elevation rather than mean.
#' @param classify Classify points as ground (2) or off-ground (1).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_remove_outliers <- function(input, output, radius=2.0, elev_diff=50.0, use_median=FALSE, classify=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(elev_diff)) {
    args <- paste(args, paste0("--elev_diff=", elev_diff))
  }
  if (use_median) {
    args <- paste(args, "--use_median")
  }
  if (classify) {
    args <- paste(args, "--classify")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_remove_outliers"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar rooftop analysis
#'
#' Identifies roof segments in a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param buildings Input vector build footprint polygons file.
#' @param output Output vector polygon file.
#' @param radius Search Radius.
#' @param num_iter Number of iterations.
#' @param num_samples Number of sample points on which to build the model.
#' @param threshold Threshold used to determine inlier points (in elevation units).
#' @param model_size Acceptable model size, in points.
#' @param max_slope Maximum planar slope, in degrees.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param azimuth Illumination source azimuth, in degrees.
#' @param altitude Illumination source altitude in degrees.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_rooftop_analysis <- function(buildings, output, input=NULL, radius=2.0, num_iter=50, num_samples=10, threshold=0.15, model_size=15, max_slope=65.0, norm_diff=10.0, azimuth=180.0, altitude=30.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--buildings=", wbt_file_path(buildings)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(input)) {
    args <- paste(args, paste0("--input=", input))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(num_iter)) {
    args <- paste(args, paste0("--num_iter=", num_iter))
  }
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(model_size)) {
    args <- paste(args, paste0("--model_size=", model_size))
  }
  if (!is.null(max_slope)) {
    args <- paste(args, paste0("--max_slope=", max_slope))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_rooftop_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar segmentation
#'
#' Segments a LiDAR point cloud based on differences in the orientation of fitted planar surfaces and point proximity.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param num_iter Number of iterations.
#' @param num_samples Number of sample points on which to build the model.
#' @param threshold Threshold used to determine inlier points.
#' @param model_size Acceptable model size.
#' @param max_slope Maximum planar slope.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param maxzdiff Maximum difference in elevation (z units) between neighbouring points of the same segment.
#' @param classes Segments don't cross class boundaries.
#' @param ground Classify the largest segment as ground points?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_segmentation <- function(input, output, radius=2.0, num_iter=50, num_samples=10, threshold=0.15, model_size=15, max_slope=80.0, norm_diff=10.0, maxzdiff=1.0, classes=FALSE, ground=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(num_iter)) {
    args <- paste(args, paste0("--num_iter=", num_iter))
  }
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(model_size)) {
    args <- paste(args, paste0("--model_size=", model_size))
  }
  if (!is.null(max_slope)) {
    args <- paste(args, paste0("--max_slope=", max_slope))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(maxzdiff)) {
    args <- paste(args, paste0("--maxzdiff=", maxzdiff))
  }
  if (classes) {
    args <- paste(args, "--classes")
  }
  if (ground) {
    args <- paste(args, "--ground")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_segmentation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar segmentation based filter
#'
#' Identifies ground points within LiDAR point clouds using a segmentation based approach.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param radius Search Radius.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param maxzdiff Maximum difference in elevation (z units) between neighbouring points of the same segment.
#' @param classify Classify points as ground (2) or off-ground (1).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_segmentation_based_filter <- function(input, output, radius=5.0, norm_diff=2.0, maxzdiff=1.0, classify=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(maxzdiff)) {
    args <- paste(args, paste0("--maxzdiff=", maxzdiff))
  }
  if (classify) {
    args <- paste(args, "--classify")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_segmentation_based_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar shift
#'
#' Shifts the x,y,z coordinates of a LiDAR file.
#'
#' @param input Name of the input LiDAR points.
#' @param output Name of the output LiDAR points.
#' @param x_shift x-shift value, blank for none.
#' @param y_shift y-shift value, blank for none.
#' @param z_shift z-shift value, blank for none.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_shift <- function(input, output, x_shift="", y_shift="", z_shift="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(x_shift)) {
    args <- paste(args, paste0("--x_shift=", x_shift))
  }
  if (!is.null(y_shift)) {
    args <- paste(args, paste0("--y_shift=", y_shift))
  }
  if (!is.null(z_shift)) {
    args <- paste(args, paste0("--z_shift=", z_shift))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_shift"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar sibson interpolation
#'
#' This tool interpolates one or more LiDAR tiles using Sibson's natural neighbour method.
#'
#' @param input Name of the input LiDAR points (leave blank to use all files in WorkingDirectory.
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'return_number', 'number_of_returns', 'scan angle', 'user_data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_sibson_interpolation <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, exclude_cls=NULL, minz=NULL, maxz=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_sibson_interpolation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar sort by time
#'
#' This sorts the points in a LiDAR file by the GPS time.
#'
#' @param input Name of the input LiDAR points.
#' @param output Name of the output LiDAR points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_sort_by_time <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_sort_by_time"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar thin
#'
#' Thins a LiDAR point cloud, reducing point density.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution The size of the square area used to evaluate nearby points in the LiDAR data.
#' @param method Point selection method; options are 'first', 'last', 'lowest' (default), 'highest', 'nearest'.
#' @param save_filtered Save filtered points to separate file?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_thin <- function(input, output, resolution=2.0, method="lowest", save_filtered=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (save_filtered) {
    args <- paste(args, "--save_filtered")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_thin"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar thin high density
#'
#' Thins points from high density areas within a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution Output raster's grid resolution.
#' @param density Max. point density (points / m^3).
#' @param save_filtered Save filtered points to separate file?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_thin_high_density <- function(input, output, density, resolution=1.0, save_filtered=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--density=", wbt_file_path(density)))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (save_filtered) {
    args <- paste(args, "--save_filtered")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_thin_high_density"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar tile
#'
#' Tiles a LiDAR LAS file into multiple LAS files.
#'
#' @param input Input LiDAR file.
#' @param width Width of tiles in the X dimension; default 1000.0.
#' @param height Height of tiles in the Y dimension.
#' @param origin_x Origin point X coordinate for tile grid.
#' @param origin_y Origin point Y coordinate for tile grid.
#' @param min_points Minimum number of points contained in a tile for it to be saved.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_tile <- function(input, width=1000.0, height=1000.0, origin_x=0.0, origin_y=0.0, min_points=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(width)) {
    args <- paste(args, paste0("--width=", width))
  }
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(origin_x)) {
    args <- paste(args, paste0("--origin_x=", origin_x))
  }
  if (!is.null(origin_y)) {
    args <- paste(args, paste0("--origin_y=", origin_y))
  }
  if (!is.null(min_points)) {
    args <- paste(args, paste0("--min_points=", min_points))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_tile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar tile footprint
#'
#' Creates a vector polygon of the convex hull of a LiDAR point cloud. When the input/output parameters are not specified, the tool works with all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output vector polygon file.
#' @param hull Identify the convex hull around points.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_tile_footprint <- function(input, output, hull=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (hull) {
    args <- paste(args, "--hull")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_tile_footprint"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar tin gridding
#'
#' Creates a raster grid based on a Delaunay triangular irregular network (TIN) fitted to LiDAR points.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'return_number', 'number_of_returns', 'scan angle', 'rgb', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_tin_gridding <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, exclude_cls="7,18", minz=NULL, maxz=NULL, max_triangle_edge_length=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(returns)) {
    args <- paste(args, paste0("--returns=", returns))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(exclude_cls)) {
    args <- paste(args, paste0("--exclude_cls=", exclude_cls))
  }
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(max_triangle_edge_length)) {
    args <- paste(args, paste0("--max_triangle_edge_length=", max_triangle_edge_length))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_tin_gridding"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Lidar tophat transform
#'
#' Performs a white top-hat transform on a Lidar dataset; as an estimate of height above ground, this is useful for modelling the vegetation canopy.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lidar_tophat_transform <- function(input, output, radius=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lidar_tophat_transform"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Normal vectors
#'
#' Calculates normal vectors for points within a LAS file and stores these data (XYZ vector components) in the RGB field.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_normal_vectors <- function(input, output, radius=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "normal_vectors"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Select tiles by polygon
#'
#' Copies LiDAR tiles overlapping with a polygon into an output directory.
#'
#' @param indir Input LAS file source directory.
#' @param outdir Output directory into which LAS files within the polygon are copied.
#' @param polygons Input vector polygons file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_select_tiles_by_polygon <- function(indir, outdir, polygons, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--indir=", wbt_file_path(indir)))
  args <- paste(args, paste0("--outdir=", wbt_file_path(outdir)))
  args <- paste(args, paste0("--polygons=", wbt_file_path(polygons)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "select_tiles_by_polygon"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Zlidar to las
#'
#' Converts one or more zlidar files into the LAS data format.
#'
#' @param inputs Input ZLidar files.
#' @param outdir Output directory into which zlidar files are created. If unspecified, it is assumed to be the same as the inputs.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_zlidar_to_las <- function(inputs=NULL, outdir=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  if (!is.null(inputs)) {
    args <- paste(args, paste0("--inputs=", inputs))
  }
  if (!is.null(outdir)) {
    args <- paste(args, paste0("--outdir=", outdir))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "zlidar_to_las"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


