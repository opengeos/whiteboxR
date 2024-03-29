% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/machine_learning.R
\name{wbt_svm_classification}
\alias{wbt_svm_classification}
\title{Svm classification}
\usage{
wbt_svm_classification(
  inputs,
  training,
  field,
  scaling = "Normalize",
  output = NULL,
  c = 200,
  gamma = 50,
  tolerance = 0.1,
  test_proportion = 0.2,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
}
\arguments{
\item{inputs}{Names of the input predictor rasters.}

\item{training}{Name of the input training site polygons/points Shapefile.}

\item{field}{Name of the attribute containing class data.}

\item{scaling}{Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.}

\item{output}{Name of the output raster file.}

\item{c}{c-value, the regularization parameter.}

\item{gamma}{Gamma parameter used in setting the RBF (Gaussian) kernel function.}

\item{tolerance}{The tolerance parameter used in determining the stopping condition.}

\item{test_proportion}{The proportion of the dataset to include in the test split; default is 0.2.}

\item{wd}{Changes the working directory. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_wd()} for details.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is \code{FALSE}, tools will not print output messages. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_verbose()} for details.}

\item{compress_rasters}{Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters. Default: \code{NULL} will use the value in WhiteboxTools settings, see \code{wbt_compress_rasters()} for details.}

\item{command_only}{Return command that would be executed by \code{system()} rather than running tool. Default: \code{FALSE}.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs an SVM binary classification using training site polygons/points and multiple input images.
}
\keyword{MachineLearning}
