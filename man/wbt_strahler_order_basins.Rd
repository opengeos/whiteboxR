% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hydro_analysis.R
\name{wbt_strahler_order_basins}
\alias{wbt_strahler_order_basins}
\title{Strahler order basins}
\usage{
wbt_strahler_order_basins(
  d8_pntr,
  streams,
  output,
  esri_pntr = FALSE,
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

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Identifies Strahler-order basins from an input stream network.
}
\keyword{HydrologicalAnalysis}
