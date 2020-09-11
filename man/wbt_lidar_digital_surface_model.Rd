% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lidar_analysis.R
\name{wbt_lidar_digital_surface_model}
\alias{wbt_lidar_digital_surface_model}
\title{Lidar digital surface model}
\usage{
wbt_lidar_digital_surface_model(
  input,
  output = NULL,
  resolution = 1,
  radius = 0.5,
  minz = NULL,
  maxz = NULL,
  max_triangle_edge_length = NULL,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input LiDAR file (including extension).}

\item{output}{Output raster file (including extension).}

\item{resolution}{Output raster's grid resolution.}

\item{radius}{Search Radius.}

\item{minz}{Optional minimum elevation for inclusion in interpolation.}

\item{maxz}{Optional maximum elevation for inclusion in interpolation.}

\item{max_triangle_edge_length}{Optional maximum triangle edge length; triangles larger than this size will not be gridded.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Creates a top-surface digital surface model (DSM) from a LiDAR point cloud.
}