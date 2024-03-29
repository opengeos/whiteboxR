% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis_filters.R
\name{wbt_canny_edge_detection}
\alias{wbt_canny_edge_detection}
\title{Canny edge detection}
\usage{
wbt_canny_edge_detection(
  input,
  output,
  sigma = 0.5,
  low = 0.05,
  high = 0.15,
  add_back = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Name of the input raster image file.}

\item{output}{Name of the output raster image file.}

\item{sigma}{Sigma value used in Gaussian filtering, default = 0.5.}

\item{low}{Low threshold, default = 0.05.}

\item{high}{High threshold, default = 0.15.}

\item{add_back}{Add the edge cells back to the input image.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
This tool performs a Canny edge-detection filter on an input image.
}
\keyword{ImageProcessingToolsFilters}
