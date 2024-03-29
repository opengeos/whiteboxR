% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stream_network_analysis.R
\name{wbt_strahler_stream_order}
\alias{wbt_strahler_stream_order}
\title{Strahler stream order}
\usage{
wbt_strahler_stream_order(
  d8_pntr,
  streams,
  output,
  esri_pntr = FALSE,
  zero_background = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{d8_pntr}{Input raster D8 pointer file.}

\item{streams}{Input raster streams file.}

\item{output}{Output raster file.}

\item{esri_pntr}{D8 pointer uses the ESRI style scheme.}

\item{zero_background}{Flag indicating whether a background value of zero should be used.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Assigns the Strahler stream order to each link in a stream network.
}
\keyword{StreamNetworkAnalysis}
