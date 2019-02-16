#' And
#'
#' Performs a logical AND operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
and <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Not
#'
#' Performs a logical NOT operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
not <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Or
#'
#' Performs a logical OR operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
or <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Absolute value
#'
#' Calculates the absolute value of every cell in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' absolute_value(input = dem, output = 'output.tif')
absolute_value <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Add
#'
#' Performs an addition operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
add <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Anova
#'
#' Performs an analysis of variance (ANOVA) test on a raster dataset.
#'
#' @param input Input raster file.
#' @param features Feature definition (or class) raster.
#' @param output Output HTML file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
anova <- function(input, features, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--features=", features))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Arc cos
#'
#' Returns the inverse cosine (arccos) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' arc_cos(input = dem, output = 'output.tif')
arc_cos <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Arc sin
#'
#' Returns the inverse sine (arcsin) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' arc_sin(input = dem, output = 'output.tif')
arc_sin <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Arc tan
#'
#' Returns the inverse tangent (arctan) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' arc_tan(input = dem, output = 'output.tif')
arc_tan <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Atan2
#'
#' Returns the 2-argument inverse tangent (atan2).
#'
#' @param input_y Input y raster file or constant value (rise).
#' @param input_x Input x raster file or constant value (run).
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
atan2 <- function(input_y, input_x, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input_y=", input_y))
  args <- paste(args, paste0("--input_x=", input_x))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Attribute correlation
#'
#' Performs a correlation analysis on attribute fields from a vector database.
#'
#' @param input Input raster file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
attribute_correlation <- function(input, output=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Attribute histogram
#'
#' Creates a histogram for the field values of a vector's attribute table.
#'
#' @param input Input raster file.
#' @param field Input field name in attribute table.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
attribute_histogram <- function(input, field, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Attribute scattergram
#'
#' Creates a scattergram for two field values of a vector's attribute table.
#'
#' @param input Input raster file.
#' @param fieldx Input field name in attribute table for the x-axis.
#' @param fieldy Input field name in attribute table for the y-axis.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param trendline Draw the trendline.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
attribute_scattergram <- function(input, fieldx, fieldy, output, trendline=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--fieldx=", fieldx))
  args <- paste(args, paste0("--fieldy=", fieldy))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(trendline)) {
    args <- paste(args, paste0("--trendline=", trendline))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Ceil
#'
#' Returns the smallest (closest to negative infinity) value that is greater than or equal to the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' ceil(input = dem, output = 'output.tif')
ceil <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cos
#'
#' Returns the cosine (cos) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' cos(input = dem, output = 'output.tif')
cos <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cosh
#'
#' Returns the hyperbolic cosine (cosh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' cosh(input = dem, output = 'output.tif')
cosh <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Crispness index
#'
#' Calculates the Crispness Index, which is used to quantify how crisp (or conversely how fuzzy) a probability image is.
#'
#' @param input Input raster file.
#' @param output Optional output html file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
crispness_index <- function(input, output=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cross tabulation
#'
#' Performs a cross-tabulation on two categorical images.
#'
#' @param input1 Input raster file 1.
#' @param input2 Input raster file 1.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
cross_tabulation <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Cumulative distribution
#'
#' Converts a raster image to its cumulative distribution function.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' cumulative_distribution(input = dem, output = 'output.tif')
cumulative_distribution <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Decrement
#'
#' Decreases the values of each grid cell in an input raster by 1.0 (see also InPlaceSubtract).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' decrement(input = dem, output = 'output.tif')
decrement <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Divide
#'
#' Performs a division operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
divide <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Equal to
#'
#' Performs a equal-to comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
equal_to <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Exp
#'
#' Returns the exponential (base e) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' exp(input = dem, output = 'output.tif')
exp <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Exp2
#'
#' Returns the exponential (base 2) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' exp2(input = dem, output = 'output.tif')
exp2 <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extract raster statistics
#'
#' Extracts descriptive statistics for a group of patches in a raster.
#'
#' @param input Input data raster file.
#' @param features Input feature definition raster file.
#' @param output Output raster file.
#' @param stat Statistic to extract.
#' @param out_table Output HTML Table file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
extract_raster_statistics <- function(input, features, output=NULL, stat="average", out_table=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--features=", features))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(stat)) {
    args <- paste(args, paste0("--stat=", stat))
  }
  if (!is.null(out_table)) {
    args <- paste(args, paste0("--out_table=", out_table))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Floor
#'
#' Returns the largest (closest to positive infinity) value that is less than or equal to the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' floor(input = dem, output = 'output.tif')
floor <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Greater than
#'
#' Performs a greater-than comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param incl_equals Perform a greater-than-or-equal-to operation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
greater_than <- function(input1, input2, output, incl_equals=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(incl_equals)) {
    args <- paste(args, paste0("--incl_equals=", incl_equals))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image autocorrelation
#'
#' Performs Moran's I analysis on two or more input images.
#'
#' @param inputs Input raster files.
#' @param contiguity Contiguity type.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
image_autocorrelation <- function(inputs, output, contiguity="Rook", verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(contiguity)) {
    args <- paste(args, paste0("--contiguity=", contiguity))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image correlation
#'
#' Performs image correlation on two or more input images.
#'
#' @param inputs Input raster files.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
image_correlation <- function(inputs, output=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Image regression
#'
#' Performs image regression analysis on two input images.
#'
#' @param input1 Input raster file (independent variable, X).
#' @param input2 Input raster file (dependent variable, Y).
#' @param output Output HTML file for regression summary report.
#' @param out_residuals Output raster regression resdidual file.
#' @param standardize Optional flag indicating whether to standardize the residuals map.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
image_regression <- function(input1, input2, output, out_residuals=NULL, standardize=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_residuals)) {
    args <- paste(args, paste0("--out_residuals=", out_residuals))
  }
  if (!is.null(standardize)) {
    args <- paste(args, paste0("--standardize=", standardize))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' In place add
#'
#' Performs an in-place addition operation (input1 += input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
in_place_add <- function(input1, input2, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' In place divide
#'
#' Performs an in-place division operation (input1 /= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
in_place_divide <- function(input1, input2, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' In place multiply
#'
#' Performs an in-place multiplication operation (input1 *= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
in_place_multiply <- function(input1, input2, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' In place subtract
#'
#' Performs an in-place subtraction operation (input1 -= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
in_place_subtract <- function(input1, input2, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Increment
#'
#' Increases the values of each grid cell in an input raster by 1.0. (see also InPlaceAdd).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' increment(input = dem, output = 'output.tif')
increment <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Integer division
#'
#' Performs an integer division operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
integer_division <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Is no data
#'
#' Identifies NoData valued pixels in an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' is_no_data(input = dem, output = 'output.tif')
is_no_data <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Kappa index
#'
#' Performs a kappa index of agreement (KIA) analysis on two categorical raster files.
#'
#' @param input1 Input classification raster file.
#' @param input2 Input reference raster file.
#' @param output Output HTML file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
kappa_index <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Ks test for normality
#'
#' Evaluates whether the values in a raster are normally distributed.
#'
#' @param input Input raster file.
#' @param output Output HTML file.
#' @param num_samples Number of samples. Leave blank to use whole image.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
ks_test_for_normality <- function(input, output, num_samples=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Less than
#'
#' Performs a less-than comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param incl_equals Perform a less-than-or-equal-to operation.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
less_than <- function(input1, input2, output, incl_equals=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(incl_equals)) {
    args <- paste(args, paste0("--incl_equals=", incl_equals))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' List unique values
#'
#' Lists the unique values contained in a field witin a vector's attribute table.
#'
#' @param input Input raster file.
#' @param field Input field name in attribute table.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
list_unique_values <- function(input, field, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Ln
#'
#' Returns the natural logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' ln(input = dem, output = 'output.tif')
ln <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Log10
#'
#' Returns the base-10 logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' log10(input = dem, output = 'output.tif')
log10 <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Log2
#'
#' Returns the base-2 logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' log2(input = dem, output = 'output.tif')
log2 <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max
#'
#' Performs a MAX operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
max <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Min
#'
#' Performs a MIN operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
min <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Modulo
#'
#' Performs a modulo operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
modulo <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Multiply
#'
#' Performs a multiplication operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
multiply <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Negate
#'
#' Changes the sign of values in a raster or the 0-1 values of a Boolean raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' negate(input = dem, output = 'output.tif')
negate <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Not equal to
#'
#' Performs a not-equal-to comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
not_equal_to <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Power
#'
#' Raises the values in grid cells of one rasters, or a constant value, by values in another raster or constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
power <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Principal component analysis
#'
#' Performs a principal component analysis (PCA) on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param out_html Output HTML report file.
#' @param num_comp Number of component images to output; <= to num. input images.
#' @param standardized Perform standardized PCA?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
principal_component_analysis <- function(inputs, out_html, num_comp=NULL, standardized=FALSE, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--out_html=", out_html))
  if (!is.null(num_comp)) {
    args <- paste(args, paste0("--num_comp=", num_comp))
  }
  if (!is.null(standardized)) {
    args <- paste(args, paste0("--standardized=", standardized))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Quantiles
#'
#' Transforms raster values into quantiles.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_quantiles Number of quantiles.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
quantiles <- function(input, output, num_quantiles=5, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_quantiles)) {
    args <- paste(args, paste0("--num_quantiles=", num_quantiles))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Random field
#'
#' Creates an image containing random values.
#'
#' @param base Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
random_field <- function(base, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Random sample
#'
#' Creates an image containing randomly located sample grid cells with unique IDs.
#'
#' @param base Input raster file.
#' @param output Output raster file.
#' @param num_samples Number of samples.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
random_sample <- function(base, output, num_samples=1000, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster histogram
#'
#' Creates a histogram from raster values.
#'
#' @param input Input raster file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
raster_histogram <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster summary stats
#'
#' Measures a rasters average, standard deviation, num. non-nodata cells, and total.
#'
#' @param input Input raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
raster_summary_stats <- function(input, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Reciprocal
#'
#' Returns the reciprocal (i.e. 1 / z) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' reciprocal(input = dem, output = 'output.tif')
reciprocal <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Rescale value range
#'
#' Performs a min-max contrast stretch on an input greytone image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param out_min_val New minimum value in output image.
#' @param out_max_val New maximum value in output image.
#' @param clip_min Optional lower tail clip value.
#' @param clip_max Optional upper tail clip value.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
rescale_value_range <- function(input, output, out_min_val, out_max_val, clip_min=NULL, clip_max=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--out_min_val=", out_min_val))
  args <- paste(args, paste0("--out_max_val=", out_max_val))
  if (!is.null(clip_min)) {
    args <- paste(args, paste0("--clip_min=", clip_min))
  }
  if (!is.null(clip_max)) {
    args <- paste(args, paste0("--clip_max=", clip_max))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Root mean square error
#'
#' Calculates the RMSE and other accuracy statistics.
#'
#' @param input Input raster file.
#' @param base Input base raster file used for comparison.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
root_mean_square_error <- function(input, base, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--base=", base))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Round
#'
#' Rounds the values in an input raster to the nearest integer value.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' round(input = dem, output = 'output.tif')
round <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sin
#'
#' Returns the sine (sin) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' sin(input = dem, output = 'output.tif')
sin <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sinh
#'
#' Returns the hyperbolic sine (sinh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' sinh(input = dem, output = 'output.tif')
sinh <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Square
#'
#' Squares the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' square(input = dem, output = 'output.tif')
square <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Square root
#'
#' Returns the square root of the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' square_root(input = dem, output = 'output.tif')
square_root <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Subtract
#'
#' Performs a differencing operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
subtract <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tan
#'
#' Returns the tangent (tan) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' tan(input = dem, output = 'output.tif')
tan <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tanh
#'
#' Returns the hyperbolic tangent (tanh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' tanh(input = dem, output = 'output.tif')
tanh <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' To degrees
#'
#' Converts a raster from radians to degrees.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' to_degrees(input = dem, output = 'output.tif')
to_degrees <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' To radians
#'
#' Converts a raster from degrees to radians.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' to_radians(input = dem, output = 'output.tif')
to_radians <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Trend surface
#'
#' Estimates the trend surface of an input raster file.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param order Polynomial order (1 to 10).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
trend_surface <- function(input, output, order=1, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(order)) {
    args <- paste(args, paste0("--order=", order))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Trend surface vector points
#'
#' Estimates a trend surface from vector points.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param order Polynomial order (1 to 10).
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
trend_surface_vector_points <- function(input, field, output, cell_size, order=1, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--field=", field))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--cell_size=", cell_size))
  if (!is.null(order)) {
    args <- paste(args, paste0("--order=", order))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Truncate
#'
#' Truncates the values in a raster to the desired number of decimal places.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_decimals Number of decimals left after truncation (default is zero).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
truncate <- function(input, output, num_decimals=NULL, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(num_decimals)) {
    args <- paste(args, paste0("--num_decimals=", num_decimals))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Turning bands simulation
#'
#' Creates an image containing random values based on a turning-bands simulation.
#'
#' @param base Input base raster file.
#' @param output Output file.
#' @param range The field's range, in xy-units, related to the extent of spatial autocorrelation.
#' @param iterations The number of iterations.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
turning_bands_simulation <- function(base, output, range, iterations=1000, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--range=", range))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Xor
#'
#' Performs a logical XOR operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
xor <- function(input1, input2, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Z scores
#'
#' Standardizes the values in an input raster by converting to z-scores.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
#'
#' @examples
#' dem <- system.file("extdata", "DEM.tif", package="whitebox")
#' z_scores(input = dem, output = 'output.tif')
z_scores <- function(input, output, verbose_mode=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


