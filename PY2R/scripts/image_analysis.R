#' Change vector analysis
#'
#' Performs a change vector analysis on a two-date multi-spectral dataset.
#'
#' @param date1 Input raster files for the earlier date.
#' @param date2 Input raster files for the later date.
#' @param magnitude Output vector magnitude raster file.
#' @param direction Output vector Direction raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
change_vector_analysis <- function(date1, date2, magnitude, direction, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--date1=", date1))
  args <- paste(args, paste0("--date2=", date2))
  args <- paste(args, paste0("--magnitude=", magnitude))
  args <- paste(args, paste0("--direction=", direction))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Closing
#'
#' A closing is a mathematical morphology operation involving an erosion (min filter) of a dilation (max filter) set.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
closing <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Create colour composite
#'
#' Creates a colour-composite image from three bands of multispectral imagery.
#'
#' @param red Input red band image file.
#' @param green Input green band image file.
#' @param blue Input blue band image file.
#' @param opacity Input opacity band image file (optional).
#' @param output Output colour composite file.
#' @param enhance Optional flag indicating whether a balance contrast enhancement is performed.
#' @param zeros Optional flag to indicate if zeros are nodata values.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
create_colour_composite <- function(red, green, blue, output, opacity=NULL, enhance=TRUE, zeros=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--red=", red))
  args <- paste(args, paste0("--green=", green))
  args <- paste(args, paste0("--blue=", blue))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(opacity)) {
    args <- paste(args, paste0("--opacity=", opacity))
  }
  if (!is.null(enhance)) {
    args <- paste(args, paste0("--enhance=", enhance))
  }
  if (!is.null(zeros)) {
    args <- paste(args, paste0("--zeros=", zeros))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flip image
#'
#' Reflects an image in the vertical or horizontal axis.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param direction Direction of reflection; options include 'v' (vertical), 'h' (horizontal), and 'b' (both).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flip_image <- function(input, output, direction="vertical", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Ihs to rgb
#'
#' Converts intensity, hue, and saturation (IHS) images into red, green, and blue (RGB) images.
#'
#' @param intensity Input intensity file.
#' @param hue Input hue file.
#' @param saturation Input saturation file.
#' @param red Output red band file. Optionally specified if colour-composite not specified.
#' @param green Output green band file. Optionally specified if colour-composite not specified.
#' @param blue Output blue band file. Optionally specified if colour-composite not specified.
#' @param output Output colour-composite file. Only used if individual bands are not specified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
ihs_to_rgb <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, output=NULL, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--intensity=", intensity))
  args <- paste(args, paste0("--hue=", hue))
  args <- paste(args, paste0("--saturation=", saturation))
  if (!is.null(red)) {
    args <- paste(args, paste0("--red=", red))
  }
  if (!is.null(green)) {
    args <- paste(args, paste0("--green=", green))
  }
  if (!is.null(blue)) {
    args <- paste(args, paste0("--blue=", blue))
  }
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image stack profile
#'
#' Plots an image stack profile (i.e. signature) for a set of points and multispectral images.
#'
#' @param inputs Input multispectral image files.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
image_stack_profile <- function(inputs, points, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Integral image
#'
#' Transforms an input image (summed area table) into its integral image equivalent.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
integral_image <- function(input, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' K means clustering
#'
#' Performs a k-means clustering operation on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param out_html Output HTML report file.
#' @param classes Number of classes.
#' @param max_iterations Maximum number of iterations.
#' @param class_change Minimum percent of cells changed between iterations before completion.
#' @param initialize How to initialize cluster centres?.
#' @param min_class_size Minimum class size, in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
k_means_clustering <- function(inputs, output, classes, out_html=NULL, max_iterations=10, class_change=2.0, initialize="diagonal", min_class_size=10, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--classes=", classes))
  if (!is.null(out_html)) {
    args <- paste(args, paste0("--out_html=", out_html))
  }
  if (!is.null(max_iterations)) {
    args <- paste(args, paste0("--max_iterations=", max_iterations))
  }
  if (!is.null(class_change)) {
    args <- paste(args, paste0("--class_change=", class_change))
  }
  if (!is.null(initialize)) {
    args <- paste(args, paste0("--initialize=", initialize))
  }
  if (!is.null(min_class_size)) {
    args <- paste(args, paste0("--min_class_size=", min_class_size))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Line thinning
#'
#' Performs line thinning a on Boolean raster image; intended to be used with the RemoveSpurs tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
line_thinning <- function(input, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Modified k means clustering
#'
#' Performs a modified k-means clustering operation on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param out_html Output HTML report file.
#' @param start_clusters Initial number of clusters.
#' @param merger_dist Cluster merger distance.
#' @param max_iterations Maximum number of iterations.
#' @param class_change Minimum percent of cells changed between iterations before completion.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
modified_k_means_clustering <- function(inputs, output, out_html=NULL, start_clusters=1000, merger_dist=NULL, max_iterations=10, class_change=2.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_html)) {
    args <- paste(args, paste0("--out_html=", out_html))
  }
  if (!is.null(start_clusters)) {
    args <- paste(args, paste0("--start_clusters=", start_clusters))
  }
  if (!is.null(merger_dist)) {
    args <- paste(args, paste0("--merger_dist=", merger_dist))
  }
  if (!is.null(max_iterations)) {
    args <- paste(args, paste0("--max_iterations=", max_iterations))
  }
  if (!is.null(class_change)) {
    args <- paste(args, paste0("--class_change=", class_change))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Mosaic
#'
#' Mosaics two or more images together.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
mosaic <- function(inputs, output, method="cc", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Mosaic with feathering
#'
#' Mosaics two images together using a feathering technique in overlapping areas to reduce edge-effects.
#'
#' @param input1 Input raster file to modify.
#' @param input2 Input reference raster file.
#' @param output Output raster file.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param weight .
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
mosaic_with_feathering <- function(input1, input2, output, method="cc", weight=4.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Normalized difference vegetation index
#'
#' Calculates the normalized difference vegetation index (NDVI) from near-infrared and red imagery.
#'
#' @param nir Input near-infrared band image.
#' @param red Input red band image.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param osavi Optional flag indicating whether the optimized soil-adjusted veg index (OSAVI) should be used.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
normalized_difference_vegetation_index <- function(nir, red, output, clip=0.0, osavi=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--nir=", nir))
  args <- paste(args, paste0("--red=", red))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(osavi)) {
    args <- paste(args, paste0("--osavi=", osavi))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Opening
#'
#' An opening is a mathematical morphology operation involving a dilation (max filter) of an erosion (min filter) set.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
opening <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Remove spurs
#'
#' Removes the spurs (pruning operation) from a Boolean line image.; intended to be used on the output of the LineThinning tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param iterations Maximum number of iterations.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
remove_spurs <- function(input, output, iterations=10, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Resample
#'
#' Resamples one or more input images into a destination image.
#'
#' @param inputs Input raster files.
#' @param destination Destination raster file.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
resample <- function(inputs, destination, method="cc", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--destination=", destination))
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Rgb to ihs
#'
#' Converts red, green, and blue (RGB) images into intensity, hue, and saturation (IHS) images.
#'
#' @param red Input red band image file. Optionally specified if colour-composite not specified.
#' @param green Input green band image file. Optionally specified if colour-composite not specified.
#' @param blue Input blue band image file. Optionally specified if colour-composite not specified.
#' @param composite Input colour-composite image file. Only used if individual bands are not specified.
#' @param intensity Output intensity raster file.
#' @param hue Output hue raster file.
#' @param saturation Output saturation raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
rgb_to_ihs <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, composite=NULL, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--intensity=", intensity))
  args <- paste(args, paste0("--hue=", hue))
  args <- paste(args, paste0("--saturation=", saturation))
  if (!is.null(red)) {
    args <- paste(args, paste0("--red=", red))
  }
  if (!is.null(green)) {
    args <- paste(args, paste0("--green=", green))
  }
  if (!is.null(blue)) {
    args <- paste(args, paste0("--blue=", blue))
  }
  if (!is.null(composite)) {
    args <- paste(args, paste0("--composite=", composite))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Split colour composite
#'
#' This tool splits an RGB colour composite image into seperate multispectral images.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file (suffixes of '_r', '_g', and '_b' will be appended).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
split_colour_composite <- function(input, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Thicken raster line
#'
#' Thickens single-cell wide lines within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
thicken_raster_line <- function(input, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tophat transform
#'
#' Performs either a white or black top-hat transform on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param variant Optional variant value. Options include 'white' and 'black'.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
tophat_transform <- function(input, output, filterx=11, filtery=11, variant="white", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Write function memory insertion
#'
#' Performs a write function memory insertion for single-band multi-date change detection.
#'
#' @param input1 Input raster file associated with the first date.
#' @param input2 Input raster file associated with the second date.
#' @param input3 Optional input raster file associated with the third date.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
write_function_memory_insertion <- function(input1, input2, output, input3=NULL, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(input3)) {
    args <- paste(args, paste0("--input3=", input3))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Adaptive filter
#'
#' Performs an adaptive filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param threshold Difference from mean threshold, in standard deviations.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
adaptive_filter <- function(input, output, filterx=11, filtery=11, threshold=2.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Bilateral filter
#'
#' A bilateral filter is an edge-preserving smoothing filter introduced by Tomasi and Manduchi (1998).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma_dist Standard deviation in distance in pixels.
#' @param sigma_int Standard deviation in intensity in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
bilateral_filter <- function(input, output, sigma_dist=0.75, sigma_int=1.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma_dist)) {
    args <- paste(args, paste0("--sigma_dist=", sigma_dist))
  }
  if (!is.null(sigma_int)) {
    args <- paste(args, paste0("--sigma_int=", sigma_int))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Conservative smoothing filter
#'
#' Performs a conservative-smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
conservative_smoothing_filter <- function(input, output, filterx=3, filtery=3, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Corner detection
#'
#' Identifies corner patterns in boolean images using hit-and-miss pattern mattching.
#'
#' @param input Input boolean image.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
corner_detection <- function(input, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Diff of gaussian filter
#'
#' Performs a Difference of Gaussian (DoG) filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma1 Standard deviation distance in pixels.
#' @param sigma2 Standard deviation distance in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
diff_of_gaussian_filter <- function(input, output, sigma1=2.0, sigma2=4.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma1)) {
    args <- paste(args, paste0("--sigma1=", sigma1))
  }
  if (!is.null(sigma2)) {
    args <- paste(args, paste0("--sigma2=", sigma2))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Diversity filter
#'
#' Assigns each cell in the output grid the number of different values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
diversity_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Edge preserving mean filter
#'
#' Performs a simple edge-preserving mean filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filter Size of the filter kernel.
#' @param threshold Maximum difference in values.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
edge_preserving_mean_filter <- function(input, output, threshold, filter=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--threshold=", threshold))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Emboss filter
#'
#' Performs an emboss filter on an image, similar to a hillshade operation.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param direction Direction of reflection; options include 'n', 's', 'e', 'w', 'ne', 'se', 'nw', 'sw'.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
emboss_filter <- function(input, output, direction="n", clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fast almost gaussian filter
#'
#' Performs a fast approximate Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fast_almost_gaussian_filter <- function(input, output, sigma=1.8, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gaussian filter
#'
#' Performs a Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
gaussian_filter <- function(input, output, sigma=0.75, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' High pass filter
#'
#' Performs a high-pass filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
high_pass_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' High pass median filter
#'
#' Performs a high pass median filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
high_pass_median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' K nearest mean filter
#'
#' A k-nearest mean filter is a type of edge-preserving smoothing filter.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param k k-value in pixels; this is the number of nearest-valued neighbours to use.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
k_nearest_mean_filter <- function(input, output, filterx=11, filtery=11, k=5, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Laplacian filter
#'
#' Performs a Laplacian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 3x3(1), 3x3(2), 3x3(3), 3x3(4), 5x5(1), and 5x5(2) (default is 3x3(1)).
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
laplacian_filter <- function(input, output, variant="3x3(1)", clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Laplacian of gaussian filter
#'
#' Performs a Laplacian-of-Gaussian (LoG) filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation in pixels.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
laplacian_of_gaussian_filter <- function(input, output, sigma=0.75, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lee filter
#'
#' Performs a Lee (Sigma) smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sigma Sigma value should be related to the standarad deviation of the distribution of image speckle noise.
#' @param m M-threshold value the minimum allowable number of pixels within the intensity range.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lee_filter <- function(input, output, filterx=11, filtery=11, sigma=10.0, m=5.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
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
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Line detection filter
#'
#' Performs a line-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 'v' (vertical), 'h' (horizontal), '45', and '135' (default is 'v').
#' @param absvals Optional flag indicating whether outputs should be absolute values.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
line_detection_filter <- function(input, output, variant="vertical", absvals=FALSE, clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (!is.null(absvals)) {
    args <- paste(args, paste0("--absvals=", absvals))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Majority filter
#'
#' Assigns each cell in the output grid the most frequently occurring value (mode) in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
majority_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Maximum filter
#'
#' Assigns each cell in the output grid the maximum value in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
maximum_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Mean filter
#'
#' Performs a mean filter (low-pass filter) on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
mean_filter <- function(input, output, filterx=3, filtery=3, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Median filter
#'
#' Performs a median filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Minimum filter
#'
#' Assigns each cell in the output grid the minimum value in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
minimum_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Olympic filter
#'
#' Performs an olympic smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
olympic_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Percentile filter
#'
#' Performs a percentile filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sig_digits Number of significant digits.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
percentile_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Prewitt filter
#'
#' Performs a Prewitt edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
prewitt_filter <- function(input, output, clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Range filter
#'
#' Assigns each cell in the output grid the range of values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
range_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Roberts cross filter
#'
#' Performs a Robert's cross edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
roberts_cross_filter <- function(input, output, clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Scharr filter
#'
#' Performs a Scharr edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
scharr_filter <- function(input, output, clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sobel filter
#'
#' Performs a Sobel edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param variant Optional variant value. Options include 3x3 and 5x5 (default is 3x3).
#' @param clip Optional amount to clip the distribution tails by, in percent (default is 0.0).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
sobel_filter <- function(input, output, variant="3x3", clip=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Standard deviation filter
#'
#' Assigns each cell in the output grid the standard deviation of values in a moving window centred on each grid cell in the input raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
standard_deviation_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Total filter
#'
#' Performs a total filter on an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
total_filter <- function(input, output, filterx=11, filtery=11, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(filterx)) {
    args <- paste(args, paste0("--filterx=", filterx))
  }
  if (!is.null(filtery)) {
    args <- paste(args, paste0("--filtery=", filtery))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Unsharp masking
#'
#' An image sharpening technique that enhances edges.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param amount A percentage and controls the magnitude of each overshoot.
#' @param threshold Controls the minimal brightness change that will be sharpened.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
unsharp_masking <- function(input, output, sigma=0.75, amount=100.0, threshold=0.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(amount)) {
    args <- paste(args, paste0("--amount=", amount))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' User ined weights filter
#'
#' Performs a user-defined weights filter on an image.
#'
#' @param input Input raster file.
#' @param weights Input weights file.
#' @param output Output raster file.
#' @param center Kernel center cell; options include 'center', 'upper-left', 'upper-right', 'lower-left', 'lower-right'.
#' @param normalize Normalize kernel weights? This can reduce edge effects and lessen the impact of data gaps (nodata) but is not suited when the kernel weights sum to zero.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
user_defined_weights_filter <- function(input, weights, output, center="center", normalize=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--weights=", weights))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(center)) {
    args <- paste(args, paste0("--center=", center))
  }
  if (!is.null(normalize)) {
    args <- paste(args, paste0("--normalize=", normalize))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Balance contrast enhancement
#'
#' Performs a balance contrast enhancement on a colour-composite image of multispectral data.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file.
#' @param band_mean Band mean value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
balance_contrast_enhancement <- function(input, output, band_mean=100.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(band_mean)) {
    args <- paste(args, paste0("--band_mean=", band_mean))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Correct vignetting
#'
#' Corrects the darkening of images towards corners.
#'
#' @param input Input raster file.
#' @param pp Input principal point file.
#' @param output Output raster file.
#' @param focal_length Camera focal length, in millimeters.
#' @param image_width Distance between photograph edges, in millimeters.
#' @param n The 'n' parameter.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
correct_vignetting <- function(input, pp, output, focal_length=304.8, image_width=228.6, n=4.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--pp=", pp))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(focal_length)) {
    args <- paste(args, paste0("--focal_length=", focal_length))
  }
  if (!is.null(image_width)) {
    args <- paste(args, paste0("--image_width=", image_width))
  }
  if (!is.null(n)) {
    args <- paste(args, paste0("--n=", n))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Direct decorrelation stretch
#'
#' Performs a direct decorrelation stretch enhancement on a colour-composite image of multispectral data.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file.
#' @param k Achromatic factor (k) ranges between 0 (no effect) and 1 (full saturation stretch), although typical values range from 0.3 to 0.7.
#' @param clip Optional percent to clip the upper tail by during the stretch.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
direct_decorrelation_stretch <- function(input, output, k=0.5, clip=1.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gamma correction
#'
#' Performs a sigmoidal contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param gamma Gamma value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
gamma_correction <- function(input, output, gamma=0.5, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(gamma)) {
    args <- paste(args, paste0("--gamma=", gamma))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gaussian contrast stretch
#'
#' Performs a Gaussian contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
gaussian_contrast_stretch <- function(input, output, num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram equalization
#'
#' Performs a histogram equalization contrast enhancment on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
histogram_equalization <- function(input, output, num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram matching
#'
#' Alters the statistical distribution of a raster image matching it to a specified PDF.
#'
#' @param input Input raster file.
#' @param histo_file Input reference probability distribution function (pdf) text file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
histogram_matching <- function(input, histo_file, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--histo_file=", histo_file))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram matching two images
#'
#' This tool alters the cumulative distribution function of a raster image to that of another image.
#'
#' @param input1 Input raster file to modify.
#' @param input2 Input reference raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
histogram_matching_two_images <- function(input1, input2, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min max contrast stretch
#'
#' Performs a min-max contrast stretch on an input greytone image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param min_val Lower tail clip value.
#' @param max_val Upper tail clip value.
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
min_max_contrast_stretch <- function(input, output, min_val, max_val, num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--min_val=", min_val))
  args <- paste(args, paste0("--max_val=", max_val))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Panchromatic sharpening
#'
#' Increases the spatial resolution of image data by combining multispectral bands with panchromatic data.
#'
#' @param red Input red band image file. Optionally specified if colour-composite not specified.
#' @param green Input green band image file. Optionally specified if colour-composite not specified.
#' @param blue Input blue band image file. Optionally specified if colour-composite not specified.
#' @param composite Input colour-composite image file. Only used if individual bands are not specified.
#' @param pan Input panchromatic band file.
#' @param output Output colour composite file.
#' @param method Options include 'brovey' (default) and 'ihs'.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
panchromatic_sharpening <- function(pan, output, red=NULL, green=NULL, blue=NULL, composite=NULL, method="brovey", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--pan=", pan))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(red)) {
    args <- paste(args, paste0("--red=", red))
  }
  if (!is.null(green)) {
    args <- paste(args, paste0("--green=", green))
  }
  if (!is.null(blue)) {
    args <- paste(args, paste0("--blue=", blue))
  }
  if (!is.null(composite)) {
    args <- paste(args, paste0("--composite=", composite))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Percentage contrast stretch
#'
#' Performs a percentage linear contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param tail Specified which tails to clip; options include 'upper', 'lower', and 'both' (default is 'both').
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
percentage_contrast_stretch <- function(input, output, clip=0.0, tail="both", num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(tail)) {
    args <- paste(args, paste0("--tail=", tail))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sigmoidal contrast stretch
#'
#' Performs a sigmoidal contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param cutoff Cutoff value between 0.0 and 0.95.
#' @param gain Gain value.
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
sigmoidal_contrast_stretch <- function(input, output, cutoff=0.0, gain=1.0, num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(cutoff)) {
    args <- paste(args, paste0("--cutoff=", cutoff))
  }
  if (!is.null(gain)) {
    args <- paste(args, paste0("--gain=", gain))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Standard deviation contrast stretch
#'
#' Performs a standard-deviation contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param stdev Standard deviation clip value.
#' @param num_tones Number of tones in the output image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
standard_deviation_contrast_stretch <- function(input, output, stdev=2.0, num_tones=256, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(stdev)) {
    args <- paste(args, paste0("--stdev=", stdev))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


