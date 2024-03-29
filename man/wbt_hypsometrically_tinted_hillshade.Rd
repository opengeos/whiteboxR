% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_hypsometrically_tinted_hillshade}
\alias{wbt_hypsometrically_tinted_hillshade}
\title{Hypsometrically tinted hillshade}
\usage{
wbt_hypsometrically_tinted_hillshade(
  dem,
  output,
  altitude = 45,
  hs_weight = 0.5,
  brightness = 0.5,
  atmospheric = 0,
  palette = "atlas",
  reverse = FALSE,
  zfactor = NULL,
  full_mode = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{dem}{Input raster DEM file.}

\item{output}{Output raster file.}

\item{altitude}{Illumination source altitude in degrees.}

\item{hs_weight}{Weight given to hillshade relative to relief (0.0-1.0).}

\item{brightness}{Brightness factor (0.0-1.0).}

\item{atmospheric}{Atmospheric effects weight (0.0-1.0).}

\item{palette}{Options include 'atlas', 'high_relief', 'arid', 'soft', 'muted', 'purple', 'viridis', 'gn_yl', 'pi_y_g', 'bl_yl_rd', and 'deep'.}

\item{reverse}{Optional flag indicating whether to use reverse the palette.}

\item{zfactor}{Optional multiplier for when the vertical and horizontal units are not the same.}

\item{full_mode}{Optional flag indicating whether to use full 360-degrees of illumination sources.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Creates an colour shaded relief image from an input DEM.
}
\keyword{GeomorphometricAnalysis}
