#' Aspect
#'
#' Calculates an aspect raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_aspect <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_normal_vector_angular_deviation <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_circular_variance_of_aspect <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_dev_from_mean_elev <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diff_from_mean_elev <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_directional_relief <- function(dem, output, azimuth=0.0, max_dist=NULL, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_downslope_index <- function(dem, output, drop=2.0, out_type="tangent", wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(drop)) {
    args <- paste(args, paste0("--drop=", drop))
  }
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_density <- function(dem, output, filter=11, norm_diff=5.0, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elev above pit
#'
#' Calculate the elevation of each grid cell above the nearest downstream pit cell or grid edge cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_above_pit <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_percentile <- function(dem, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elev relative to min max
#'
#' Calculates the elevation of a location relative to the minimum and maximum elevations in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_relative_to_min_max <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elev_relative_to_watershed_min_max <- function(dem, watersheds, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--watersheds=", watersheds))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_feature_preserving_smoothing <- function(dem, output, filter=11, norm_diff=15.0, num_iter=3, max_diff=0.5, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fetch_analysis <- function(dem, output, azimuth=0.0, hgt_inc=0.05, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(hgt_inc)) {
    args <- paste(args, paste0("--hgt_inc=", hgt_inc))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill missing data
#'
#' Fills NoData holes in a DEM.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filter Filter size (cells).
#' @param weight IDW weight value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_missing_data <- function(input, output, filter=11, weight=2.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_ridges <- function(dem, output, line_thin=TRUE, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (line_thin) {
    args <- paste(args, "--line_thin")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hillshade <- function(dem, output, azimuth=315.0, altitude=30.0, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Horizon angle
#'
#' Calculates horizon angle (maximum upwind slope) for each grid cell in an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param azimuth Wind azimuth in degrees.
#' @param max_dist Optional maximum search distance (unspecified if none; in xy units).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_horizon_angle <- function(dem, output, azimuth=0.0, max_dist=NULL, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(max_dist)) {
    args <- paste(args, paste0("--max_dist=", max_dist))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hypsometric_analysis <- function(inputs, output, watershed=NULL, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(watershed)) {
    args <- paste(args, paste0("--watershed=", watershed))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_anisotropy_dev <- function(dem, out_mag, out_scale, max_scale, min_scale=3, step=2, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_anisotropy_dev_signature <- function(dem, points, output, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_branch_length <- function(dem, output, log=FALSE, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (log) {
    args <- paste(args, "--log")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_difference_from_mean <- function(dem, out_mag, out_scale, min_scale, max_scale, step=1, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
  args <- paste(args, paste0("--min_scale=", min_scale))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max downslope elev change
#'
#' Calculates the maximum downslope change in elevation between a grid cell and its eight downslope neighbors.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_downslope_elev_change <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_elev_dev_signature <- function(dem, points, output, min_scale, max_scale, step=10, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--min_scale=", min_scale))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_elevation_deviation <- function(dem, out_mag, out_scale, min_scale, max_scale, step=1, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
  args <- paste(args, paste0("--min_scale=", min_scale))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min downslope elev change
#'
#' Calculates the minimum downslope change in elevation between a grid cell and its eight downslope neighbors.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_downslope_elev_change <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_elevation_percentile <- function(dem, out_mag, out_scale, sig_digits=3, min_scale=4, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_roughness <- function(dem, out_mag, out_scale, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_roughness_signature <- function(dem, points, output, max_scale, min_scale=1, step=1, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--max_scale=", max_scale))
  if (!is.null(min_scale)) {
    args <- paste(args, paste0("--min_scale=", min_scale))
  }
  if (!is.null(step)) {
    args <- paste(args, paste0("--step=", step))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_std_dev_normals <- function(dem, out_mag, out_scale, min_scale=1, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_mag=", out_mag))
  args <- paste(args, paste0("--out_scale=", out_scale))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_std_dev_normals_signature <- function(dem, points, output, min_scale=1, step=1, num_steps=10, step_nonlinearity=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiscale_topographic_position_image <- function(local, meso, broad, output, lightness=1.2, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--local=", local))
  args <- paste(args, paste0("--meso=", meso))
  args <- paste(args, paste0("--broad=", broad))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(lightness)) {
    args <- paste(args, paste0("--lightness=", lightness))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Num downslope neighbours
#'
#' Calculates the number of downslope neighbours to each grid cell in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_num_downslope_neighbours <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Num upslope neighbours
#'
#' Calculates the number of upslope neighbours to each grid cell in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_num_upslope_neighbours <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_pennock_landform_class <- function(dem, output, slope=3.0, prof=0.1, plan=0.0, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percent_elev_range <- function(dem, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Plan curvature
#'
#' Calculates a plan (contour) curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_plan_curvature <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_profile <- function(lines, surface, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--lines=", lines))
  args <- paste(args, paste0("--surface=", surface))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Profile curvature
#'
#' Calculates a profile curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_profile_curvature <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_relative_aspect <- function(dem, output, azimuth=0.0, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(azimuth)) {
    args <- paste(args, paste0("--azimuth=", azimuth))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_relative_topographic_position <- function(dem, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_off_terrain_objects <- function(dem, output, filter=11, slope=15.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(slope)) {
    args <- paste(args, paste0("--slope=", slope))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ruggedness_index <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sediment_transport_index <- function(sca, slope, output, sca_exponent=0.4, slope_exponent=1.3, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", sca))
  args <- paste(args, paste0("--slope=", slope))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sca_exponent)) {
    args <- paste(args, paste0("--sca_exponent=", sca_exponent))
  }
  if (!is.null(slope_exponent)) {
    args <- paste(args, paste0("--slope_exponent=", slope_exponent))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Slope
#'
#' Calculates a slope raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_slope <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_slope_vs_elevation_plot <- function(inputs, output, watershed=NULL, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(watershed)) {
    args <- paste(args, paste0("--watershed=", watershed))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_spherical_std_dev_of_normals <- function(dem, output, filter=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_of_slope <- function(input, output, zfactor=1.0, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_power_index <- function(sca, slope, output, exponent=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", sca))
  args <- paste(args, paste0("--slope=", slope))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Surface area ratio
#'
#' Calculates a the surface area ratio of each grid cell in an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_surface_area_ratio <- function(dem, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tangential curvature
#'
#' Calculates a tangential curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tangential_curvature <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Total curvature
#'
#' Calculates a total curvature raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_total_curvature <- function(dem, output, zfactor=1.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_viewshed <- function(dem, stations, output, height=2.0, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--stations=", stations))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
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
#'
#' @return Returns the tool text outputs.
#' @export
wbt_visibility_index <- function(dem, output, height=2.0, res_factor=2, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  if (!is.null(res_factor)) {
    args <- paste(args, paste0("--res_factor=", res_factor))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Wetness index
#'
#' Calculates the topographic wetness index, Ln(A / tan(slope)).
#'
#' @param sca Input raster specific contributing area (SCA) file.
#' @param slope Input raster slope file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_wetness_index <- function(sca, slope, output, wd=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--sca=", sca))
  args <- paste(args, paste0("--slope=", slope))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


