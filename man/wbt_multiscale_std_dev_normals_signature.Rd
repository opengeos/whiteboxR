% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_multiscale_std_dev_normals_signature}
\alias{wbt_multiscale_std_dev_normals_signature}
\title{Multiscale std dev normals signature}
\usage{
wbt_multiscale_std_dev_normals_signature(
  dem,
  points,
  output,
  min_scale = 1,
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

\item{points}{Input vector points file.}

\item{output}{Output HTML file.}

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
Calculates the surface roughness for points over a range of spatial scales.
}
\keyword{GeomorphometricAnalysis}
