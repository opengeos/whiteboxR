#' @title Adaptive filter
#'
#' @description Performs an adaptive filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param threshold Difference from mean threshold, in standard deviations.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_adaptive_filter <- function(input, output, filterx=11, filtery=11, threshold=2.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "adaptive_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Bilateral filter
#'
#' @description A bilateral filter is an edge-preserving smoothing filter introduced by Tomasi and Manduchi (1998).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma_dist Standard deviation in distance in pixels.
#' @param sigma_int Standard deviation in intensity in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_bilateral_filter <- function(input, output, sigma_dist=0.75, sigma_int=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma_dist)) {
    args <- paste(args, paste0("--sigma_dist=", sigma_dist))
  }
  if (!is.null(sigma_int)) {
    args <- paste(args, paste0("--sigma_int=", sigma_int))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "bilateral_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Canny edge detection
#'
#' @description This tool performs a Canny edge-detection filter on an input image.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output raster image file.
#' @param sigma Sigma value used in Gaussian filtering, default = 0.5.
#' @param low Low threshold, default = 0.05.
#' @param high High threshold, default = 0.15.
#' @param add_back Add the edge cells back to the input image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_canny_edge_detection <- function(input, output, sigma=0.5, low=0.05, high=0.15, add_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(low)) {
    args <- paste(args, paste0("--low=", low))
  }
  if (!is.null(high)) {
    args <- paste(args, paste0("--high=", high))
  }
  if (add_back) {
    args <- paste(args, "--add_back")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "canny_edge_detection"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Conservative smoothing filter
#'
#' @description Performs a conservative-smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_conservative_smoothing_filter <- function(input, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "conservative_smoothing_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Corner detection
#'
#' @description Identifies corner patterns in boolean images using hit-and-miss pattern matching.
#'
#' @param input Input boolean image.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_corner_detection <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "corner_detection"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Diff of gaussian filter
#'
#' @description Performs a Difference of Gaussian (DoG) filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma1 Standard deviation distance in pixels.
#' @param sigma2 Standard deviation distance in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diff_of_gaussian_filter <- function(input, output, sigma1=2.0, sigma2=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma1)) {
    args <- paste(args, paste0("--sigma1=", sigma1))
  }
  if (!is.null(sigma2)) {
    args <- paste(args, paste0("--sigma2=", sigma2))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "diff_of_gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Diversity filter
#'
#' @description Assigns each cell in the output grid the number of different values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diversity_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "diversity_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Edge preserving mean filter
#'
#' @description Performs a simple edge-preserving mean filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param threshold Maximum difference in values.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_preserving_mean_filter <- function(input, output, threshold, filter=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--threshold=", wbt_file_path(threshold)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "edge_preserving_mean_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Emboss filter
#'
#' @description Performs an emboss filter on an image, similar to a hillshade operation.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param direction Direction of reflection; options include 'n', 's', 'e', 'w', 'ne', 'se', 'nw', 'sw'.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_emboss_filter <- function(input, output, direction="n", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "emboss_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Fast almost gaussian filter
#'
#' @description Performs a fast approximate Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fast_almost_gaussian_filter <- function(input, output, sigma=1.8, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "fast_almost_gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Gaussian filter
#'
#' @description Performs a Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_filter <- function(input, output, sigma=0.75, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title High pass bilateral filter
#'
#' @description Performs a high-pass bilateral filter, by differencing an input image by the bilateral filter by Tomasi and Manduchi (1998).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma_dist Standard deviation in distance in pixels.
#' @param sigma_int Standard deviation in intensity in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_high_pass_bilateral_filter <- function(input, output, sigma_dist=0.75, sigma_int=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma_dist)) {
    args <- paste(args, paste0("--sigma_dist=", sigma_dist))
  }
  if (!is.null(sigma_int)) {
    args <- paste(args, paste0("--sigma_int=", sigma_int))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "high_pass_bilateral_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title High pass filter
#'
#' @description Performs a high-pass filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_high_pass_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "high_pass_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title High pass median filter
#'
#' @description Performs a high pass median filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_high_pass_median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "high_pass_median_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title K nearest mean filter
#'
#' @description A k-nearest mean filter is a type of edge-preserving smoothing filter.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param k k-value in pixels; this is the number of nearest-valued neighbours to use.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_k_nearest_mean_filter <- function(input, output, filterx=11, filtery=11, k=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "k_nearest_mean_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Laplacian filter
#'
#' @description Performs a Laplacian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 3x3(1), 3x3(2), 3x3(3), 3x3(4), 5x5(1), and 5x5(2) (default is 3x3(1)).
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_laplacian_filter <- function(input, output, variant="3x3(1)", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", wbt_file_path(variant)))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "laplacian_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Laplacian of gaussian filter
#'
#' @description Performs a Laplacian-of-Gaussian (LoG) filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_laplacian_of_gaussian_filter <- function(input, output, sigma=0.75, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "laplacian_of_gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Lee sigma filter
#'
#' @description Performs a Lee (Sigma) smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sigma Sigma value should be related to the standard deviation of the distribution of image speckle noise.
#' @param m M-threshold value the minimum allowable number of pixels within the intensity range.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lee_sigma_filter <- function(input, output, filterx=11, filtery=11, sigma=10.0, m=5.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(m)) {
    args <- paste(args, paste0("--m=", m))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "lee_sigma_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Line detection filter
#'
#' @description Performs a line-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 'v' (vertical), 'h' (horizontal), '45', and '135' (default is 'v').
#' @param absvals Optional flag indicating whether outputs should be absolute values.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_detection_filter <- function(input, output, variant="vertical", absvals=FALSE, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", wbt_file_path(variant)))
  }
  if (absvals) {
    args <- paste(args, "--absvals")
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "line_detection_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Majority filter
#'
#' @description Assigns each cell in the output grid the most frequently occurring value (mode) in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_majority_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "majority_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Maximum filter
#'
#' @description Assigns each cell in the output grid the maximum value in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_maximum_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "maximum_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Mean filter
#'
#' @description Performs a mean filter (low-pass filter) on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mean_filter <- function(input, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "mean_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Median filter
#'
#' @description Performs a median filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "median_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Minimum filter
#'
#' @description Assigns each cell in the output grid the minimum value in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "minimum_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Olympic filter
#'
#' @description Performs an olympic smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_olympic_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "olympic_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Percentile filter
#'
#' @description Performs a percentile filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percentile_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percentile_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Prewitt filter
#'
#' @description Performs a Prewitt edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_prewitt_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "prewitt_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Range filter
#'
#' @description Assigns each cell in the output grid the range of values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_range_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "range_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Roberts cross filter
#'
#' @description Performs a Robert's cross edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_roberts_cross_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "roberts_cross_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Scharr filter
#'
#' @description Performs a Scharr edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_scharr_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "scharr_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Sobel filter
#'
#' @description Performs a Sobel edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 3x3 and 5x5 (default is 3x3).
#' @param clip Optional amount to clip the distribution tails by, in percent (default is 0.0).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sobel_filter <- function(input, output, variant="3x3", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", wbt_file_path(variant)))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sobel_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Standard deviation filter
#'
#' @description Assigns each cell in the output grid the standard deviation of values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "standard_deviation_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Total filter
#'
#' @description Performs a total filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_total_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "total_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Unsharp masking
#'
#' @description An image sharpening technique that enhances edges.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param amount A percentage and controls the magnitude of each overshoot.
#' @param threshold Controls the minimal brightness change that will be sharpened.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_unsharp_masking <- function(input, output, sigma=0.75, amount=100.0, threshold=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(amount)) {
    args <- paste(args, paste0("--amount=", amount))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "unsharp_masking"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title User ined weights filter
#'
#' @description Performs a user-defined weights filter on an image.
#'
#' @param input Input raster file.
#' @param weights Input weights file.
#' @param output Output raster file.
#' @param center Kernel center cell; options include 'center', 'upper-left', 'upper-right', 'lower-left', 'lower-right'.
#' @param normalize Normalize kernel weights? This can reduce edge effects and lessen the impact of data gaps (nodata) but is not suited when the kernel weights sum to zero.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsFilters
#'
#' @return Returns the tool text outputs.
#' @export
wbt_user_defined_weights_filter <- function(input, weights, output, center="center", normalize=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--weights=", wbt_file_path(weights)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(center)) {
    args <- paste(args, paste0("--center=", center))
  }
  if (normalize) {
    args <- paste(args, "--normalize")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "user_defined_weights_filter"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


