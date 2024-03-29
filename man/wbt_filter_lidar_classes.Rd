% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lidar_analysis.R
\name{wbt_filter_lidar_classes}
\alias{wbt_filter_lidar_classes}
\title{Filter lidar classes}
\usage{
wbt_filter_lidar_classes(
  input,
  output,
  exclude_cls = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Input LiDAR file.}

\item{output}{Output LiDAR file.}

\item{exclude_cls}{Optional exclude classes from interpolation; Valid class values range from 0 to 18, based on LAS specifications. Example, --exclude_cls='3,4,5,6,7,18'.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Removes points in a LAS file with certain specified class values.
}
\keyword{LiDARTools}
