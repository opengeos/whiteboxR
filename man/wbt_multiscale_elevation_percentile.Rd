% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_multiscale_elevation_percentile}
\alias{wbt_multiscale_elevation_percentile}
\title{Multiscale elevation percentile}
\usage{
wbt_multiscale_elevation_percentile(
  dem,
  out_mag,
  out_scale,
  sig_digits = 3,
  min_scale = 4,
  step = 1,
  num_steps = 10,
  step_nonlinearity = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{dem}{Input raster DEM file.}

\item{out_mag}{Output raster roughness magnitude file.}

\item{out_scale}{Output raster roughness scale file.}

\item{sig_digits}{Number of significant digits.}

\item{min_scale}{Minimum search neighbourhood radius in grid cells.}

\item{step}{Step size as any positive non-zero integer.}

\item{num_steps}{Number of steps.}

\item{step_nonlinearity}{Step nonlinearity factor (1.0-2.0 is typical).}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Calculates surface roughness over a range of spatial scales.
}
\keyword{GeomorphometricAnalysis}
