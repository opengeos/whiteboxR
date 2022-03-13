#' Dbscan
#'
#' Performs a DBSCAN-based unsupervised clustering operation.
#'
#' @param inputs Names of the input rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param output Name of the output raster file.
#' @param search_dist Search-distance parameter.
#' @param min_points Minimum point density needed to define 'core' point in cluster.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_dbscan <- function(inputs, output, scaling="Normalize", search_dist=0.01, min_points=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(search_dist)) {
    args <- paste(args, paste0("--search_dist=", search_dist))
  }
  if (!is.null(min_points)) {
    args <- paste(args, paste0("--min_points=", min_points))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "dbscan"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' K means clustering
#'
#' Performs a k-means clustering operation on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param out_html Output HTML report file.
#' @param classes Number of classes.
#' @param max_iterations Maximum number of iterations.
#' @param class_change Minimum percent of cells changed between iterations before completion.
#' @param initialize How to initialize cluster centres?.
#' @param min_class_size Minimum class size, in pixels.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_k_means_clustering <- function(inputs, output, classes, out_html=NULL, max_iterations=10, class_change=2.0, initialize="diagonal", min_class_size=10, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--classes=", wbt_file_path(classes)))
  if (!is.null(out_html)) {
    args <- paste(args, paste0("--out_html=", out_html))
  }
  if (!is.null(max_iterations)) {
    args <- paste(args, paste0("--max_iterations=", max_iterations))
  }
  if (!is.null(class_change)) {
    args <- paste(args, paste0("--class_change=", class_change))
  }
  if (!is.null(initialize)) {
    args <- paste(args, paste0("--initialize=", initialize))
  }
  if (!is.null(min_class_size)) {
    args <- paste(args, paste0("--min_class_size=", min_class_size))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "k_means_clustering"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Knn classification
#'
#' Performs a supervised k-nearest neighbour classification using training site polygons/points and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param training Name of the input training site polygons/points shapefile.
#' @param field Name of the attribute containing class name data.
#' @param output Name of the output raster file.
#' @param k k-parameter, which determines the number of nearest neighbours used.
#' @param clip Perform training data clipping to remove outlier pixels?.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_knn_classification <- function(inputs, training, field, output, scaling="Normalize", k=5, clip=TRUE, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  if (clip) {
    args <- paste(args, "--clip")
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "knn_classification"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Knn regression
#'
#' Performs a supervised k-nearest neighbour regression using training site points and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param training Name of the input training site points Shapefile.
#' @param field Name of the attribute containing response variable name data.
#' @param output Name of the output raster file.
#' @param k k-parameter, which determines the number of nearest neighbours used.
#' @param weight Use distance weighting?.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_knn_regression <- function(inputs, training, field, scaling="Normalize", output=NULL, k=5, weight=TRUE, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(k)) {
    args <- paste(args, paste0("--k=", k))
  }
  if (weight) {
    args <- paste(args, "--weight")
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "knn_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Logistic regression
#'
#' Performs a logistic regression analysis using training site polygons/points and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param training Name of the input training site polygons/points shapefile.
#' @param field Name of the attribute containing class data.
#' @param output Name of the output raster file.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_logistic_regression <- function(inputs, training, field, scaling="Normalize", output=NULL, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "logistic_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Modified k means clustering
#'
#' Performs a modified k-means clustering operation on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param output Output raster file.
#' @param out_html Output HTML report file.
#' @param start_clusters Initial number of clusters.
#' @param merge_dist Cluster merger distance.
#' @param max_iterations Maximum number of iterations.
#' @param class_change Minimum percent of cells changed between iterations before completion.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_modified_k_means_clustering <- function(inputs, output, out_html=NULL, start_clusters=1000, merge_dist=NULL, max_iterations=10, class_change=2.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(out_html)) {
    args <- paste(args, paste0("--out_html=", out_html))
  }
  if (!is.null(start_clusters)) {
    args <- paste(args, paste0("--start_clusters=", start_clusters))
  }
  if (!is.null(merge_dist)) {
    args <- paste(args, paste0("--merge_dist=", merge_dist))
  }
  if (!is.null(max_iterations)) {
    args <- paste(args, paste0("--max_iterations=", max_iterations))
  }
  if (!is.null(class_change)) {
    args <- paste(args, paste0("--class_change=", class_change))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "modified_k_means_clustering"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Random forest classification
#'
#' Performs a supervised random forest classification using training site polygons/points and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param training Name of the input training site polygons/points shapefile.
#' @param field Name of the attribute containing class data.
#' @param output Name of the output raster file.
#' @param split_criterion Split criterion to use when building a tree. Options include 'Gini', 'Entropy', and 'ClassificationError'.
#' @param n_trees The number of trees in the forest.
#' @param min_samples_leaf The minimum number of samples required to be at a leaf node.
#' @param min_samples_split The minimum number of samples required to split an internal node.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_random_forest_classification <- function(inputs, training, field, output=NULL, split_criterion="Gini", n_trees=500, min_samples_leaf=1, min_samples_split=2, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(split_criterion)) {
    args <- paste(args, paste0("--split_criterion=", split_criterion))
  }
  if (!is.null(n_trees)) {
    args <- paste(args, paste0("--n_trees=", n_trees))
  }
  if (!is.null(min_samples_leaf)) {
    args <- paste(args, paste0("--min_samples_leaf=", min_samples_leaf))
  }
  if (!is.null(min_samples_split)) {
    args <- paste(args, paste0("--min_samples_split=", min_samples_split))
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "random_forest_classification"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Random forest regression
#'
#' Performs a random forest regression analysis using training site data and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param training Name of the input training site points shapefile.
#' @param field Name of the attribute containing response variable name data.
#' @param output Name of the output raster file. This parameter is optional. When unspecified, the tool will only build the model. When specified, the tool will use the built model and predictor rasters to perform a spatial prediction.
#' @param n_trees The number of trees in the forest.
#' @param min_samples_leaf The minimum number of samples required to be at a leaf node.
#' @param min_samples_split The minimum number of samples required to split an internal node.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_random_forest_regression <- function(inputs, training, field, output=NULL, n_trees=100, min_samples_leaf=1, min_samples_split=2, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(n_trees)) {
    args <- paste(args, paste0("--n_trees=", n_trees))
  }
  if (!is.null(min_samples_leaf)) {
    args <- paste(args, paste0("--min_samples_leaf=", min_samples_leaf))
  }
  if (!is.null(min_samples_split)) {
    args <- paste(args, paste0("--min_samples_split=", min_samples_split))
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "random_forest_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Svm classification
#'
#' Performs an SVM binary classification using training site polygons/points and multiple input images.
#'
#' @param inputs Names of the input predictor rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param training Name of the input training site polygons/points Shapefile.
#' @param field Name of the attribute containing class data.
#' @param output Name of the output raster file.
#' @param c c-value, the regularization parameter.
#' @param gamma Gamma parameter used in setting the RBF (Gaussian) kernel function.
#' @param tolerance The tolerance parameter used in determining the stopping condition.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_svm_classification <- function(inputs, training, field, scaling="Normalize", output=NULL, c=200.0, gamma=50.0, tolerance=0.1, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(c)) {
    args <- paste(args, paste0("--c=", c))
  }
  if (!is.null(gamma)) {
    args <- paste(args, paste0("--gamma=", gamma))
  }
  if (!is.null(tolerance)) {
    args <- paste(args, paste0("--tolerance=", tolerance))
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "svm_classification"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Svm regression
#'
#' Performs a supervised SVM regression analysis using training site points and predictor rasters.
#'
#' @param inputs Names of the input predictor rasters.
#' @param scaling Scaling method for predictors. Options include 'None', 'Normalize', and 'Standardize'.
#' @param training Name of the input training site points Shapefile.
#' @param field Name of the attribute containing class data.
#' @param output Name of the output raster file.
#' @param c c-value, the regularization parameter.
#' @param eps Epsilon in the epsilon-SVR model.
#' @param gamma Gamma parameter used in setting the RBF (Gaussian) kernel function.
#' @param test_proportion The proportion of the dataset to include in the test split; default is 0.2.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_svm_regression <- function(inputs, training, field, scaling="Normalize", output=NULL, c=50.0, eps=10.0, gamma=0.5, test_proportion=0.2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--training=", wbt_file_path(training)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  if (!is.null(scaling)) {
    args <- paste(args, paste0("--scaling=", scaling))
  }
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(c)) {
    args <- paste(args, paste0("--c=", c))
  }
  if (!is.null(eps)) {
    args <- paste(args, paste0("--eps=", eps))
  }
  if (!is.null(gamma)) {
    args <- paste(args, paste0("--gamma=", gamma))
  }
  if (!is.null(test_proportion)) {
    args <- paste(args, paste0("--test_proportion=", test_proportion))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (!is.null(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "svm_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


