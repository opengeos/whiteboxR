% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lidar_analysis.R
\name{wbt_lidar_join}
\alias{wbt_lidar_join}
\title{Lidar join}
\usage{
wbt_lidar_join(
  inputs,
  output,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{inputs}{Input LiDAR files.}

\item{output}{Output LiDAR file.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Joins multiple LiDAR (LAS) files into a single LAS file.
}
\keyword{LiDARTools}
