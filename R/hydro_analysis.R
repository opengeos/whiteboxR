#' Average flowpath slope
#'
#' Measures the average slope gradient from each grid cell to all upslope divide cells.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_flowpath_slope <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Average upslope flowpath length
#'
#' Measures the average length of all upslope flowpaths draining each grid cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_average_upslope_flowpath_length <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Basins
#'
#' Identifies drainage basins that drain to the DEM edge.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_basins <- function(d8_pntr, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Breach depressions
#'
#' Breaches all of the depressions in a DEM using Lindsay's (2016) algorithm. This should be preferred over depression filling in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param max_depth Optional maximum breach depth (default is Inf).
#' @param max_length Optional maximum breach channel length (in grid cells; default is Inf).
#' @param flat_increment Optional elevation increment applied to flat areas.
#' @param fill_pits Optional flag indicating whether to fill single-cell pits.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_breach_depressions <- function(dem, output, max_depth=NULL, max_length=NULL, flat_increment=NULL, fill_pits=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(max_depth)) {
    args <- paste(args, paste0("--max_depth=", max_depth))
  }
  if (!is.null(max_length)) {
    args <- paste(args, paste0("--max_length=", max_length))
  }
  if (!is.null(flat_increment)) {
    args <- paste(args, paste0("--flat_increment=", flat_increment))
  }
  if (fill_pits) {
    args <- paste(args, "--fill_pits")
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


#' Breach depressions least cost
#'
#' Breaches the depressions in a DEM using a least-cost pathway method.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param dist Maximum search distance for breach paths in cells.
#' @param max_cost Optional maximum breach cost (default is Inf).
#' @param min_dist Optional flag indicating whether to minimize breach distances.
#' @param flat_increment Optional elevation increment applied to flat areas.
#' @param fill Optional flag indicating whether to fill any remaining unbreached depressions.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_breach_depressions_least_cost <- function(dem, output, dist, max_cost=NULL, min_dist=TRUE, flat_increment=NULL, fill=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--dist=", dist))
  if (!is.null(max_cost)) {
    args <- paste(args, paste0("--max_cost=", max_cost))
  }
  if (min_dist) {
    args <- paste(args, "--min_dist")
  }
  if (!is.null(flat_increment)) {
    args <- paste(args, paste0("--flat_increment=", flat_increment))
  }
  if (fill) {
    args <- paste(args, "--fill")
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


#' Breach single cell pits
#'
#' Removes single-cell pits from an input DEM by breaching.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_breach_single_cell_pits <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Burn streams at roads
#'
#' Burns-in streams at the sites of road embankments.
#'
#' @param dem Input raster digital elevation model (DEM) file.
#' @param streams Input vector streams file.
#' @param roads Input vector roads file.
#' @param output Output raster file.
#' @param width Maximum road embankment width, in map units.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_burn_streams_at_roads <- function(dem, streams, roads, output, width=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--roads=", roads))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(width)) {
    args <- paste(args, paste0("--width=", width))
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


#' Change in contributing area
#'
#' This tool calculates the downslope rate of change in specific contributing area (SCA).
#'
#' @param dem Name of the input DEM raster file; must be depressionless.
#' @param output Name of the output raster file.
#' @param exponent Optional exponent parameter; default is 1.0.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Log-transform the output values?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_change_in_contributing_area <- function(dem, output, exponent=1.0, threshold=NULL, log=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
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


#' D8 flow accumulation
#'
#' Calculates a D8 flow accumulation raster from an input DEM or flow pointer.
#'
#' @param input Input raster DEM or D8 pointer file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells' (default), 'catchment area', and 'specific contributing area'.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param pntr Is the input raster a D8 flow pointer rather than a DEM?.
#' @param esri_pntr Input D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d8_flow_accumulation <- function(input, output, out_type="cells", log=FALSE, clip=FALSE, pntr=FALSE, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (pntr) {
    args <- paste(args, "--pntr")
  }
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' D8 mass flux
#'
#' Performs a D8 mass flux calculation.
#'
#' @param dem Input raster DEM file.
#' @param loading Input loading raster file.
#' @param efficiency Input efficiency raster file.
#' @param absorption Input absorption raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d8_mass_flux <- function(dem, loading, efficiency, absorption, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--loading=", loading))
  args <- paste(args, paste0("--efficiency=", efficiency))
  args <- paste(args, paste0("--absorption=", absorption))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D8 pointer
#'
#' Calculates a D8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d8_pointer <- function(dem, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' D inf flow accumulation
#'
#' Calculates a D-infinity flow accumulation raster from an input DEM.
#'
#' @param input Input raster DEM or D-infinity pointer file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells', 'sca' (default), and 'ca'.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param pntr Is the input raster a D-infinity flow pointer rather than a DEM?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d_inf_flow_accumulation <- function(input, output, out_type="Specific Contributing Area", threshold=NULL, log=FALSE, clip=FALSE, pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (pntr) {
    args <- paste(args, "--pntr")
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


#' D inf mass flux
#'
#' Performs a D-infinity mass flux calculation.
#'
#' @param dem Input raster DEM file.
#' @param loading Input loading raster file.
#' @param efficiency Input efficiency raster file.
#' @param absorption Input absorption raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d_inf_mass_flux <- function(dem, loading, efficiency, absorption, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--loading=", loading))
  args <- paste(args, paste0("--efficiency=", efficiency))
  args <- paste(args, paste0("--absorption=", absorption))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D inf pointer
#'
#' Calculates a D-infinity flow pointer (flow direction) raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_d_inf_pointer <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Depth in sink
#'
#' Measures the depth of sinks (depressions) in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zero_background Flag indicating whether the background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_depth_in_sink <- function(dem, output, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (zero_background) {
    args <- paste(args, "--zero_background")
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


#' Downslope distance to stream
#'
#' Measures distance to the nearest downslope stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param dinf Use the D-infinity flow algorithm instead of D8?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_downslope_distance_to_stream <- function(dem, streams, output, dinf=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (dinf) {
    args <- paste(args, "--dinf")
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


#' Downslope flowpath length
#'
#' Calculates the downslope flowpath length from each cell to basin outlet.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param watersheds Optional input watershed raster file.
#' @param weights Optional input weights raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_downslope_flowpath_length <- function(d8_pntr, output, watersheds=NULL, weights=NULL, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(watersheds)) {
    args <- paste(args, paste0("--watersheds=", watersheds))
  }
  if (!is.null(weights)) {
    args <- paste(args, paste0("--weights=", weights))
  }
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Edge contamination
#'
#' This tool identifies grid cells within an input DEM that may be impacted by edge contamination for hydrological applications.
#'
#' @param dem Name of the input DEM raster file; must be depressionless.
#' @param output Name of the output raster file.
#' @param flow_type Flow algorithm type, one of 'd8', 'mfd', or 'dinf'.
#' @param zfactor Optional multiplier for when the vertical and horizontal units are not the same.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_contamination <- function(dem, output, flow_type="mfd", zfactor="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(flow_type)) {
    args <- paste(args, paste0("--flow_type=", flow_type))
  }
  if (!is.null(zfactor)) {
    args <- paste(args, paste0("--zfactor=", zfactor))
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


#' Elevation above stream
#'
#' Calculates the elevation of cells above the nearest downslope stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elevation_above_stream <- function(dem, streams, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elevation above stream euclidean
#'
#' Calculates the elevation of cells above the nearest (Euclidean distance) stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_elevation_above_stream_euclidean <- function(dem, streams, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fd8 flow accumulation
#'
#' Calculates an FD8 flow accumulation raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param exponent Optional exponent parameter; default is 1.1.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fd8_flow_accumulation <- function(dem, output, out_type="specific contributing area", exponent=1.1, threshold=NULL, log=FALSE, clip=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
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


#' Fd8 pointer
#'
#' Calculates an FD8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fd8_pointer <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill burn
#'
#' Burns streams into a DEM using the FillBurn (Saunders, 1999) method.
#'
#' @param dem Input raster DEM file.
#' @param streams Input vector streams file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_burn <- function(dem, streams, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill depressions
#'
#' Fills all of the depressions in a DEM. Depression breaching should be preferred in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param fix_flats Optional flag indicating whether flat areas should have a small gradient applied.
#' @param flat_increment Optional elevation increment applied to flat areas.
#' @param max_depth Optional maximum depression depth to fill.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_depressions <- function(dem, output, fix_flats=TRUE, flat_increment=NULL, max_depth=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (fix_flats) {
    args <- paste(args, "--fix_flats")
  }
  if (!is.null(flat_increment)) {
    args <- paste(args, paste0("--flat_increment=", flat_increment))
  }
  if (!is.null(max_depth)) {
    args <- paste(args, paste0("--max_depth=", max_depth))
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


#' Fill depressions planchon and darboux
#'
#' Fills all of the depressions in a DEM using the Planchon and Darboux (2002) method.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param fix_flats Optional flag indicating whether flat areas should have a small gradient applied.
#' @param flat_increment Optional elevation increment applied to flat areas.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_depressions_planchon_and_darboux <- function(dem, output, fix_flats=TRUE, flat_increment=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (fix_flats) {
    args <- paste(args, "--fix_flats")
  }
  if (!is.null(flat_increment)) {
    args <- paste(args, paste0("--flat_increment=", flat_increment))
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


#' Fill depressions wang and liu
#'
#' Fills all of the depressions in a DEM using the Wang and Liu (2006) method. Depression breaching should be preferred in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param fix_flats Optional flag indicating whether flat areas should have a small gradient applied.
#' @param flat_increment Optional elevation increment applied to flat areas.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_depressions_wang_and_liu <- function(dem, output, fix_flats=TRUE, flat_increment=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (fix_flats) {
    args <- paste(args, "--fix_flats")
  }
  if (!is.null(flat_increment)) {
    args <- paste(args, paste0("--flat_increment=", flat_increment))
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


#' Fill single cell pits
#'
#' Raises pit cells to the elevation of their lowest neighbour.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fill_single_cell_pits <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find no flow cells
#'
#' Finds grid cells with no downslope neighbours.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_no_flow_cells <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find parallel flow
#'
#' Finds areas of parallel flow in D8 flow direction rasters.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_parallel_flow <- function(d8_pntr, streams, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flatten lakes
#'
#' Flattens lake polygons in a raster DEM.
#'
#' @param dem Input raster DEM file.
#' @param lakes Input lakes vector polygons file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flatten_lakes <- function(dem, lakes, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--lakes=", lakes))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flood order
#'
#' Assigns each DEM grid cell its order in the sequence of inundations that are encountered during a search starting from the edges, moving inward at increasing elevations.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flood_order <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flow accumulation full workflow
#'
#' Resolves all of the depressions in a DEM, outputting a breached DEM, an aspect-aligned non-divergent flow pointer, and a flow accumulation raster.
#'
#' @param dem Input raster DEM file.
#' @param out_dem Output raster DEM file.
#' @param out_pntr Output raster flow pointer file.
#' @param out_accum Output raster flow accumulation file.
#' @param out_type Output type; one of 'cells', 'sca' (default), and 'ca'.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flow_accumulation_full_workflow <- function(dem, out_dem, out_pntr, out_accum, out_type="Specific Contributing Area", log=FALSE, clip=FALSE, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_dem=", out_dem))
  args <- paste(args, paste0("--out_pntr=", out_pntr))
  args <- paste(args, paste0("--out_accum=", out_accum))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Flow length diff
#'
#' Calculates the local maximum absolute difference in downslope flowpath length, useful in mapping drainage divides and ridges.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flow_length_diff <- function(d8_pntr, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Hillslopes
#'
#' Identifies the individual hillslopes draining to each link in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hillslopes <- function(d8_pntr, streams, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Hydrologic connectivity
#'
#' This tool evaluates hydrologic connectivity within a DEM.
#'
#' @param dem Name of the input DEM raster file; must be depressionless.
#' @param output1 Name of the output downslope unsaturated length (DUL) file.
#' @param output2 Name of the output upslope disconnected saturated area (UDSA) file.
#' @param exponent Optional exponent parameter; default is 1.0.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hydrologic_connectivity <- function(dem, output1, output2, exponent=1.0, threshold=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output1=", output1))
  args <- paste(args, paste0("--output2=", output2))
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
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


#' Impoundment size index
#'
#' Calculates the impoundment size resulting from damming a DEM.
#'
#' @param dem Input raster DEM file.
#' @param out_mean Output mean flooded depth file.
#' @param out_max Output maximum flooded depth file.
#' @param out_volume Output flooded volume file.
#' @param out_area Output flooded area file.
#' @param out_dam_height Output dam height file.
#' @param damlength Maximum length of the dam.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_impoundment_size_index <- function(dem, damlength, out_mean=NULL, out_max=NULL, out_volume=NULL, out_area=NULL, out_dam_height=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--damlength=", damlength))
  if (!is.null(out_mean)) {
    args <- paste(args, paste0("--out_mean=", out_mean))
  }
  if (!is.null(out_max)) {
    args <- paste(args, paste0("--out_max=", out_max))
  }
  if (!is.null(out_volume)) {
    args <- paste(args, paste0("--out_volume=", out_volume))
  }
  if (!is.null(out_area)) {
    args <- paste(args, paste0("--out_area=", out_area))
  }
  if (!is.null(out_dam_height)) {
    args <- paste(args, paste0("--out_dam_height=", out_dam_height))
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


#' Insert dams
#'
#' Calculates the impoundment size resulting from damming a DEM.
#'
#' @param dem Input raster DEM file.
#' @param dam_pts Input vector dam points file.
#' @param output Output file.
#' @param damlength Maximum length of the dam.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_insert_dams <- function(dem, dam_pts, output, damlength, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--dam_pts=", dam_pts))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--damlength=", damlength))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Isobasins
#'
#' Divides a landscape into nearly equal sized drainage basins (i.e. watersheds).
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param size Target basin size, in grid cells.
#' @param connections Output upstream-downstream flow connections among basins?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_isobasins <- function(dem, output, size, connections=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--size=", size))
  if (connections) {
    args <- paste(args, "--connections")
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


#' Jenson snap pour points
#'
#' Moves outlet points used to specify points of interest in a watershedding operation to the nearest stream cell.
#'
#' @param pour_pts Input vector pour points (outlet) file.
#' @param streams Input raster streams file.
#' @param output Output vector file.
#' @param snap_dist Maximum snap distance in map units.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_jenson_snap_pour_points <- function(pour_pts, streams, output, snap_dist, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--snap_dist=", snap_dist))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Longest flowpath
#'
#' Delineates the longest flowpaths for a group of subbasins or watersheds.
#'
#' @param dem Input raster DEM file.
#' @param basins Input raster basins file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_longest_flowpath <- function(dem, basins, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--basins=", basins))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Low points on headwater divides
#'
#' This tool locates saddle points along ridges within a digital elevation model (DEM).
#'
#' @param dem Name of the input DEM raster file.
#' @param streams Name of the input stream channel raster file.
#' @param output Name of the output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_low_points_on_headwater_divides <- function(dem, streams, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max upslope flowpath length
#'
#' Measures the maximum length of all upslope flowpaths draining each grid cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max_upslope_flowpath_length <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Md inf flow accumulation
#'
#' Calculates an FD8 flow accumulation raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param exponent Optional exponent parameter; default is 1.1.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_md_inf_flow_accumulation <- function(dem, output, out_type="specific contributing area", exponent=1.1, threshold=NULL, log=FALSE, clip=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
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


#' Num inflowing neighbours
#'
#' Computes the number of inflowing neighbours to each cell in an input DEM based on the D8 algorithm.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_num_inflowing_neighbours <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Qin flow accumulation
#'
#' This tool calculates Qin et al. (2007) flow accumulation.
#'
#' @param dem Name of the input DEM raster file; must be depressionless.
#' @param output Name of the output upslope saturated area file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param exponent Optional upper-bound exponent parameter; default is 10.0.
#' @param max_slope Optional upper-bound slope parameter, in degrees (0-90); default is 45.0.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Log-transform the output values?.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_qin_flow_accumulation <- function(dem, output, out_type="specific contributing area", exponent=10.0, max_slope=45.0, threshold=NULL, log=FALSE, clip=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(max_slope)) {
    args <- paste(args, paste0("--max_slope=", max_slope))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
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


#' Quinn flow accumulation
#'
#' This tool calculates Quinn et al. (1995) flow accumulation.
#'
#' @param dem Name of the input DEM raster file; must be depressionless.
#' @param output Name of the output raster file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param exponent Optional exponent parameter; default is 1.0.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is infinity.
#' @param log Log-transform the output values?.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_quinn_flow_accumulation <- function(dem, output, out_type="specific contributing area", exponent=1.0, threshold=NULL, log=FALSE, clip=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
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


#' Raise walls
#'
#' Raises walls in a DEM along a line or around a polygon, e.g. a watershed.
#'
#' @param input Input vector lines or polygons file.
#' @param breach Optional input vector breach lines.
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param height Wall height.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raise_walls <- function(input, dem, output, breach=NULL, height=100.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(breach)) {
    args <- paste(args, paste0("--breach=", breach))
  }
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
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


#' Rho8 flow accumulation
#'
#' This tool calculates Fairfield and Leymarie (1991) flow accumulation.
#'
#' @param input Input DEM or Rho8 pointer file; if a DEM is used, it must be depressionless.
#' @param output Name of the output raster file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param log Log-transform the output values?.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param pntr Is the input raster a Rho8 flow pointer rather than a DEM?.
#' @param esri_pntr Does the input Rho8 pointer use the ESRI style scheme?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rho8_flow_accumulation <- function(input, output, out_type="specific contributing area", log=FALSE, clip=FALSE, pntr=FALSE, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (log) {
    args <- paste(args, "--log")
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (pntr) {
    args <- paste(args, "--pntr")
  }
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Rho8 pointer
#'
#' Calculates a stochastic Rho8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rho8_pointer <- function(dem, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Sink
#'
#' Identifies the depressions in a DEM, giving each feature a unique identifier.
#'
#' @param input Input raster DEM file.
#' @param output Output raster file.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sink <- function(input, output, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (zero_background) {
    args <- paste(args, "--zero_background")
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


#' Snap pour points
#'
#' Moves outlet points used to specify points of interest in a watershedding operation to the cell with the highest flow accumulation in its neighbourhood.
#'
#' @param pour_pts Input vector pour points (outlet) file.
#' @param flow_accum Input raster D8 flow accumulation file.
#' @param output Output vector file.
#' @param snap_dist Maximum snap distance in map units.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_snap_pour_points <- function(pour_pts, flow_accum, output, snap_dist, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--flow_accum=", flow_accum))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--snap_dist=", snap_dist))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stochastic depression analysis
#'
#' Performs a stochastic analysis of depressions within a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output file.
#' @param rmse The DEM's root-mean-square-error (RMSE), in z units. This determines error magnitude.
#' @param range The error field's correlation length, in xy-units.
#' @param iterations The number of iterations.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stochastic_depression_analysis <- function(dem, output, rmse, range, iterations=100, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--rmse=", rmse))
  args <- paste(args, paste0("--range=", range))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
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


#' Strahler order basins
#'
#' Identifies Strahler-order basins from an input stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_strahler_order_basins <- function(d8_pntr, streams, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Subbasins
#'
#' Identifies the catchments, or sub-basin, draining to each link in a stream network.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_subbasins <- function(d8_pntr, streams, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Trace downslope flowpaths
#'
#' Traces downslope flowpaths from one or more target sites (i.e. seed points).
#'
#' @param seed_pts Input vector seed points file.
#' @param d8_pntr Input D8 pointer raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_trace_downslope_flowpaths <- function(seed_pts, d8_pntr, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--seed_pts=", seed_pts))
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
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


#' Unnest basins
#'
#' Extract whole watersheds for a set of outlet points.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param pour_pts Input vector pour points (outlet) file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_unnest_basins <- function(d8_pntr, pour_pts, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


#' Upslope depression storage
#'
#' Estimates the average upslope depression storage depth.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_upslope_depression_storage <- function(dem, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Watershed
#'
#' Identifies the watershed, or drainage basin, draining to a set of target cells.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param pour_pts Input pour points (outlet) file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_watershed <- function(d8_pntr, pour_pts, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
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


