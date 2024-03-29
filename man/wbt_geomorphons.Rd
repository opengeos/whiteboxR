% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_geomorphons}
\alias{wbt_geomorphons}
\title{Geomorphons}
\usage{
wbt_geomorphons(
  dem,
  output,
  search = 50,
  threshold = 0,
  fdist = 0,
  skip = 0,
  forms = TRUE,
  residuals = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{dem}{Input raster DEM file.}

\item{output}{Output raster file.}

\item{search}{Look up distance (in cells).}

\item{threshold}{Flatness threshold for the classification function (in degrees).}

\item{fdist}{Distance (in cells) to begin reducing the flatness threshold to avoid problems with pseudo-flat lines-of-sight.}

\item{skip}{Distance (in cells) to begin calculating lines-of-sight.}

\item{forms}{Classify geomorphons into 10 common land morphologies, else output ternary pattern.}

\item{residuals}{Convert elevation to residuals of a linear model.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Computes geomorphon patterns.
}
\keyword{GeomorphometricAnalysis}
