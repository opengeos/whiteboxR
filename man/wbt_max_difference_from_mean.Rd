% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_max_difference_from_mean}
\alias{wbt_max_difference_from_mean}
\title{Max difference from mean}
\usage{
wbt_max_difference_from_mean(
  dem,
  out_mag,
  out_scale,
  min_scale,
  max_scale,
  step = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{dem}{Input raster DEM file.}

\item{out_mag}{Output raster DIFFmax magnitude file.}

\item{out_scale}{Output raster DIFFmax scale file.}

\item{min_scale}{Minimum search neighbourhood radius in grid cells.}

\item{max_scale}{Maximum search neighbourhood radius in grid cells.}

\item{step}{Step size as any positive non-zero integer.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Calculates the maximum difference from mean elevation over a range of spatial scales.
}
\keyword{GeomorphometricAnalysis}
