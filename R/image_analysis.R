#' Change vector analysis
#'
#' Performs a change vector analysis on a two-date multi-spectral dataset.
#'
#' @param date1 Input raster files for the earlier date.
#' @param date2 Input raster files for the later date.
#' @param magnitude Output vector magnitude raster file.
#' @param direction Output vector Direction raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_change_vector_analysis <- function(date1, date2, magnitude, direction, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--date1=", date1))
  args <- paste(args, paste0("--date2=", date2))
  args <- paste(args, paste0("--magnitude=", magnitude))
  args <- paste(args, paste0("--direction=", direction))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "change_vector_analysis"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_closing <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "closing"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_colour_composite <- function(red, green, blue, output, opacity=NULL, enhance=TRUE, zeros=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--red=", red))
  args <- paste(args, paste0("--green=", green))
  args <- paste(args, paste0("--blue=", blue))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(opacity)) {
    args <- paste(args, paste0("--opacity=", opacity))
  }
  if (enhance) {
    args <- paste(args, "--enhance")
  }
  if (zeros) {
    args <- paste(args, "--zeros")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "create_colour_composite"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flip image
#'
#' Reflects an image in the vertical or horizontal axis.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param direction Direction of reflection; options include 'v' (vertical), 'h' (horizontal), and 'b' (both).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flip_image <- function(input, output, direction="vertical", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "flip_image"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ihs_to_rgb <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "ihs_to_rgb"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image slider
#'
#' This tool creates an image slider from two input images.
#'
#' @param input1 Name of the left input image file.
#' @param palette1 Left image palette; options are 'grey', 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'purple', 'viridi', 'gn_yl', 'pi_y_g', 'bl_yl_rd', 'deep', and 'rgb'.
#' @param reverse1 Reverse left image palette?.
#' @param label1 Left image label (leave blank for none).
#' @param input2 Name of the right input image file.
#' @param palette2 Right image palette; options are 'grey', 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'purple', 'viridi', 'gn_yl', 'pi_y_g', 'bl_yl_rd', 'deep', and 'rgb'.
#' @param reverse2 Reverse right image palette?.
#' @param label2 Right image label (leave blank for none).
#' @param output Name of the output HTML file (*.html).
#' @param height Image height, in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_slider <- function(input1, input2, output, palette1="grey", reverse1=FALSE, label1="", palette2="grey", reverse2=FALSE, label2="", height=600, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(palette1)) {
    args <- paste(args, paste0("--palette1=", palette1))
  }
  if (reverse1) {
    args <- paste(args, "--reverse1")
  }
  if (!is.null(label1)) {
    args <- paste(args, paste0("--label1=", label1))
  }
  if (!is.null(palette2)) {
    args <- paste(args, paste0("--palette2=", palette2))
  }
  if (reverse2) {
    args <- paste(args, "--reverse2")
  }
  if (!is.null(label2)) {
    args <- paste(args, paste0("--label2=", label2))
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
  tool_name <- "image_slider"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image stack profile
#'
#' Plots an image stack profile (i.e. signature) for a set of points and multispectral images.
#'
#' @param inputs Input multispectral image files.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_stack_profile <- function(inputs, points, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "image_stack_profile"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Integral image
#'
#' Transforms an input image (summed area table) into its integral image equivalent.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_integral_image <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "integral_image"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Line thinning
#'
#' Performs line thinning a on Boolean raster image; intended to be used with the RemoveSpurs tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_thinning <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "line_thinning"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Mosaic
#'
#' Mosaics two or more images together.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mosaic <- function(output, inputs=NULL, method="nn", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--output=", output))
  if (!is.null(inputs)) {
    args <- paste(args, paste0("--inputs=", inputs))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "mosaic"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mosaic_with_feathering <- function(input1, input2, output, method="cc", weight=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "mosaic_with_feathering"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Normalized difference index
#'
#' Calculate a normalized-difference index (NDI) from two bands of multispectral image data.
#'
#' @param input1 Input image 1 (e.g. near-infrared band).
#' @param input2 Input image 2 (e.g. red band).
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param correction Optional adjustment value (e.g. 1, or 0.16 for the optimal soil adjusted vegetation index, OSAVI).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_normalized_difference_index <- function(input1, input2, output, clip=0.0, correction=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(correction)) {
    args <- paste(args, paste0("--correction=", correction))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "normalized_difference_index"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_opening <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "opening"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Remove spurs
#'
#' Removes the spurs (pruning operation) from a Boolean line image; intended to be used on the output of the LineThinning tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param iterations Maximum number of iterations.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_spurs <- function(input, output, iterations=10, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "remove_spurs"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Resample
#'
#' Resamples one or more input images into a destination image.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_resample <- function(inputs, output, cell_size=NULL, base=NULL, method="cc", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "resample"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rgb_to_ihs <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, composite=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "rgb_to_ihs"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Split colour composite
#'
#' This tool splits an RGB colour composite image into separate multispectral images.
#'
#' @param input Input colour composite image file.
#' @param red Output red band file.
#' @param green Output green band file.
#' @param blue Output blue band file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_colour_composite <- function(input, red=NULL, green=NULL, blue=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(red)) {
    args <- paste(args, paste0("--red=", red))
  }
  if (!is.null(green)) {
    args <- paste(args, paste0("--green=", green))
  }
  if (!is.null(blue)) {
    args <- paste(args, paste0("--blue=", blue))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "split_colour_composite"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Thicken raster line
#'
#' Thickens single-cell wide lines within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_thicken_raster_line <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "thicken_raster_line"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tophat_transform <- function(input, output, filterx=11, filtery=11, variant="white", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "tophat_transform"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_write_function_memory_insertion <- function(input1, input2, output, input3=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(input3)) {
    args <- paste(args, paste0("--input3=", input3))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "write_function_memory_insertion"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Evaluate training sites
#'
#' This tool can be used to inspect the overlap in spectral signatures of training sites for various classes.
#'
#' @param inputs Name of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output report file (*.html).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_evaluate_training_sites <- function(inputs, polys, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--polys=", polys))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "evaluate_training_sites"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image segmentation
#'
#' Performs a region-growing based segmentation on a set of multi-spectral images.
#'
#' @param inputs Names of the input band images.
#' @param output Name of the output raster file.
#' @param threshold Distance threshold, in z-scores.
#' @param steps Number of steps.
#' @param min_area Minimum object area, in grid cells (1-8).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_segmentation <- function(inputs, output, threshold=0.5, steps=10, min_area=4, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(steps)) {
    args <- paste(args, paste0("--steps=", steps))
  }
  if (!is.null(min_area)) {
    args <- paste(args, paste0("--min_area=", min_area))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "image_segmentation"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_k_means_clustering <- function(inputs, output, classes, out_html=NULL, max_iterations=10, class_change=2.0, initialize="diagonal", min_class_size=10, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "k_means_clustering"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min dist classification
#'
#' Performs a supervised minimum-distance classification using training site polygons and multi-spectral images.
#'
#' @param inputs Names of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output raster file.
#' @param threshold Distance threshold, in z-scores; blank for none.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_dist_classification <- function(inputs, polys, field, output, threshold=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--polys=", polys))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "min_dist_classification"
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
#' @param merge_dist Cluster merger distance.
#' @param max_iterations Maximum number of iterations.
#' @param class_change Minimum percent of cells changed between iterations before completion.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_modified_k_means_clustering <- function(inputs, output, out_html=NULL, start_clusters=1000, merge_dist=NULL, max_iterations=10, class_change=2.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_html)) {
    args <- paste(args, paste0("--out_html=", out_html))
  }
  if (!is.null(start_clusters)) {
    args <- paste(args, paste0("--start_clusters=", start_clusters))
  }
  if (!is.null(merge_dist)) {
    args <- paste(args, paste0("--merge_dist=", merge_dist))
  }
  if (!is.null(max_iterations)) {
    args <- paste(args, paste0("--max_iterations=", max_iterations))
  }
  if (!is.null(class_change)) {
    args <- paste(args, paste0("--class_change=", class_change))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "modified_k_means_clustering"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Parallelepiped classification
#'
#' Performs a supervised parallelepiped classification using training site polygons and multi-spectral images.
#'
#' @param inputs Name of the input band images.
#' @param polys Name of the input training site polygons shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_parallelepiped_classification <- function(inputs, polys, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--polys=", polys))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "parallelepiped_classification"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_adaptive_filter <- function(input, output, filterx=11, filtery=11, threshold=2.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "adaptive_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_bilateral_filter <- function(input, output, sigma_dist=0.75, sigma_int=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma_dist)) {
    args <- paste(args, paste0("--sigma_dist=", sigma_dist))
  }
  if (!is.null(sigma_int)) {
    args <- paste(args, paste0("--sigma_int=", sigma_int))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "bilateral_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Canny edge detection
#'
#' This tool performs a Canny edge-detection filter on an input image.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output raster image file.
#' @param sigma Sigma value used in Gaussian filtering, default = 0.5.
#' @param low Low threshold, default = 0.05.
#' @param high High threshold, default = 0.15.
#' @param add_back Add the edge cells back to the input image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_canny_edge_detection <- function(input, output, sigma=0.5, low=0.05, high=0.15, add_back=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "canny_edge_detection"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_conservative_smoothing_filter <- function(input, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "conservative_smoothing_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Corner detection
#'
#' Identifies corner patterns in boolean images using hit-and-miss pattern matching.
#'
#' @param input Input boolean image.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_corner_detection <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "corner_detection"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diff_of_gaussian_filter <- function(input, output, sigma1=2.0, sigma2=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma1)) {
    args <- paste(args, paste0("--sigma1=", sigma1))
  }
  if (!is.null(sigma2)) {
    args <- paste(args, paste0("--sigma2=", sigma2))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "diff_of_gaussian_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_diversity_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "diversity_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_edge_preserving_mean_filter <- function(input, output, threshold, filter=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--threshold=", threshold))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "edge_preserving_mean_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_emboss_filter <- function(input, output, direction="n", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "emboss_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fast almost gaussian filter
#'
#' Performs a fast approximate Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fast_almost_gaussian_filter <- function(input, output, sigma=1.8, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "fast_almost_gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gaussian filter
#'
#' Performs a Gaussian filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation distance in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_filter <- function(input, output, sigma=0.75, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "gaussian_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_high_pass_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "high_pass_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_high_pass_median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "high_pass_median_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_k_nearest_mean_filter <- function(input, output, filterx=11, filtery=11, k=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "k_nearest_mean_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_laplacian_filter <- function(input, output, variant="3x3(1)", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "laplacian_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Laplacian of gaussian filter
#'
#' Performs a Laplacian-of-Gaussian (LoG) filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param sigma Standard deviation in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_laplacian_of_gaussian_filter <- function(input, output, sigma=0.75, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(sigma)) {
    args <- paste(args, paste0("--sigma=", sigma))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "laplacian_of_gaussian_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lee sigma filter
#'
#' Performs a Lee (Sigma) smoothing filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param filterx Size of the filter kernel in the x-direction.
#' @param filtery Size of the filter kernel in the y-direction.
#' @param sigma Sigma value should be related to the standard deviation of the distribution of image speckle noise.
#' @param m M-threshold value the minimum allowable number of pixels within the intensity range.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lee_sigma_filter <- function(input, output, filterx=11, filtery=11, sigma=10.0, m=5.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "lee_sigma_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_detection_filter <- function(input, output, variant="vertical", absvals=FALSE, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (absvals) {
    args <- paste(args, "--absvals")
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "line_detection_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_majority_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "majority_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_maximum_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "maximum_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mean_filter <- function(input, output, filterx=3, filtery=3, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "mean_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_median_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "median_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_minimum_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "minimum_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_olympic_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "olympic_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percentile_filter <- function(input, output, filterx=11, filtery=11, sig_digits=2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "percentile_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Prewitt filter
#'
#' Performs a Prewitt edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_prewitt_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "prewitt_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_range_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "range_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Roberts cross filter
#'
#' Performs a Robert's cross edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_roberts_cross_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "roberts_cross_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Scharr filter
#'
#' Performs a Scharr edge-detection filter on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_scharr_filter <- function(input, output, clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "scharr_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sobel_filter <- function(input, output, variant="3x3", clip=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "sobel_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "standard_deviation_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_total_filter <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
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
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "total_filter"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_unsharp_masking <- function(input, output, sigma=0.75, amount=100.0, threshold=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "unsharp_masking"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_user_defined_weights_filter <- function(input, weights, output, center="center", normalize=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--weights=", weights))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(center)) {
    args <- paste(args, paste0("--center=", center))
  }
  if (normalize) {
    args <- paste(args, "--normalize")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "user_defined_weights_filter"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Balance contrast enhancement
#'
#' Performs a balance contrast enhancement on a colour-composite image of multispectral data.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file.
#' @param band_mean Band mean value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_balance_contrast_enhancement <- function(input, output, band_mean=100.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(band_mean)) {
    args <- paste(args, paste0("--band_mean=", band_mean))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "balance_contrast_enhancement"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_correct_vignetting <- function(input, pp, output, focal_length=304.8, image_width=228.6, n=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "correct_vignetting"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_direct_decorrelation_stretch <- function(input, output, k=0.5, clip=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "direct_decorrelation_stretch"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gamma correction
#'
#' Performs a gamma correction on an input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param gamma Gamma value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gamma_correction <- function(input, output, gamma=0.5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(gamma)) {
    args <- paste(args, paste0("--gamma=", gamma))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "gamma_correction"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Gaussian contrast stretch
#'
#' Performs a Gaussian contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_contrast_stretch <- function(input, output, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "gaussian_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram equalization
#'
#' Performs a histogram equalization contrast enhancement on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_equalization <- function(input, output, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "histogram_equalization"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram matching
#'
#' Alters the statistical distribution of a raster image matching it to a specified PDF.
#'
#' @param input Input raster file.
#' @param histo_file Input reference probability distribution function (pdf) text file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_matching <- function(input, histo_file, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--histo_file=", histo_file))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "histogram_matching"
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Histogram matching two images
#'
#' This tool alters the cumulative distribution function of a raster image to that of another image.
#'
#' @param input1 Input raster file to modify.
#' @param input2 Input reference raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_matching_two_images <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "histogram_matching_two_images"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_max_contrast_stretch <- function(input, output, min_val, max_val, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--min_val=", min_val))
  args <- paste(args, paste0("--max_val=", max_val))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "min_max_contrast_stretch"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_panchromatic_sharpening <- function(pan, output, red=NULL, green=NULL, blue=NULL, composite=NULL, method="brovey", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "panchromatic_sharpening"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percentage_contrast_stretch <- function(input, output, clip=1.0, tail="both", num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "percentage_contrast_stretch"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sigmoidal_contrast_stretch <- function(input, output, cutoff=0.0, gain=1.0, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
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
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "sigmoidal_contrast_stretch"
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_contrast_stretch <- function(input, output, stdev=2.0, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(stdev)) {
    args <- paste(args, paste0("--stdev=", stdev))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- "standard_deviation_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode)
}


