% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis_filters.R
\name{wbt_user_defined_weights_filter}
\alias{wbt_user_defined_weights_filter}
\title{User ined weights filter}
\usage{
wbt_user_defined_weights_filter(
  input,
  weights,
  output,
  center = "center",
  normalize = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Input raster file path. See \code{wbt_file_path()} for details.}

\item{weights}{Input weights file.}

\item{output}{Output raster file.}

\item{center}{Kernel center cell; options include 'center', 'upper-left', 'upper-right', 'lower-left', 'lower-right'.}

\item{normalize}{Normalize kernel weights? This can reduce edge effects and lessen the impact of data gaps (nodata) but is not suited when the kernel weights sum to zero.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a user-defined weights filter on an image.
}
\keyword{ImageProcessingToolsFilters}
