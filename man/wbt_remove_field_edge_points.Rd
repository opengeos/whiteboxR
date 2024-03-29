% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/precision_agriculture.R
\name{wbt_remove_field_edge_points}
\alias{wbt_remove_field_edge_points}
\title{Remove field edge points}
\usage{
wbt_remove_field_edge_points(
  input,
  output,
  dist = NULL,
  max_change_in_heading = 25,
  flag_edges = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Name of the input points shapefile.}

\item{output}{Name of the output points shapefile.}

\item{dist}{Average distance between passes, in meters.}

\item{max_change_in_heading}{Max change in heading.}

\item{flag_edges}{Don't remove edge points, just flag them in the attribute table?.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
This tool can be used to remove, or flag, most of the points along the edges from a crop yield data set.
}
\keyword{PrecisionAgriculture}
