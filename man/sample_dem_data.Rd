% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wbt.R
\name{sample_dem_data}
\alias{sample_dem_data}
\title{Convenience method for path to sample DEM}
\usage{
sample_dem_data(
  destfile = file.path(system.file("extdata", package = "whitebox"), "DEM.tif"),
  ...
)
}
\arguments{
\item{destfile}{Path to target location of sample data. Will be downloaded if does not exist. Defaults to file path of extdata subfolder of whitebox package installation directory.}

\item{...}{additional arguments to download.file()}
}
\value{
character.
}
\description{
Get a file path to DEM.tif stored in extdata subfolder of whitebox package installation directory. If needed, download the TIFF file from GitHub.
}
\examples{

if (check_whitebox_binary()) {
  wbt_slope(sample_dem_data(), output = "slope.tif")
}
unlink(c('slope.tif', 'settings.json'))
}
\keyword{General}
\keyword{datasets}
