#' Change vector analysis
#'
#' Performs a change vector analysis on a two-date multi-spectral dataset.
#'
#' @param date1 Input raster files for the earlier date.
#' @param date2 Input raster files for the later date.
#' @param magnitude Output vector magnitude raster file.
#' @param direction Output vector Direction raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_change_vector_analysis <- function(date1, date2, magnitude, direction, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--date1=", wbt_file_path(date1)))
  args <- paste(args, paste0("--date2=", wbt_file_path(date2)))
  args <- paste(args, paste0("--magnitude=", wbt_file_path(magnitude)))
  args <- paste(args, paste0("--direction=", wbt_file_path(direction)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "change_vector_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_closing <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "closing"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_create_colour_composite <- function(red, green, blue, output, opacity=NULL, enhance=TRUE, zeros=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--red=", wbt_file_path(red)))
  args <- paste(args, paste0("--green=", wbt_file_path(green)))
  args <- paste(args, paste0("--blue=", wbt_file_path(blue)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(opacity)) {
    args <- paste(args, paste0("--opacity=", opacity))
  }
  if (enhance) {
    args <- paste(args, "--enhance")
  }
  if (zeros) {
    args <- paste(args, "--zeros")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "create_colour_composite"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Flip image
#'
#' Reflects an image in the vertical or horizontal axis.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param direction Direction of reflection; options include 'v' (vertical), 'h' (horizontal), and 'b' (both).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_flip_image <- function(input, output, direction="vertical", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(direction)) {
    args <- paste(args, paste0("--direction=", direction))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "flip_image"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ihs_to_rgb <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--intensity=", wbt_file_path(intensity)))
  args <- paste(args, paste0("--hue=", wbt_file_path(hue)))
  args <- paste(args, paste0("--saturation=", wbt_file_path(saturation)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ihs_to_rgb"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_slider <- function(input1, input2, output, palette1="grey", reverse1=FALSE, label1="", palette2="grey", reverse2=FALSE, label2="", height=600, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_slider"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Image stack profile
#'
#' Plots an image stack profile (i.e. signature) for a set of points and multispectral images.
#'
#' @param inputs Input multispectral image files.
#' @param points Input vector points file.
#' @param output Output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_stack_profile <- function(inputs, points, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--points=", wbt_file_path(points)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_stack_profile"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Integral image
#'
#' Transforms an input image (summed area table) into its integral image equivalent.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_integral_image <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "integral_image"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Line thinning
#'
#' Performs line thinning a on Boolean raster image; intended to be used with the RemoveSpurs tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_line_thinning <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "line_thinning"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Mosaic
#'
#' Mosaics two or more images together.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param method Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mosaic <- function(output, inputs=NULL, method="nn", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(inputs)) {
    args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "mosaic"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_mosaic_with_feathering <- function(input1, input2, output, method="cc", weight=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!is.null(weight)) {
    args <- paste(args, paste0("--weight=", weight))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "mosaic_with_feathering"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_normalized_difference_index <- function(input1, input2, output, clip=0.0, correction=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(correction)) {
    args <- paste(args, paste0("--correction=", correction))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "normalized_difference_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_opening <- function(input, output, filterx=11, filtery=11, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "opening"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Remove spurs
#'
#' Removes the spurs (pruning operation) from a Boolean line image; intended to be used on the output of the LineThinning tool.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param iterations Maximum number of iterations.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_spurs <- function(input, output, iterations=10, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "remove_spurs"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_resample <- function(inputs, output, cell_size=NULL, base=NULL, method="cc", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  if (!is.null(method)) {
    args <- paste(args, paste0("--method=", method))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "resample"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rgb_to_ihs <- function(intensity, hue, saturation, red=NULL, green=NULL, blue=NULL, composite=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--intensity=", wbt_file_path(intensity)))
  args <- paste(args, paste0("--hue=", wbt_file_path(hue)))
  args <- paste(args, paste0("--saturation=", wbt_file_path(saturation)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "rgb_to_ihs"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_split_colour_composite <- function(input, red=NULL, green=NULL, blue=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(red)) {
    args <- paste(args, paste0("--red=", red))
  }
  if (!is.null(green)) {
    args <- paste(args, paste0("--green=", green))
  }
  if (!is.null(blue)) {
    args <- paste(args, paste0("--blue=", blue))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "split_colour_composite"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Thicken raster line
#'
#' Thickens single-cell wide lines within a raster image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_thicken_raster_line <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "thicken_raster_line"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tophat_transform <- function(input, output, filterx=11, filtery=11, variant="white", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", wbt_file_path(variant)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "tophat_transform"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_write_function_memory_insertion <- function(input1, input2, output, input3=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(input3)) {
    args <- paste(args, paste0("--input3=", input3))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "write_function_memory_insertion"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


