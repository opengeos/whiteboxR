% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/whitebox_utilities.R
\name{wbt_install_wb_extension}
\alias{wbt_install_wb_extension}
\title{Install wb extension}
\usage{
wbt_install_wb_extension(
  install_extension = "General Toolset Extension",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{install_extension}{Name of the extension product to install. Options include: 'General Toolset Extension', 'DEM & Spatial Hydrology Extension', 'Lidar & Remote Sensing Extension', and 'Agriculture Extension'.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Use to install a Whitebox extension product.
}
\keyword{WhiteboxUtilities}
