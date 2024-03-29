% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gis_analysis_patch_shape.R
\name{wbt_find_patch_or_class_edge_cells}
\alias{wbt_find_patch_or_class_edge_cells}
\title{Find patch or class edge cells}
\usage{
wbt_find_patch_or_class_edge_cells(
  input,
  output,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{input}{Input raster file path. See \code{wbt_file_path()} for details.}

\item{output}{Output raster file.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Finds all cells located on the edge of patch or class features.
}
\keyword{GISAnalysisPatchShapeTools}
