% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gis_analysis_overlay.R
\name{wbt_polygonize}
\alias{wbt_polygonize}
\title{Polygonize}
\usage{
wbt_polygonize(
  inputs,
  output,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{inputs}{Input vector polyline file.}

\item{output}{Output vector polygon file.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Creates a polygon layer from two or more intersecting line features contained in one or more input vector line files.
}
\keyword{GISAnalysisOverlayTools}
