% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_rescale_value_range}
\alias{wbt_rescale_value_range}
\title{Rescale value range}
\usage{
wbt_rescale_value_range(
  input,
  output,
  out_min_val,
  out_max_val,
  clip_min = NULL,
  clip_max = NULL,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Input raster file path. See \code{wbt_file_path()} for details.}

\item{output}{Output raster file.}

\item{out_min_val}{New minimum value in output image.}

\item{out_max_val}{New maximum value in output image.}

\item{clip_min}{Optional lower tail clip value.}

\item{clip_max}{Optional upper tail clip value.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a min-max contrast stretch on an input greytone image.
}
\keyword{MathandStatsTools}
