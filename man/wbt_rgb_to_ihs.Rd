% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis.R
\name{wbt_rgb_to_ihs}
\alias{wbt_rgb_to_ihs}
\title{Rgb to ihs}
\usage{
wbt_rgb_to_ihs(
  intensity,
  hue,
  saturation,
  red = NULL,
  green = NULL,
  blue = NULL,
  composite = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{intensity}{Output intensity raster file.}

\item{hue}{Output hue raster file.}

\item{saturation}{Output saturation raster file.}

\item{red}{Input red band image file. Optionally specified if colour-composite not specified.}

\item{green}{Input green band image file. Optionally specified if colour-composite not specified.}

\item{blue}{Input blue band image file. Optionally specified if colour-composite not specified.}

\item{composite}{Input colour-composite image file. Only used if individual bands are not specified.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Converts red, green, and blue (RGB) images into intensity, hue, and saturation (IHS) images.
}
\keyword{ImageProcessingTools}
