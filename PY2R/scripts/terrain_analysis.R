#' Accumulation curvature
#'
#' This tool calculates accumulation curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_accumulation_curvature <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "accumulation_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Aspect
#'
#' Calculates an aspect raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_aspect <- function(dem, output, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "aspect"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Assess route
#'
#' This tool assesses a route for slope, elevation, and visibility variation.
#'
#' @param routes Name of the input routes vector file.
#' @param dem Name of the input DEM raster file.
#' @param output Name of the output lines shapefile.
#' @param length Maximum segment length (m).
#' @param dist Search distance, in grid cells, used in visibility analysis.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_assess_route <- function(routes, dem, output, length="", dist=20, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--routes=", wbt_file_path(routes)))
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(length)) {
    args <- paste(args, paste0("--length=", length))
  }
  if (!is.null(dist)) {
    args <- paste(args, paste0("--dist=", dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "assess_route"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Average normal vector angular deviation
#'
#' Calculates the circular variance of aspect at a scale for a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_normal_vector_angular_deviation <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "average_normal_vector_angular_deviation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Circular variance of aspect
#'
#' Calculates the circular variance of aspect at a scale for a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_circular_variance_of_aspect <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "circular_variance_of_aspect"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Contours from points
#'
#' Creates a contour coverage from a set of input points.
#'
#' @param input Input vector points file.
#' @param field Input field name in attribute table.
#' @param use_z Use the 'z' dimension of the Shapefile's geometry instead of an attribute field?.
#' @param output Output vector lines file.
#' @param max_triangle_edge_length Optional maximum triangle edge length; triangles larger than this size will not be gridded.
#' @param interval Contour interval.
#' @param base Base contour height.
#' @param smooth Smoothing filter size (in num. points), e.g. 3, 5, 7, 9, 11.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_contours_from_points <- function(input, output, field=NULL, use_z=FALSE, max_triangle_edge_length=NULL, interval=10.0, base=0.0, smooth=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(smooth)) {
    args <- paste(args, paste0("--smooth=", smooth))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "contours_from_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Contours from raster
#'
#' Derives a vector contour coverage from a raster surface.
#'
#' @param input Input surface raster file.
#' @param output Output vector contour file.
#' @param interval Contour interval.
#' @param base Base contour height.
#' @param smooth Smoothing filter size (in num. points), e.g. 3, 5, 7, 9, 11.
#' @param tolerance Tolerance factor, in degrees (0-45); determines generalization level.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_contours_from_raster <- function(input, output, interval=10.0, base=0.0, smooth=9, tolerance=10.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(smooth)) {
    args <- paste(args, paste0("--smooth=", smooth))
  }
  if (!is.null(tolerance)) {
    args <- paste(args, paste0("--tolerance=", tolerance))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "contours_from_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Curvedness
#'
#' This tool calculates curvedness from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_curvedness <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "curvedness"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Dev from mean elev
#'
#' Calculates deviation from mean elevation.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_dev_from_mean_elev <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "dev_from_mean_elev"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Diff from mean elev
#'
#' Calculates difference from mean elevation (equivalent to a high-pass filter).
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diff_from_mean_elev <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "diff_from_mean_elev"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Difference curvature
#'
#' This tool calculates difference curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_difference_curvature <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "difference_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Directional relief
#'
#' Calculates relief for cells in an input DEM for a specified direction.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Wind azimuth in degrees.
#' @param max_dist Optional maximum search distance (unspecified if none; in xy units).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_directional_relief <- function(dem, output, azimuth=0.0, max_dist=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "directional_relief"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Downslope index
#'
#' Calculates the Hjerdt et al. (2004) downslope index.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param drop Vertical drop value (default is 2.0).
#' @param out_type Output type, options include 'tangent', 'degrees', 'radians', 'distance' (default is 'tangent').
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_downslope_index <- function(dem, output, drop=2.0, out_type="tangent", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(drop)) {
    args <- paste(args, paste0("--drop=", drop))
  }
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "downslope_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Edge density
#'
#' Calculates the density of edges, or breaks-in-slope within DEMs.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_density <- function(dem, output, filter=11, norm_diff=5.0, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "edge_density"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Elev above pit
#'
#' Calculate the elevation of each grid cell above the nearest downstream pit cell or grid edge cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_above_pit <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "elev_above_pit"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Elev percentile
#'
#' Calculates the elevation percentile raster from a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_percentile <- function(dem, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(sig_digits)) {
    args <- paste(args, paste0("--sig_digits=", sig_digits))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "elev_percentile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Elev relative to min max
#'
#' Calculates the elevation of a location relative to the minimum and maximum elevations in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_relative_to_min_max <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "elev_relative_to_min_max"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Elev relative to watershed min max
#'
#' Calculates the elevation of a location relative to the minimum and maximum elevations in a watershed.
#'
#' @param dem Input raster DEM file.
#' @param watersheds Input raster watersheds file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_relative_to_watershed_min_max <- function(dem, watersheds, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--watersheds=", wbt_file_path(watersheds)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "elev_relative_to_watershed_min_max"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Embankment mapping
#'
#' Maps and/or removes road embankments from an input fine-resolution DEM.
#'
#' @param dem Input raster DEM file.
#' @param road_vec Input vector polygons file.
#' @param output Output raster file.
#' @param search_dist Search distance used to reposition transportation vectors onto road embankments (in map units).
#' @param min_road_width Minimum road width; this is the width of the paved road surface (in map units).
#' @param typical_width Typical embankment width; this is the maximum width of an embankment with roadside ditches (in map units).
#' @param max_height Typical embankment maximum height; this is the height a typical embankment with roadside ditches (in map units).
#' @param max_width Maximum embankment width, typically where embankments traverse steep-sided valleys (in map units).
#' @param max_increment Maximum upwards increment between neighbouring cells on an embankment (in elevation units).
#' @param spillout_slope Spillout slope (in degrees).
#' @param remove_embankments Optional flag indicating whether to output a DEM with embankments removed (true) or an embankment raster map (false).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_embankment_mapping <- function(dem, road_vec, output, search_dist=2.5, min_road_width=6.0, typical_width=30.0, max_height=2.0, max_width=60.0, max_increment=0.05, spillout_slope=4.0, remove_embankments=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--road_vec=", wbt_file_path(road_vec)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(search_dist)) {
    args <- paste(args, paste0("--search_dist=", search_dist))
  }
  if (!is.null(min_road_width)) {
    args <- paste(args, paste0("--min_road_width=", min_road_width))
  }
  if (!is.null(typical_width)) {
    args <- paste(args, paste0("--typical_width=", typical_width))
  }
  if (!is.null(max_height)) {
    args <- paste(args, paste0("--max_height=", max_height))
  }
  if (!is.null(max_width)) {
    args <- paste(args, paste0("--max_width=", max_width))
  }
  if (!is.null(max_increment)) {
    args <- paste(args, paste0("--max_increment=", max_increment))
  }
  if (!is.null(spillout_slope)) {
    args <- paste(args, paste0("--spillout_slope=", spillout_slope))
  }
  if (remove_embankments) {
    args <- paste(args, "--remove_embankments")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "embankment_mapping"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Exposure towards wind flux
#'
#' This tool evaluates hydrologic connectivity within a DEM.
#'
#' @param dem Name of the input DEM raster file.
#' @param output Name of the output raster file.
#' @param azimuth Wind azimuth, in degrees.
#' @param max_dist Optional maximum search distance. Minimum value is 5 x cell size.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_exposure_towards_wind_flux <- function(dem, output, azimuth="", max_dist="", zfactor="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "exposure_towards_wind_flux"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Feature preserving smoothing
#'
#' Reduces short-scale variation in an input DEM using a modified Sun et al. (2007) algorithm.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param norm_diff Maximum difference in normal vectors, in degrees.
#' @param num_iter Number of iterations.
#' @param max_diff Maximum allowable absolute elevation change (optional).
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_feature_preserving_smoothing <- function(dem, output, filter=11, norm_diff=15.0, num_iter=3, max_diff=0.5, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(norm_diff)) {
    args <- paste(args, paste0("--norm_diff=", norm_diff))
  }
  if (!is.null(num_iter)) {
    args <- paste(args, paste0("--num_iter=", num_iter))
  }
  if (!is.null(max_diff)) {
    args <- paste(args, paste0("--max_diff=", max_diff))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "feature_preserving_smoothing"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Fetch analysis
#'
#' Performs an analysis of fetch or upwind distance to an obstacle.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Wind azimuth in degrees in degrees.
#' @param hgt_inc Height increment value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fetch_analysis <- function(dem, output, azimuth=0.0, hgt_inc=0.05, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(hgt_inc)) {
    args <- paste(args, paste0("--hgt_inc=", hgt_inc))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "fetch_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Fill missing data
#'
#' Fills NoData holes in a DEM.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filter Filter size (cells).
#' @param weight IDW weight value.
#' @param no_edges Optional flag indicating whether to exclude NoData cells in edge regions.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_missing_data <- function(input, output, filter=11, weight=2.0, no_edges=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (no_edges) {
    args <- paste(args, "--no_edges")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "fill_missing_data"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Find ridges
#'
#' Identifies potential ridge and peak grid cells.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param line_thin Optional flag indicating whether post-processing line-thinning should be performed.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_ridges <- function(dem, output, line_thin=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (line_thin) {
    args <- paste(args, "--line_thin")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "find_ridges"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Gaussian curvature
#'
#' Calculates a mean curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "gaussian_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Gaussian scale space
#'
#' This tool uses the fast Gaussian approximation algorithm to produce scaled land-surface parameter measurements from an input DEM.
#'
#' @param dem Name of the input DEM raster file.
#' @param points Name of the input vector points shapefile.
#' @param output Name of the output land-surface parameter raster file.
#' @param output_zscore Name of the output z-score raster file.
#' @param output_scale Name of the output scale raster file.
#' @param sigma Initial sigma value (cells).
#' @param step Step size as any positive non-zero integer.
#' @param num_steps Number of steps.
#' @param lsp Output land-surface parameter; one of 'AnisotropyLTP', 'Aspect', 'DiffMeanElev', 'Eastness', 'Elevation', 'Hillshade', 'MeanCurvature', 'Northness', 'PlanCurvature', 'ProfileCurvature', 'Ruggedness', 'Slope', 'TanCurvature', 'TotalCurvature'.
#' @param z_factor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_scale_space <- function(dem, output, output_zscore, output_scale, points=NULL, sigma=0.5, step=0.5, num_steps=10, lsp="Slope", z_factor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--output_zscore=", wbt_file_path(output_zscore)))
  args <- paste(args, paste0("--output_scale=", wbt_file_path(output_scale)))
  if (!is.null(points)) {
    args <- paste(args, paste0("--points=", points))
  }
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(lsp)) {
    args <- paste(args, paste0("--lsp=", lsp))
  }
  if (!is.null(z_factor)) {
    args <- paste(args, paste0("--z_factor=", z_factor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "gaussian_scale_space"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Generating function
#'
#' This tool calculates generating function from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_generating_function <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "generating_function"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Geomorphons
#'
#' Computes geomorphon patterns.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param search Look up distance.
#' @param threshold Flatness threshold for the classification function (in degrees).
#' @param tdist Distance (in cells) to begin reducing the flatness threshold to avoid problems with pseudo-flat lines-of-sight.
#' @param forms Classify geomorphons into 10 common land morphologies, else, output ternary code.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_geomorphons <- function(dem, output, search=50, threshold=0.0, tdist=0, forms=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(search)) {
    args <- paste(args, paste0("--search=", search))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(tdist)) {
    args <- paste(args, paste0("--tdist=", tdist))
  }
  if (forms) {
    args <- paste(args, "--forms")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "geomorphons"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Hillshade
#'
#' Calculates a hillshade raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Illumination source azimuth in degrees.
#' @param altitude Illumination source altitude in degrees.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hillshade <- function(dem, output, azimuth=315.0, altitude=30.0, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "hillshade"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Horizon angle
#'
#' Calculates horizon angle (maximum upwind slope) for each grid cell in an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Azimuth, in degrees.
#' @param max_dist Optional maximum search distance (unspecified if none; in xy units). Minimum value is 5 x cell size.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_horizon_angle <- function(dem, output, azimuth=0.0, max_dist=100.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "horizon_angle"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Horizontal excess curvature
#'
#' This tool calculates horizontal excess curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_horizontal_excess_curvature <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "horizontal_excess_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Hypsometric analysis
#'
#' Calculates a hypsometric curve for one or more DEMs.
#'
#' @param inputs Input DEM files.
#' @param watershed Input watershed files (optional).
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hypsometric_analysis <- function(inputs, output, watershed=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(watershed)) {
    args <- paste(args, paste0("--watershed=", watershed))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "hypsometric_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Hypsometrically tinted hillshade
#'
#' Creates an colour shaded relief image from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param altitude Illumination source altitude in degrees.
#' @param hs_weight Weight given to hillshade relative to relief (0.0-1.0).
#' @param brightness Brightness factor (0.0-1.0).
#' @param atmospheric Atmospheric effects weight (0.0-1.0).
#' @param palette Options include 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'purple', 'viridi', 'gn_yl', 'pi_y_g', 'bl_yl_rd', and 'deep'.
#' @param reverse Optional flag indicating whether to use reverse the palette.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param full_mode Optional flag indicating whether to use full 360-degrees of illumination sources.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hypsometrically_tinted_hillshade <- function(dem, output, altitude=45.0, hs_weight=0.5, brightness=0.5, atmospheric=0.0, palette="atlas", reverse=FALSE, zfactor=NULL, full_mode=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(hs_weight)) {
    args <- paste(args, paste0("--hs_weight=", hs_weight))
  }
  if (!is.null(brightness)) {
    args <- paste(args, paste0("--brightness=", brightness))
  }
  if (!is.null(atmospheric)) {
    args <- paste(args, paste0("--atmospheric=", atmospheric))
  }
  if (!is.null(palette)) {
    args <- paste(args, paste0("--palette=", palette))
  }
  if (reverse) {
    args <- paste(args, "--reverse")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (full_mode) {
    args <- paste(args, "--full_mode")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "hypsometrically_tinted_hillshade"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Local hypsometric analysis
#'
#' This tool calculates a local, neighbourhood-based hypsometric integral raster.
#'
#' @param input Name of the input raster DEM file.
#' @param out_mag Name of the openness output raster file.
#' @param out_scale Name of the openness output raster file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param num_steps Number of steps.
#' @param step_nonlinearity Step nonlinearity factor (1.0-2.0 is typical).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_local_hypsometric_analysis <- function(input, out_mag, out_scale, min_scale=4, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(step_nonlinearity)) {
    args <- paste(args, paste0("--step_nonlinearity=", step_nonlinearity))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "local_hypsometric_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Local quadratic regression
#'
#' This tool is an implementation of the constrained quadratic regression algorithm using a flexible window size described in Wood (1996).
#'
#' @param dem Name of the input DEM raster file.
#' @param output Name of the output raster file.
#' @param filter Edge length of the filter kernel.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_local_quadratic_regression <- function(dem, output, filter=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "local_quadratic_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Map off terrain objects
#'
#' Maps off-terrain objects in a digital elevation model (DEM).
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param max_slope Maximum inter-cell absolute slope.
#' @param min_size Minimum feature size, in grid cells.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_map_off_terrain_objects <- function(dem, output, max_slope=40.0, min_size=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(max_slope)) {
    args <- paste(args, paste0("--max_slope=", max_slope))
  }
  if (!is.null(min_size)) {
    args <- paste(args, paste0("--min_size=", min_size))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "map_off_terrain_objects"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max anisotropy dev
#'
#' Calculates the maximum anisotropy (directionality) in elevation deviation over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster DEVmax magnitude file.
#' @param out_scale Output raster DEVmax scale file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_anisotropy_dev <- function(dem, out_mag, out_scale, max_scale, min_scale=3, step=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_anisotropy_dev"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max anisotropy dev signature
#'
#' Calculates the anisotropy in deviation from mean for points over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_anisotropy_dev_signature <- function(dem, points, output, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_anisotropy_dev_signature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max branch length
#'
#' Lindsay and Seibert's (2013) branch length index is used to map drainage divides or ridge lines.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Optional flag to request the output be log-transformed.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_branch_length <- function(dem, output, log=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_branch_length"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max difference from mean
#'
#' Calculates the maximum difference from mean elevation over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster DIFFmax magnitude file.
#' @param out_scale Output raster DIFFmax scale file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_difference_from_mean <- function(dem, out_mag, out_scale, min_scale, max_scale, step=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  args <- paste(args, paste0("--min_scale=", wbt_file_path(min_scale)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_difference_from_mean"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max downslope elev change
#'
#' Calculates the maximum downslope change in elevation between a grid cell and its eight downslope neighbors.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_downslope_elev_change <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_downslope_elev_change"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max elev dev signature
#'
#' Calculates the maximum elevation deviation over a range of spatial scales and for a set of points.
#'
#' @param dem Input raster DEM file.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_elev_dev_signature <- function(dem, points, output, min_scale, max_scale, step=10, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--min_scale=", wbt_file_path(min_scale)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_elev_dev_signature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max elevation deviation
#'
#' Calculates the maximum elevation deviation over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster DEVmax magnitude file.
#' @param out_scale Output raster DEVmax scale file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_elevation_deviation <- function(dem, out_mag, out_scale, min_scale, max_scale, step=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  args <- paste(args, paste0("--min_scale=", wbt_file_path(min_scale)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_elevation_deviation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max upslope elev change
#'
#' Calculates the maximum upslope change in elevation between a grid cell and its eight downslope neighbors.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_upslope_elev_change <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max_upslope_elev_change"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Maximal curvature
#'
#' Calculates a mean curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_maximal_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "maximal_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Mean curvature
#'
#' Calculates a mean curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mean_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "mean_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Min downslope elev change
#'
#' Calculates the minimum downslope change in elevation between a grid cell and its eight downslope neighbors.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_downslope_elev_change <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min_downslope_elev_change"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Minimal curvature
#'
#' Calculates a mean curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimal_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimal_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multidirectional hillshade
#'
#' Calculates a multi-direction hillshade raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param altitude Illumination source altitude in degrees.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param full_mode Optional flag indicating whether to use full 360-degrees of illumination sources.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multidirectional_hillshade <- function(dem, output, altitude=45.0, zfactor=NULL, full_mode=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(altitude)) {
    args <- paste(args, paste0("--altitude=", altitude))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (full_mode) {
    args <- paste(args, "--full_mode")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multidirectional_hillshade"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale elevation percentile
#'
#' Calculates surface roughness over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster roughness magnitude file.
#' @param out_scale Output raster roughness scale file.
#' @param sig_digits Number of significant digits.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param num_steps Number of steps.
#' @param step_nonlinearity Step nonlinearity factor (1.0-2.0 is typical).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_elevation_percentile <- function(dem, out_mag, out_scale, sig_digits=3, min_scale=4, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  if (!is.null(sig_digits)) {
    args <- paste(args, paste0("--sig_digits=", sig_digits))
  }
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(step_nonlinearity)) {
    args <- paste(args, paste0("--step_nonlinearity=", step_nonlinearity))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_elevation_percentile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale roughness
#'
#' Calculates surface roughness over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster roughness magnitude file.
#' @param out_scale Output raster roughness scale file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_roughness <- function(dem, out_mag, out_scale, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_roughness"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale roughness signature
#'
#' Calculates the surface roughness for points over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_roughness_signature <- function(dem, points, output, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--max_scale=", wbt_file_path(max_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_roughness_signature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale std dev normals
#'
#' Calculates surface roughness over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param out_mag Output raster roughness magnitude file.
#' @param out_scale Output raster roughness scale file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param num_steps Number of steps.
#' @param step_nonlinearity Step nonlinearity factor (1.0-2.0 is typical).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_std_dev_normals <- function(dem, out_mag, out_scale, min_scale=1, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--out_mag=", wbt_file_path(out_mag)))
  args <- paste(args, paste0("--out_scale=", wbt_file_path(out_scale)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(step_nonlinearity)) {
    args <- paste(args, paste0("--step_nonlinearity=", step_nonlinearity))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_std_dev_normals"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale std dev normals signature
#'
#' Calculates the surface roughness for points over a range of spatial scales.
#'
#' @param dem Input raster DEM file.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param step Step size as any positive non-zero integer.
#' @param num_steps Number of steps.
#' @param step_nonlinearity Step nonlinearity factor (1.0-2.0 is typical).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_std_dev_normals_signature <- function(dem, points, output, min_scale=1, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(step_nonlinearity)) {
    args <- paste(args, paste0("--step_nonlinearity=", step_nonlinearity))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_std_dev_normals_signature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiscale topographic position image
#'
#' Creates a multiscale topographic position image from three DEVmax rasters of differing spatial scale ranges.
#'
#' @param local Input local-scale topographic position (DEVmax) raster file.
#' @param meso Input meso-scale topographic position (DEVmax) raster file.
#' @param broad Input broad-scale topographic position (DEVmax) raster file.
#' @param output Output raster file.
#' @param lightness Image lightness value (default is 1.2).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_topographic_position_image <- function(local, meso, broad, output, lightness=1.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--local=", wbt_file_path(local)))
  args <- paste(args, paste0("--meso=", wbt_file_path(meso)))
  args <- paste(args, paste0("--broad=", wbt_file_path(broad)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(lightness)) {
    args <- paste(args, paste0("--lightness=", lightness))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiscale_topographic_position_image"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Num downslope neighbours
#'
#' Calculates the number of downslope neighbours to each grid cell in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_num_downslope_neighbours <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "num_downslope_neighbours"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Num upslope neighbours
#'
#' Calculates the number of upslope neighbours to each grid cell in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_num_upslope_neighbours <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "num_upslope_neighbours"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Openness
#'
#' This tool calculates the topographic openness index from an input DEM.
#'
#' @param input Name of the input raster DEM file.
#' @param pos_output Name of the positive openness output raster file.
#' @param neg_output Name of the negative openness output raster file.
#' @param dist Search distance, in grid cells.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_openness <- function(input, pos_output, neg_output, dist=20, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--pos_output=", wbt_file_path(pos_output)))
  args <- paste(args, paste0("--neg_output=", wbt_file_path(neg_output)))
  if (!is.null(dist)) {
    args <- paste(args, paste0("--dist=", dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "openness"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Pennock landform class
#'
#' Classifies hillslope zones based on slope, profile curvature, and plan curvature.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param slope Slope threshold value, in degrees (default is 3.0).
#' @param prof Profile curvature threshold value (default is 0.1).
#' @param plan Plan curvature threshold value (default is 0.0).
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_pennock_landform_class <- function(dem, output, slope=3.0, prof=0.1, plan=0.0, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(slope)) {
    args <- paste(args, paste0("--slope=", slope))
  }
  if (!is.null(prof)) {
    args <- paste(args, paste0("--prof=", prof))
  }
  if (!is.null(plan)) {
    args <- paste(args, paste0("--plan=", plan))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "pennock_landform_class"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Percent elev range
#'
#' Calculates percent of elevation range from a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_elev_range <- function(dem, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percent_elev_range"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Plan curvature
#'
#' Calculates a plan (contour) curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_plan_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "plan_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Profile
#'
#' Plots profiles from digital surface models.
#'
#' @param lines Input vector line file.
#' @param surface Input raster surface file.
#' @param output Output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_profile <- function(lines, surface, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--lines=", wbt_file_path(lines)))
  args <- paste(args, paste0("--surface=", wbt_file_path(surface)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "profile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Profile curvature
#'
#' Calculates a profile curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_profile_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "profile_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Relative aspect
#'
#' Calculates relative aspect (relative to a user-specified direction) from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Illumination source azimuth.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_relative_aspect <- function(dem, output, azimuth=0.0, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "relative_aspect"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Relative topographic position
#'
#' Calculates the relative topographic position index from a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_relative_topographic_position <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "relative_topographic_position"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Remove off terrain objects
#'
#' Removes off-terrain objects from a raster digital elevation model (DEM).
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Filter size (cells).
#' @param slope Slope threshold value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_off_terrain_objects <- function(dem, output, filter=11, slope=15.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(slope)) {
    args <- paste(args, paste0("--slope=", slope))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "remove_off_terrain_objects"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Ring curvature
#'
#' This tool calculates ring curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ring_curvature <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ring_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Rotor
#'
#' This tool calculates rotor from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rotor <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "rotor"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Ruggedness index
#'
#' Calculates the Riley et al.'s (1999) terrain ruggedness index from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ruggedness_index <- function(dem, output, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ruggedness_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Sediment transport index
#'
#' Calculates the sediment transport index.
#'
#' @param sca Input raster specific contributing area (SCA) file.
#' @param slope Input raster slope file.
#' @param output Output raster file.
#' @param sca_exponent SCA exponent value.
#' @param slope_exponent Slope exponent value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sediment_transport_index <- function(sca, slope, output, sca_exponent=0.4, slope_exponent=1.3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", wbt_file_path(sca)))
  args <- paste(args, paste0("--slope=", wbt_file_path(slope)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sca_exponent)) {
    args <- paste(args, paste0("--sca_exponent=", sca_exponent))
  }
  if (!is.null(slope_exponent)) {
    args <- paste(args, paste0("--slope_exponent=", slope_exponent))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sediment_transport_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Shadow animation
#'
#' This tool creates an animated GIF of shadows based on an input DEM.
#'
#' @param input Name of the input digital surface model (DSM) raster file.
#' @param palette DSM image palette; options are 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'light_quant', 'purple', 'viridis', 'gn_yl', 'pi_y_g', 'bl_yl_rd', 'deep', and 'none'.
#' @param output Name of the output HTML file (*.html).
#' @param max_dist Optional maximum search distance, in xy units. Minimum value is 5 x cell size.
#' @param date Date in format DD/MM/YYYY.
#' @param interval Time interval, in minutes (1-60).
#' @param location Location, defined as Lat/Long/UTC-offset (e.g. 43.5448/-80.2482/-4).
#' @param height Image height, in pixels.
#' @param delay GIF time delay in milliseconds.
#' @param label Label text (leave blank for none).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shadow_animation <- function(input, output, palette="atlas", max_dist="", date="21/06/2021", interval=15, location="43.5448/-80.2482/-4", height=600, delay=250, label="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(palette)) {
    args <- paste(args, paste0("--palette=", palette))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(date)) {
    args <- paste(args, paste0("--date=", date))
  }
  if (!is.null(interval)) {
    args <- paste(args, paste0("--interval=", interval))
  }
  if (!is.null(location)) {
    args <- paste(args, paste0("--location=", location))
  }
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(delay)) {
    args <- paste(args, paste0("--delay=", delay))
  }
  if (!is.null(label)) {
    args <- paste(args, paste0("--label=", label))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "shadow_animation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Shadow image
#'
#' This tool creates a raster of shadow areas based on an input DEM.
#'
#' @param input Name of the input digital surface model (DSM) raster file.
#' @param palette DSM image palette; options are 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'light_quant', 'purple', 'viridi', 'gn_yl', 'pi_y_g', 'bl_yl_rd', 'deep', and 'none'.
#' @param output Name of the output raster file.
#' @param max_dist Optional maximum search distance, in xy unites. Minimum value is 5 x cell size.
#' @param date Date in format DD/MM/YYYY.
#' @param time Time in format HH::MM, e.g. 03:15AM or 14:30.
#' @param location Location, defined as Lat/Long/UTC-offset (e.g. 43.5448/-80.2482/-4).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shadow_image <- function(input, output, palette="soft", max_dist="", date="21/06/2021", time="1300", location="43.5448/-80.2482/-4", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(palette)) {
    args <- paste(args, paste0("--palette=", palette))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(date)) {
    args <- paste(args, paste0("--date=", date))
  }
  if (!is.null(time)) {
    args <- paste(args, paste0("--time=", time))
  }
  if (!is.null(location)) {
    args <- paste(args, paste0("--location=", location))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "shadow_image"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Shape index
#'
#' This tool calculates the shape index from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shape_index <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "shape_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Slope
#'
#' Calculates a slope raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param units Units of output raster; options include 'degrees', 'radians', 'percent'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_slope <- function(dem, output, zfactor=NULL, units="degrees", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(units)) {
    args <- paste(args, paste0("--units=", units))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "slope"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Slope vs aspect plot
#'
#' This tool creates a slope-aspect relation plot from an input DEM.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output report file (*.html).
#' @param bin_size Aspect bin size, in degrees.
#' @param min_slope Minimum slope, in degrees.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_slope_vs_aspect_plot <- function(input, output, bin_size=2.0, min_slope=0.1, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(bin_size)) {
    args <- paste(args, paste0("--bin_size=", bin_size))
  }
  if (!is.null(min_slope)) {
    args <- paste(args, paste0("--min_slope=", min_slope))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "slope_vs_aspect_plot"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Slope vs elevation plot
#'
#' Creates a slope vs. elevation plot for one or more DEMs.
#'
#' @param inputs Input DEM files.
#' @param watershed Input watershed files (optional).
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_slope_vs_elevation_plot <- function(inputs, output, watershed=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(watershed)) {
    args <- paste(args, paste0("--watershed=", watershed))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "slope_vs_elevation_plot"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Smooth vegetation residual
#'
#' This tool can smooth the residual roughness due to vegetation cover in LiDAR DEMs.
#'
#' @param input Name of the input digital elevation model (DEM) raster file.
#' @param output Name of the output raster file.
#' @param max_scale Maximum search neighbourhood radius in grid cells.
#' @param dev_threshold DEVmax Threshold.
#' @param scale_threshold DEVmax scale threshold.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_smooth_vegetation_residual <- function(input, output, max_scale=30, dev_threshold=1.0, scale_threshold=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(max_scale)) {
    args <- paste(args, paste0("--max_scale=", max_scale))
  }
  if (!is.null(dev_threshold)) {
    args <- paste(args, paste0("--dev_threshold=", dev_threshold))
  }
  if (!is.null(scale_threshold)) {
    args <- paste(args, paste0("--scale_threshold=", scale_threshold))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "smooth_vegetation_residual"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Spherical std dev of normals
#'
#' Calculates the spherical standard deviation of surface normals for a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_spherical_std_dev_of_normals <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "spherical_std_dev_of_normals"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Standard deviation of slope
#'
#' Calculates the standard deviation of slope from an input DEM.
#'
#' @param input Input raster DEM file.
#' @param output Output raster DEM file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_of_slope <- function(input, output, zfactor=NULL, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "standard_deviation_of_slope"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Stream power index
#'
#' Calculates the relative stream power index.
#'
#' @param sca Input raster specific contributing area (SCA) file.
#' @param slope Input raster slope file.
#' @param output Output raster file.
#' @param exponent SCA exponent value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_power_index <- function(sca, slope, output, exponent=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", wbt_file_path(sca)))
  args <- paste(args, paste0("--slope=", wbt_file_path(slope)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "stream_power_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Surface area ratio
#'
#' Calculates a the surface area ratio of each grid cell in an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_surface_area_ratio <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "surface_area_ratio"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Tangential curvature
#'
#' Calculates a tangential curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tangential_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "tangential_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Time in daylight
#'
#' Calculates the proportion of time a location is not within an area of shadow.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param az_fraction Azimuth fraction in degrees.
#' @param max_dist Optional maximum search distance. Minimum value is 5 x cell size.
#' @param lat Centre point latitude.
#' @param long Centre point longitude.
#' @param utc_offset UTC time offset, in hours (e.g. -04:00, +06:00).
#' @param start_day Start day of the year (1-365).
#' @param end_day End day of the year (1-365).
#' @param start_time Starting hour to track shadows (e.g. 5, 5:00, 05:00:00). Assumes 24-hour time: HH:MM:SS. 'sunrise' is also a valid time.
#' @param end_time Starting hour to track shadows (e.g. 21, 21:00, 21:00:00). Assumes 24-hour time: HH:MM:SS. 'sunset' is also a valid time.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_time_in_daylight <- function(dem, output, lat, long, az_fraction=10.0, max_dist=100.0, utc_offset="0000", start_day=1, end_day=365, start_time="000000", end_time="235959", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--lat=", wbt_file_path(lat)))
  args <- paste(args, paste0("--long=", wbt_file_path(long)))
  if (!is.null(az_fraction)) {
    args <- paste(args, paste0("--az_fraction=", az_fraction))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(utc_offset)) {
    args <- paste(args, paste0("--utc_offset=", utc_offset))
  }
  if (!is.null(start_day)) {
    args <- paste(args, paste0("--start_day=", start_day))
  }
  if (!is.null(end_day)) {
    args <- paste(args, paste0("--end_day=", end_day))
  }
  if (!is.null(start_time)) {
    args <- paste(args, paste0("--start_time=", start_time))
  }
  if (!is.null(end_time)) {
    args <- paste(args, paste0("--end_time=", end_time))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "time_in_daylight"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Topographic position animation
#'
#' This tool creates an animated GIF of multi-scale local topographic position (elevation deviation).
#'
#' @param input Name of the input digital elevation model (DEM) raster file.
#' @param palette Image palette; options are 'bl_yl_rd', 'bl_w_rd', 'purple', 'gn_yl', 'pi_y_g', and 'viridis'.
#' @param output Name of the output HTML file (*.html).
#' @param min_scale Minimum search neighbourhood radius in grid cells.
#' @param num_steps Number of steps.
#' @param step_nonlinearity Step nonlinearity factor (1.0-2.0 is typical).
#' @param height Image height, in pixels.
#' @param delay GIF time delay in milliseconds.
#' @param label Label text (leave blank for none).
#' @param dev_max Do you want to use DEVmax instead of DEV for measuring local topographic position?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_topographic_position_animation <- function(input, output, palette="bl_yl_rd", min_scale=1, num_steps=100, step_nonlinearity=1.5, height=600, delay=250, label="", dev_max=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(palette)) {
    args <- paste(args, paste0("--palette=", palette))
  }
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(num_steps)) {
    args <- paste(args, paste0("--num_steps=", num_steps))
  }
  if (!is.null(step_nonlinearity)) {
    args <- paste(args, paste0("--step_nonlinearity=", step_nonlinearity))
  }
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(delay)) {
    args <- paste(args, paste0("--delay=", delay))
  }
  if (!is.null(label)) {
    args <- paste(args, paste0("--label=", label))
  }
  if (dev_max) {
    args <- paste(args, "--dev_max")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "topographic_position_animation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Total curvature
#'
#' Calculates a total curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param log Display output values using a log-scale.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_total_curvature <- function(dem, output, log=FALSE, zfactor=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "total_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Unsphericity
#'
#' This tool calculates the unsphericity curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_unsphericity <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "unsphericity"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Vertical excess curvature
#'
#' This tool calculates vertical excess curvature from an input DEM.
#'
#' @param dem Name of the input raster DEM file.
#' @param output Name of the output raster image file.
#' @param log Display output values using a log-scale.
#' @param zfactor Z conversion factor.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vertical_excess_curvature <- function(dem, output, log=FALSE, zfactor=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "vertical_excess_curvature"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Viewshed
#'
#' Identifies the viewshed for a point or set of points.
#'
#' @param dem Input raster DEM file.
#' @param stations Input viewing station vector file.
#' @param output Output raster file.
#' @param height Viewing station height, in z units.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_viewshed <- function(dem, stations, output, height=2.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--stations=", wbt_file_path(stations)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "viewshed"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Visibility index
#'
#' Estimates the relative visibility of sites in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param height Viewing station height, in z units.
#' @param res_factor The resolution factor determines the density of measured viewsheds.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_visibility_index <- function(dem, output, height=2.0, res_factor=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", wbt_file_path(dem)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(res_factor)) {
    args <- paste(args, paste0("--res_factor=", res_factor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "visibility_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Wetness index
#'
#' Calculates the topographic wetness index, Ln(A / tan(slope)).
#'
#' @param sca Input raster specific contributing area (SCA) file.
#' @param slope Input raster slope file (in degrees).
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_wetness_index <- function(sca, slope, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", wbt_file_path(sca)))
  args <- paste(args, paste0("--slope=", wbt_file_path(slope)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "wetness_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


