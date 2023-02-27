#' @title Balance contrast enhancement
#'
#' @description Performs a balance contrast enhancement on a colour-composite image of multispectral data.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file.
#' @param band_mean Band mean value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_balance_contrast_enhancement <- function(input, output, band_mean=100.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(band_mean)) {
    args <- paste(args, paste0("--band_mean=", band_mean))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "balance_contrast_enhancement"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Correct vignetting
#'
#' @description Corrects the darkening of images towards corners.
#'
#' @param input Input raster file.
#' @param pp Input principal point file.
#' @param output Output raster file.
#' @param focal_length Camera focal length, in millimeters.
#' @param image_width Distance between photograph edges, in millimeters.
#' @param n The 'n' parameter.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_correct_vignetting <- function(input, pp, output, focal_length=304.8, image_width=228.6, n=4.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--pp=", wbt_file_path(pp)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(focal_length)) {
    args <- paste(args, paste0("--focal_length=", focal_length))
  }
  if (!is.null(image_width)) {
    args <- paste(args, paste0("--image_width=", image_width))
  }
  if (!is.null(n)) {
    args <- paste(args, paste0("--n=", n))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "correct_vignetting"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Direct decorrelation stretch
#'
#' @description Performs a direct decorrelation stretch enhancement on a colour-composite image of multispectral data.
#'
#' @param input Input colour composite image file.
#' @param output Output raster file.
#' @param k Achromatic factor (k) ranges between 0 (no effect) and 1 (full saturation stretch), although typical values range from 0.3 to 0.7.
#' @param clip Optional percent to clip the upper tail by during the stretch.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_direct_decorrelation_stretch <- function(input, output, k=0.5, clip=1.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
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
  tool_name <- "direct_decorrelation_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Gamma correction
#'
#' @description Performs a gamma correction on an input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param gamma Gamma value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gamma_correction <- function(input, output, gamma=0.5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(gamma)) {
    args <- paste(args, paste0("--gamma=", gamma))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "gamma_correction"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Gaussian contrast stretch
#'
#' @description Performs a Gaussian contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_gaussian_contrast_stretch <- function(input, output, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "gaussian_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Histogram equalization
#'
#' @description Performs a histogram equalization contrast enhancement on an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_equalization <- function(input, output, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "histogram_equalization"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Histogram matching
#'
#' @description Alters the statistical distribution of a raster image matching it to a specified PDF.
#'
#' @param input Input raster file.
#' @param histo_file Input reference probability distribution function (pdf) text file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_matching <- function(input, histo_file, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--histo_file=", wbt_file_path(histo_file)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "histogram_matching"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Histogram matching two images
#'
#' @description This tool alters the cumulative distribution function of a raster image to that of another image.
#'
#' @param input1 Input raster file to modify.
#' @param input2 Input reference raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_histogram_matching_two_images <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "histogram_matching_two_images"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Min max contrast stretch
#'
#' @description Performs a min-max contrast stretch on an input greytone image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param min_val Lower tail clip value.
#' @param max_val Upper tail clip value.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min_max_contrast_stretch <- function(input, output, min_val, max_val, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--min_val=", wbt_file_path(min_val)))
  args <- paste(args, paste0("--max_val=", wbt_file_path(max_val)))
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min_max_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Panchromatic sharpening
#'
#' @description Increases the spatial resolution of image data by combining multispectral bands with panchromatic data.
#'
#' @param red Input red band image file. Optionally specified if colour-composite not specified.
#' @param green Input green band image file. Optionally specified if colour-composite not specified.
#' @param blue Input blue band image file. Optionally specified if colour-composite not specified.
#' @param composite Input colour-composite image file. Only used if individual bands are not specified.
#' @param pan Input panchromatic band file.
#' @param output Output colour composite file.
#' @param method Options include 'brovey' (default) and 'ihs'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_panchromatic_sharpening <- function(pan, output, red=NULL, green=NULL, blue=NULL, composite=NULL, method="brovey", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--pan=", wbt_file_path(pan)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
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
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "panchromatic_sharpening"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Percentage contrast stretch
#'
#' @description Performs a percentage linear contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param clip Optional amount to clip the distribution tails by, in percent.
#' @param tail Specified which tails to clip; options include 'upper', 'lower', and 'both' (default is 'both').
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_percentage_contrast_stretch <- function(input, output, clip=1.0, tail="both", num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(tail)) {
    args <- paste(args, paste0("--tail=", tail))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "percentage_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Piecewise contrast stretch
#'
#' @description Performs a piecewise contrast stretch on an input image.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output raster image file.
#' @param FUN Piecewise break-points e.g. '(50, 0.1); (150, 0.8); (255; 1.0).
#' @param greytones Number of greytones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_piecewise_contrast_stretch <- function(input, output, FUN="", greytones=1024, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(FUN)) {
    args <- paste(args, paste0("--FUN=", FUN))
  }
  if (!is.null(greytones)) {
    args <- paste(args, paste0("--greytones=", greytones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "piecewise_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Sigmoidal contrast stretch
#'
#' @description Performs a sigmoidal contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param cutoff Cutoff value between 0.0 and 0.95.
#' @param gain Gain value.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sigmoidal_contrast_stretch <- function(input, output, cutoff=0.0, gain=1.0, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(cutoff)) {
    args <- paste(args, paste0("--cutoff=", cutoff))
  }
  if (!is.null(gain)) {
    args <- paste(args, paste0("--gain=", gain))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sigmoidal_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Standard deviation contrast stretch
#'
#' @description Performs a standard-deviation contrast stretch on input images.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param stdev Standard deviation clip value.
#' @param num_tones Number of tones in the output image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords ImageProcessingToolsImageEnhancement
#'
#' @return Returns the tool text outputs.
#' @export
wbt_standard_deviation_contrast_stretch <- function(input, output, stdev=2.0, num_tones=256, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(stdev)) {
    args <- paste(args, paste0("--stdev=", stdev))
  }
  if (!is.null(num_tones)) {
    args <- paste(args, paste0("--num_tones=", num_tones))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "standard_deviation_contrast_stretch"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


