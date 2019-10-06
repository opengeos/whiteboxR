% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gis_analysis.R
\name{wbt_block_minimum_gridding}
\alias{wbt_block_minimum_gridding}
\title{Block minimum gridding}
\usage{
wbt_block_minimum_gridding(input, field, output, use_z = FALSE,
  cell_size = NULL, base = NULL, verbose_mode = FALSE)
}
\arguments{
\item{input}{Input vector Points file.}

\item{field}{Input field name in attribute table.}

\item{output}{Output raster file.}

\item{use_z}{Use z-coordinate instead of field?.}

\item{cell_size}{Optionally specified cell size of output raster. Not used when base raster is specified.}

\item{base}{Optionally specified input base raster file. Not used when a cell size is specified.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}
}
\value{
Returns the tool text outputs.
}
\description{
Creates a raster grid based on a set of vector points and assigns grid values using a block minimum scheme.
}