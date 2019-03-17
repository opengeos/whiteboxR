#' Classify overlap points
#'
#' Classifies or filters LAS points in regions of overlapping flight lines.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution The size of the square area used to evaluate nearby points in the LiDAR data.
#' @param filter Filter out points from overlapping flightlines? If false, overlaps will simply be classified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
classify_overlap_points <- function(input, output, resolution=2.0, filter=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Clip lidar to polygon
#'
#' Clips a LiDAR point cloud to a vector polygon or polygons.
#'
#' @param input Input LiDAR file.
#' @param polygons Input vector polygons file.
#' @param output Output LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
clip_lidar_to_polygon <- function(input, polygons, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--polygons=", polygons))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Erase polygon from lidar
#'
#' Erases (cuts out) a vector polygon or polygons from a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param polygons Input vector polygons file.
#' @param output Output LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
erase_polygon_from_lidar <- function(input, polygons, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--polygons=", polygons))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Filter lidar scan angles
#'
#' Removes points in a LAS file with scan angles greater than a threshold.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param threshold Scan angle threshold.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
filter_lidar_scan_angles <- function(input, output, threshold, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--threshold=", threshold))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find flightline edge points
#'
#' Identifies points along a flightline's edge in a LAS file.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
find_flightline_edge_points <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flightline overlap
#'
#' Reads a LiDAR (LAS) point file and outputs a raster containing the number of overlapping flight lines in each grid cell.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flightline_overlap <- function(input, output=NULL, resolution=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Las to ascii
#'
#' Converts one or more LAS files into ASCII text files.
#'
#' @param inputs Input LiDAR files.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
las_to_ascii <- function(inputs, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Las to multipoint shapefile
#'
#' Converts one or more LAS files into MultipointZ vector Shapefiles. When the input parameter is not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
las_to_multipoint_shapefile <- function(input, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Las to shapefile
#'
#' Converts one or more LAS files into a vector Shapefile of POINT ShapeType.
#'
#' @param input Input LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
las_to_shapefile <- function(input, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar block maximum
#'
#' Creates a block-maximum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_block_maximum <- function(input, output=NULL, resolution=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar block minimum
#'
#' Creates a block-minimum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param resolution Output raster's grid resolution.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_block_minimum <- function(input, output=NULL, resolution=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar classify subset
#'
#' Classifies the values in one LiDAR point cloud that correpond with points in a subset cloud.
#'
#' @param base Input base LiDAR file.
#' @param subset Input subset LiDAR file.
#' @param output Output LiDAR file.
#' @param subset_class Subset point class value (must be 0-18; see LAS specifications).
#' @param nonsubset_class Non-subset point class value (must be 0-18; see LAS specifications).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_classify_subset <- function(base, subset, output, subset_class, nonsubset_class=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--subset=", subset))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--subset_class=", subset_class))
  if (!is.null(nonsubset_class)) {
    args <- paste(args, paste0("--nonsubset_class=", nonsubset_class))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar colourize
#'
#' Adds the red-green-blue colour fields of a LiDAR (LAS) file based on an input image.
#'
#' @param in_lidar Input LiDAR file.
#' @param in_image Input colour image file.
#' @param output Output LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_colourize <- function(in_lidar, in_image, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--in_lidar=", in_lidar))
  args <- paste(args, paste0("--in_image=", in_image))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar construct vector tin
#'
#' Creates a vector triangular irregular network (TIN) fitted to LiDAR points.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_construct_vector_tin <- function(input, output=NULL, returns="all", exclude_cls=NULL, minz=NULL, maxz=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_elevation_slice <- function(input, output, minz=NULL, maxz=NULL, cls=FALSE, inclassval=2, outclassval=1, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(minz)) {
    args <- paste(args, paste0("--minz=", minz))
  }
  if (!is.null(maxz)) {
    args <- paste(args, paste0("--maxz=", maxz))
  }
  if (!is.null(cls)) {
    args <- paste(args, paste0("--cls=", cls))
  }
  if (!is.null(inclassval)) {
    args <- paste(args, paste0("--inclassval=", inclassval))
  }
  if (!is.null(outclassval)) {
    args <- paste(args, paste0("--outclassval=", outclassval))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar ground point filter
#'
#' Identifies ground points within LiDAR dataset using a slope-based method.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param min_neighbours The minimum number of neighbouring points within search areas. If fewer points than this threshold are idenfied during the fixed-radius search, a subsequent kNN search is performed to identify the k number of neighbours.
#' @param slope_threshold Maximum inter-point slope to be considered an off-terrain point.
#' @param height_threshold Inter-point height difference to be considered an off-terrain point.
#' @param classify Classify points as ground (2) or off-ground (1).
#' @param slope_norm Perform initial ground slope normalization?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_ground_point_filter <- function(input, output, radius=2.0, min_neighbours=0, slope_threshold=45.0, height_threshold=1.0, classify=TRUE, slope_norm=TRUE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
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
  if (!is.null(classify)) {
    args <- paste(args, paste0("--classify=", classify))
  }
  if (!is.null(slope_norm)) {
    args <- paste(args, paste0("--slope_norm=", slope_norm))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar hex binning
#'
#' Hex-bins a set of LiDAR points.
#'
#' @param input Input base file.
#' @param output Output vector polygon file.
#' @param width The grid cell width.
#' @param orientation Grid Orientation, 'horizontal' or 'vertical'.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_hex_binning <- function(input, output, width, orientation="horizontal", verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--width=", width))
  if (!is.null(orientation)) {
    args <- paste(args, paste0("--orientation=", orientation))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_hillshade <- function(input, output, azimuth=315.0, altitude=30.0, radius=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar histogram
#'
#' Creates a histogram of LiDAR data.
#'
#' @param input Input LiDAR file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param parameter Parameter; options are 'elevation' (default), 'intensity', 'scan angle', 'class'.
#' @param clip Amount to clip distribution tails (in percent).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_histogram <- function(input, output, parameter="elevation", clip=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(parameter)) {
    args <- paste(args, paste0("--parameter=", parameter))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar idw interpolation
#'
#' Interpolates LAS files using an inverse-distance weighted (IDW) scheme. When the input/output parameters are not specified, the tool interpolates all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'scan angle', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param weight IDW weight value.
#' @param radius Search Radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_idw_interpolation <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, weight=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar info
#'
#' Prints information about a LiDAR (LAS) dataset, including header, point return frequency, and classification data and information about the variable length records (VLRs) and geokeys.
#'
#' @param input Input LiDAR file.
#' @param output Output HTML file for summary report.
#' @param vlr Flag indicating whether or not to print the variable length records (VLRs).
#' @param geokeys Flag indicating whether or not to print the geokeys.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_info <- function(input, output=NULL, vlr=FALSE, geokeys=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(vlr)) {
    args <- paste(args, paste0("--vlr=", vlr))
  }
  if (!is.null(geokeys)) {
    args <- paste(args, paste0("--geokeys=", geokeys))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar join
#'
#' Joins multiple LiDAR (LAS) files into a single LAS file.
#'
#' @param inputs Input LiDAR files.
#' @param output Output LiDAR file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_join <- function(inputs, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_kappa_index <- function(input1, input2, output, class_accuracy, resolution=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--class_accuracy=", class_accuracy))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar nearest neighbour gridding
#'
#' Grids LAS files using nearest-neighbour scheme. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'scan angle', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param radius Search Radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_nearest_neighbour_gridding <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar point density
#'
#' Calculates the spatial pattern of point density for a LiDAR data set. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param radius Search Radius.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_point_density <- function(input, output=NULL, returns="all", resolution=1.0, radius=2.5, exclude_cls=NULL, minz=NULL, maxz=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar point stats
#'
#' Creates several rasters summarizing the distribution of LAS point data. When the input/output parameters are not specified, the tool works on all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param resolution Output raster's grid resolution.
#' @param num_points Flag indicating whether or not to output the number of points raster.
#' @param num_pulses Flag indicating whether or not to output the number of pulses raster.
#' @param z_range Flag indicating whether or not to output the elevation range raster.
#' @param intensity_range Flag indicating whether or not to output the intensity range raster.
#' @param predom_class Flag indicating whether or not to output the predominant classification raster.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_point_stats <- function(input, resolution=1.0, num_points=TRUE, num_pulses=FALSE, z_range=FALSE, intensity_range=FALSE, predom_class=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(num_points)) {
    args <- paste(args, paste0("--num_points=", num_points))
  }
  if (!is.null(num_pulses)) {
    args <- paste(args, paste0("--num_pulses=", num_pulses))
  }
  if (!is.null(z_range)) {
    args <- paste(args, paste0("--z_range=", z_range))
  }
  if (!is.null(intensity_range)) {
    args <- paste(args, paste0("--intensity_range=", intensity_range))
  }
  if (!is.null(predom_class)) {
    args <- paste(args, paste0("--predom_class=", predom_class))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar remove duplicates
#'
#' Removes duplicate points from a LiDAR data set.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param include_z Include z-values in point comparison?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_remove_duplicates <- function(input, output, include_z=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(include_z)) {
    args <- paste(args, paste0("--include_z=", include_z))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar remove outliers
#'
#' Removes outliers (high and low points) in a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param elev_diff Max. elevation difference.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_remove_outliers <- function(input, output, radius=2.0, elev_diff=50.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(elev_diff)) {
    args <- paste(args, paste0("--elev_diff=", elev_diff))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar segmentation
#'
#' Segments a LiDAR point cloud based on normal vectors.
#'
#' @param input Input LiDAR file.
#' @param output Output file.
#' @param radius Search Radius.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param maxzdiff Maximum difference in elevation (z units) between neighbouring points of the same segment.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_segmentation <- function(input, output, radius=5.0, norm_diff=10.0, maxzdiff=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(maxzdiff)) {
    args <- paste(args, paste0("--maxzdiff=", maxzdiff))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_segmentation_based_filter <- function(input, output, radius=5.0, norm_diff=2.0, maxzdiff=1.0, classify=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(maxzdiff)) {
    args <- paste(args, paste0("--maxzdiff=", maxzdiff))
  }
  if (!is.null(classify)) {
    args <- paste(args, paste0("--classify=", classify))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar thin
#'
#' Thins a LiDAR point cloud, reducing point density.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution The size of the square area used to evaluate nearby points in the LiDAR data.
#' @param method Point selection method; options are 'first', 'last', 'lowest' (default), 'highest', 'nearest'.
#' @param save_filtered Save filtered points to seperate file?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_thin <- function(input, output, resolution=2.0, method="lowest", save_filtered=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!is.null(save_filtered)) {
    args <- paste(args, paste0("--save_filtered=", save_filtered))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar thin high density
#'
#' Thins points from high density areas within a LiDAR point cloud.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param resolution Output raster's grid resolution.
#' @param density Max. point density (points / m^3).
#' @param save_filtered Save filtered points to seperate file?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_thin_high_density <- function(input, output, density, resolution=1.0, save_filtered=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--density=", density))
  if (!is.null(resolution)) {
    args <- paste(args, paste0("--resolution=", resolution))
  }
  if (!is.null(save_filtered)) {
    args <- paste(args, paste0("--save_filtered=", save_filtered))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_tile <- function(input, width=1000.0, height=1000.0, origin_x=0.0, origin_y=0.0, min_points=2, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar tile footprint
#'
#' Creates a vector polygon of the convex hull of a LiDAR point cloud. When the input/output parameters are not specified, the tool works with all LAS files contained within the working directory.
#'
#' @param input Input LiDAR file.
#' @param output Output vector polygon file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_tile_footprint <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar tin gridding
#'
#' Creates a raster grid based on a Delaunay triangular irregular network (TIN) fitted to LiDAR points.
#'
#' @param input Input LiDAR file (including extension).
#' @param output Output raster file (including extension).
#' @param parameter Interpolation parameter; options are 'elevation' (default), 'intensity', 'class', 'scan angle', 'user data'.
#' @param returns Point return types to include; options are 'all' (default), 'last', 'first'.
#' @param resolution Output raster's grid resolution.
#' @param exclude_cls Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.
#' @param minz Optional minimum elevation for inclusion in interpolation.
#' @param maxz Optional maximum elevation for inclusion in interpolation.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_tin_gridding <- function(input, output=NULL, parameter="elevation", returns="all", resolution=1.0, exclude_cls=NULL, minz=NULL, maxz=NULL, max_triangle_edge_length=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lidar tophat transform
#'
#' Performs a white top-hat transform on a Lidar dataset; as an estimate of height above ground, this is useful for modelling the vegetation canopy.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lidar_tophat_transform <- function(input, output, radius=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Normal vectors
#'
#' Calculates normal vectors for points within a LAS file and stores these data (XYZ vector components) in the RGB field.
#'
#' @param input Input LiDAR file.
#' @param output Output LiDAR file.
#' @param radius Search Radius.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
normal_vectors <- function(input, output, radius=1.0, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Select tiles by polygon
#'
#' Copies LiDAR tiles overlapping with a polygon into an output directory.
#'
#' @param indir Input LAS file source directory.
#' @param outdir Output directory into which LAS files within the polygon are copied.
#' @param polygons Input vector polygons file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
select_tiles_by_polygon <- function(indir, outdir, polygons, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--indir=", indir))
  args <- paste(args, paste0("--outdir=", outdir))
  args <- paste(args, paste0("--polygons=", polygons))
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


