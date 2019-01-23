#' Breaches all of the depressions in a DEM
#'
#' Breaches all of the depressions in a DEM using Lindsay's (2016) algorithm. This should be preferred over depression filling in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param max_depth Optional maximum breach depth (default is Inf).
#' @param max_length Optional maximum breach channel length (in grid cells; default is Inf).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' output <- file.path(getwd(), "output.tif")
#' breach_depressions(dem, output, verbose_mode = TRUE)
breach_depressions <- function(dem, output, max_depth=NULL, max_length=NULL, verbose_mode=TRUE) {
  wbt_exe <- wbt_exe_path()
  args <- paste0("--dem=", dem)
  args <- paste(args, paste0("--output=", output))
  if (!is.null(max_depth)) {
    args <- paste(args, paste0("--max_depth=", max_depth))
  }
  if (!is.null(max_length)) {
    args <- paste(args, paste0("--max_depth=", max_length))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


