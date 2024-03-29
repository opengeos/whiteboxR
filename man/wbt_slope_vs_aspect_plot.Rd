% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_slope_vs_aspect_plot}
\alias{wbt_slope_vs_aspect_plot}
\title{Slope vs aspect plot}
\usage{
wbt_slope_vs_aspect_plot(
  input,
  output,
  bin_size = 2,
  min_slope = 0.1,
  zfactor = 1,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Name of the input raster image file.}

\item{output}{Name of the output report file (*.html).}

\item{bin_size}{Aspect bin size, in degrees.}

\item{min_slope}{Minimum slope, in degrees.}

\item{zfactor}{Z conversion factor.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
This tool creates a slope-aspect relation plot from an input DEM.
}
\keyword{GeomorphometricAnalysis}
