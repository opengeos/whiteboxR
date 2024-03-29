% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stream_network_analysis.R
\name{wbt_repair_stream_vector_topology}
\alias{wbt_repair_stream_vector_topology}
\title{Repair stream vector topology}
\usage{
wbt_repair_stream_vector_topology(
  input,
  output,
  dist = "",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Name of the input lines vector file.}

\item{output}{Name of the output lines vector file.}

\item{dist}{Snap distance, in xy units (metres).}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
This tool resolves topological errors and inconsistencies associated with digitized vector streams.
}
\keyword{StreamNetworkAnalysis}
