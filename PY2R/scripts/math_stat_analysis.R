#' And
#'
#' Performs a logical AND operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_and <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "and"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Not
#'
#' Performs a logical NOT operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_not <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "not"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Or
#'
#' Performs a logical OR operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_or <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "or"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Absolute value
#'
#' Calculates the absolute value of every cell in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_absolute_value <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "absolute_value"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Add
#'
#' Performs an addition operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_add <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "add"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Anova
#'
#' Performs an analysis of variance (ANOVA) test on a raster dataset.
#'
#' @param input Input raster file.
#' @param features Feature definition (or class) raster.
#' @param output Output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_anova <- function(input, features, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--features=", wbt_file_path(features)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "anova"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Arc cos
#'
#' Returns the inverse cosine (arccos) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_arc_cos <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "arc_cos"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Arc sin
#'
#' Returns the inverse sine (arcsin) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_arc_sin <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "arc_sin"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Arc tan
#'
#' Returns the inverse tangent (arctan) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_arc_tan <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "arc_tan"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Arcosh
#'
#' Returns the inverse hyperbolic cosine (arcosh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_arcosh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "arcosh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Arsinh
#'
#' Returns the inverse hyperbolic sine (arsinh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_arsinh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "arsinh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Artanh
#'
#' Returns the inverse hyperbolic tangent (arctanh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_artanh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "artanh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Atan2
#'
#' Returns the 2-argument inverse tangent (atan2).
#'
#' @param input_y Input y raster file or constant value (rise).
#' @param input_x Input x raster file or constant value (run).
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_atan2 <- function(input_y, input_x, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input_y=", wbt_file_path(input_y)))
  args <- paste(args, paste0("--input_x=", wbt_file_path(input_x)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "atan2"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Attribute correlation
#'
#' Performs a correlation analysis on attribute fields from a vector database.
#'
#' @param input Input vector file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_attribute_correlation <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "attribute_correlation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Attribute correlation neighbourhood analysis
#'
#' Performs a correlation on two input vector attributes within a neighbourhood search windows.
#'
#' @param input Input vector file.
#' @param field1 First input field name (dependent variable) in attribute table.
#' @param field2 Second input field name (independent variable) in attribute table.
#' @param radius Search Radius (in map units).
#' @param min_points Minimum number of points.
#' @param stat Correlation type; one of 'pearson' (default) and 'spearman'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_attribute_correlation_neighbourhood_analysis <- function(input, field1, field2, radius=NULL, min_points=NULL, stat="pearson", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field1=", wbt_file_path(field1)))
  args <- paste(args, paste0("--field2=", wbt_file_path(field2)))
  if (!is.null(radius)) {
    args <- paste(args, paste0("--radius=", radius))
  }
  if (!is.null(min_points)) {
    args <- paste(args, paste0("--min_points=", min_points))
  }
  if (!is.null(stat)) {
    args <- paste(args, paste0("--stat=", stat))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "attribute_correlation_neighbourhood_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Attribute histogram
#'
#' Creates a histogram for the field values of a vector's attribute table.
#'
#' @param input Input raster file.
#' @param field Input field name in attribute table.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_attribute_histogram <- function(input, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "attribute_histogram"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_attribute_scattergram <- function(input, fieldx, fieldy, output, trendline=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--fieldx=", wbt_file_path(fieldx)))
  args <- paste(args, paste0("--fieldy=", wbt_file_path(fieldy)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (trendline) {
    args <- paste(args, "--trendline")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "attribute_scattergram"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Ceil
#'
#' Returns the smallest (closest to negative infinity) value that is greater than or equal to the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ceil <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ceil"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Conditional evaluation
#'
#' This tool performs a conditional evaluation (if-then-else) operation on a raster.
#'
#' @param input Name of the input raster file.
#' @param statement Conditional statement e.g. value > 35.0. This statement must be a valid Rust statement.
#' @param true Value where condition evaluates TRUE (input raster or constant value).
#' @param false Value where condition evaluates FALSE (input raster or constant value).
#' @param output Name of the output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_conditional_evaluation <- function(input, output, statement="", true=NULL, false=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(statement)) {
    args <- paste(args, paste0("--statement=", statement))
  }
  if (!is.null(true)) {
    args <- paste(args, paste0("--true=", true))
  }
  if (!is.null(false)) {
    args <- paste(args, paste0("--false=", false))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "conditional_evaluation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Conditioned latin hypercube
#'
#' Implements conditioned Latin Hypercube sampling.
#'
#' @param inputs Name of the input raster file.
#' @param output Output shapefile.
#' @param samples Number of sample sites returned.
#' @param iterations Maximum iterations (if stopping criteria not reached).
#' @param seed Seed for RNG consistency.
#' @param prob Probability of random resample or resampling worst strata between [0,1].
#' @param threshold Objective function values below the theshold stop the resampling iterations.
#' @param temp Initial annealing temperature between [0,1].
#' @param temp_decay Annealing temperature decay proportion between [0,1]. Reduce temperature by this proportion each annealing cycle.
#' @param cycle Number of iterations before decaying annealing temperature.
#' @param average Weight the continuous objective funtion by the 1/N contributing strata.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_conditioned_latin_hypercube <- function(inputs, output, samples=500, iterations=25000, seed=NULL, prob=0.5, threshold=NULL, temp=1.0, temp_decay=0.05, cycle=10, average=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(samples)) {
    args <- paste(args, paste0("--samples=", samples))
  }
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  if (!is.null(seed)) {
    args <- paste(args, paste0("--seed=", seed))
  }
  if (!is.null(prob)) {
    args <- paste(args, paste0("--prob=", prob))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(temp)) {
    args <- paste(args, paste0("--temp=", temp))
  }
  if (!is.null(temp_decay)) {
    args <- paste(args, paste0("--temp_decay=", temp_decay))
  }
  if (!is.null(cycle)) {
    args <- paste(args, paste0("--cycle=", cycle))
  }
  if (average) {
    args <- paste(args, "--average")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "conditioned_latin_hypercube"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Cos
#'
#' Returns the cosine (cos) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cos <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "cos"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Cosh
#'
#' Returns the hyperbolic cosine (cosh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cosh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "cosh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Crispness index
#'
#' Calculates the Crispness Index, which is used to quantify how crisp (or conversely how fuzzy) a probability image is.
#'
#' @param input Input raster file.
#' @param output Optional output html file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_crispness_index <- function(input, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "crispness_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Cross tabulation
#'
#' Performs a cross-tabulation on two categorical images.
#'
#' @param input1 Input raster file 1.
#' @param input2 Input raster file 1.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cross_tabulation <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "cross_tabulation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Cumulative distribution
#'
#' Converts a raster image to its cumulative distribution function.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_cumulative_distribution <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "cumulative_distribution"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Decrement
#'
#' Decreases the values of each grid cell in an input raster by 1.0 (see also InPlaceSubtract).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_decrement <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "decrement"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Divide
#'
#' Performs a division operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_divide <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "divide"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Equal to
#'
#' Performs a equal-to comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_equal_to <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "equal_to"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Exp
#'
#' Returns the exponential (base e) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_exp <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "exp"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Exp2
#'
#' Returns the exponential (base 2) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_exp2 <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "exp2"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Floor
#'
#' Returns the largest (closest to positive infinity) value that is less than or equal to the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_floor <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "floor"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Greater than
#'
#' Performs a greater-than comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param incl_equals Perform a greater-than-or-equal-to operation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_greater_than <- function(input1, input2, output, incl_equals=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (incl_equals) {
    args <- paste(args, "--incl_equals")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "greater_than"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Image autocorrelation
#'
#' Performs Moran's I analysis on two or more input images.
#'
#' @param inputs Input raster files.
#' @param contiguity Contiguity type.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_autocorrelation <- function(inputs, output, contiguity="Rook", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(contiguity)) {
    args <- paste(args, paste0("--contiguity=", contiguity))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_autocorrelation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Image correlation
#'
#' Performs image correlation on two or more input images.
#'
#' @param inputs Input raster files.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_correlation <- function(inputs, output=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_correlation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Image correlation neighbourhood analysis
#'
#' Performs image correlation on two input images neighbourhood search windows.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output1 Output correlation (r-value or rho) raster file.
#' @param output2 Output significance (p-value) raster file.
#' @param filter Size of the filter kernel.
#' @param stat Correlation type; one of 'pearson' (default) and 'spearman'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_correlation_neighbourhood_analysis <- function(input1, input2, output1, output2, filter=11, stat="pearson", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output1=", wbt_file_path(output1)))
  args <- paste(args, paste0("--output2=", wbt_file_path(output2)))
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(stat)) {
    args <- paste(args, paste0("--stat=", stat))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_correlation_neighbourhood_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Image regression
#'
#' Performs image regression analysis on two input images.
#'
#' @param input1 Input raster file (independent variable, X).
#' @param input2 Input raster file (dependent variable, Y).
#' @param output Output HTML file for regression summary report.
#' @param out_residuals Output raster regression residual file.
#' @param standardize Optional flag indicating whether to standardize the residuals map.
#' @param scattergram Optional flag indicating whether to output a scattergram.
#' @param num_samples Number of samples used to create scattergram.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_image_regression <- function(input1, input2, output, out_residuals=NULL, standardize=FALSE, scattergram=FALSE, num_samples=1000, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(out_residuals)) {
    args <- paste(args, paste0("--out_residuals=", out_residuals))
  }
  if (standardize) {
    args <- paste(args, "--standardize")
  }
  if (scattergram) {
    args <- paste(args, "--scattergram")
  }
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "image_regression"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' In place add
#'
#' Performs an in-place addition operation (input1 += input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_in_place_add <- function(input1, input2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "in_place_add"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' In place divide
#'
#' Performs an in-place division operation (input1 /= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_in_place_divide <- function(input1, input2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "in_place_divide"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' In place multiply
#'
#' Performs an in-place multiplication operation (input1 *= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_in_place_multiply <- function(input1, input2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "in_place_multiply"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' In place subtract
#'
#' Performs an in-place subtraction operation (input1 -= input2).
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file or constant value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_in_place_subtract <- function(input1, input2, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "in_place_subtract"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Increment
#'
#' Increases the values of each grid cell in an input raster by 1.0. (see also InPlaceAdd).
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_increment <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "increment"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Integer division
#'
#' Performs an integer division operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_integer_division <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "integer_division"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Inverse principal component analysis
#'
#' This tool performs an inverse principal component analysis on a series of input component images.
#'
#' @param inputs Name of the input PCA component images.
#' @param report Name of the PCA report file (*.html).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_inverse_principal_component_analysis <- function(inputs, report, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--report=", wbt_file_path(report)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "inverse_principal_component_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Is no data
#'
#' Identifies NoData valued pixels in an image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_is_no_data <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "is_no_data"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Kappa index
#'
#' Performs a kappa index of agreement (KIA) analysis on two categorical raster files.
#'
#' @param input1 Input classification raster file.
#' @param input2 Input reference raster file.
#' @param output Output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_kappa_index <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "kappa_index"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Ks test for normality
#'
#' Evaluates whether the values in a raster are normally distributed.
#'
#' @param input Input raster file.
#' @param output Output HTML file.
#' @param num_samples Number of samples. Leave blank to use whole image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ks_test_for_normality <- function(input, output, num_samples=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ks_test_for_normality"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Less than
#'
#' Performs a less-than comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param incl_equals Perform a less-than-or-equal-to operation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_less_than <- function(input1, input2, output, incl_equals=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (incl_equals) {
    args <- paste(args, "--incl_equals")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "less_than"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' List unique values
#'
#' Lists the unique values contained in a field within a vector's attribute table.
#'
#' @param input Input raster file.
#' @param field Input field name in attribute table.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_list_unique_values <- function(input, field, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "list_unique_values"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Ln
#'
#' Returns the natural logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_ln <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "ln"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Log10
#'
#' Returns the base-10 logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_log10 <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "log10"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Log2
#'
#' Returns the base-2 logarithm of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_log2 <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "log2"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Max
#'
#' Performs a MAX operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_max <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "max"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Min
#'
#' Performs a MIN operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_min <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "min"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Modulo
#'
#' Performs a modulo operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_modulo <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "modulo"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Multiply
#'
#' Performs a multiplication operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multiply <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multiply"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Negate
#'
#' Changes the sign of values in a raster or the 0-1 values of a Boolean raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_negate <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "negate"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Not equal to
#'
#' Performs a not-equal-to comparison operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_not_equal_to <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "not_equal_to"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Paired sample t test
#'
#' Performs a 2-sample K-S test for significant differences on two input rasters.
#'
#' @param input1 First input raster file.
#' @param input2 Second input raster file.
#' @param output Output HTML file.
#' @param num_samples Number of samples. Leave blank to use whole image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_paired_sample_t_test <- function(input1, input2, output, num_samples=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "paired_sample_t_test"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Phi coefficient
#'
#' This tool performs a binary classification accuracy assessment.
#'
#' @param input1 Name of the first input raster image file.
#' @param input2 Name of the second input raster image file.
#' @param output Name of the output HTML file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_phi_coefficient <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "phi_coefficient"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Power
#'
#' Raises the values in grid cells of one rasters, or a constant value, by values in another raster or constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_power <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "power"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Principal component analysis
#'
#' Performs a principal component analysis (PCA) on a multi-spectral dataset.
#'
#' @param inputs Input raster files.
#' @param output Output HTML report file.
#' @param num_comp Number of component images to output; <= to num. input images.
#' @param standardized Perform standardized PCA?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_principal_component_analysis <- function(inputs, output, num_comp=NULL, standardized=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_comp)) {
    args <- paste(args, paste0("--num_comp=", num_comp))
  }
  if (standardized) {
    args <- paste(args, "--standardized")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "principal_component_analysis"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Quantiles
#'
#' Transforms raster values into quantiles.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_quantiles Number of quantiles.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_quantiles <- function(input, output, num_quantiles=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_quantiles)) {
    args <- paste(args, paste0("--num_quantiles=", num_quantiles))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "quantiles"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Random field
#'
#' Creates an image containing random values.
#'
#' @param base Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_random_field <- function(base, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "random_field"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Random sample
#'
#' Creates an image containing randomly located sample grid cells with unique IDs.
#'
#' @param base Input raster file.
#' @param output Output raster file.
#' @param num_samples Number of samples.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_random_sample <- function(base, output, num_samples=1000, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "random_sample"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Raster calculator
#'
#' This tool performs a complex mathematical operations on one or more input raster images on a cell-to-cell basis.
#'
#' @param statement Statement e.g. cos("raster1") * 35.0 + "raster2". This statement must be a valid Rust statement.
#' @param output Name of the output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_calculator <- function(output, statement="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(statement)) {
    args <- paste(args, paste0("--statement=", statement))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_calculator"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Raster histogram
#'
#' Creates a histogram from raster values.
#'
#' @param input Input raster file.
#' @param output Output HTML file (default name will be based on input file if unspecified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_histogram <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_histogram"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Raster summary stats
#'
#' Measures a rasters min, max, average, standard deviation, num. non-nodata cells, and total.
#'
#' @param input Input raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_summary_stats <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "raster_summary_stats"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Reciprocal
#'
#' Returns the reciprocal (i.e. 1 / z) of values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reciprocal <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reciprocal"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rescale_value_range <- function(input, output, out_min_val, out_max_val, clip_min=NULL, clip_max=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--out_min_val=", wbt_file_path(out_min_val)))
  args <- paste(args, paste0("--out_max_val=", wbt_file_path(out_max_val)))
  if (!is.null(clip_min)) {
    args <- paste(args, paste0("--clip_min=", clip_min))
  }
  if (!is.null(clip_max)) {
    args <- paste(args, paste0("--clip_max=", clip_max))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "rescale_value_range"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Root mean square error
#'
#' Calculates the RMSE and other accuracy statistics.
#'
#' @param input Input raster file.
#' @param base Input base raster file used for comparison.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_root_mean_square_error <- function(input, base, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "root_mean_square_error"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Round
#'
#' Rounds the values in an input raster to the nearest integer value.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_round <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "round"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Sin
#'
#' Returns the sine (sin) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sin <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sin"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Sinh
#'
#' Returns the hyperbolic sine (sinh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_sinh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "sinh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Square
#'
#' Squares the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_square <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "square"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Square root
#'
#' Returns the square root of the values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_square_root <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "square_root"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Subtract
#'
#' Performs a differencing operation on two rasters or a raster and a constant value.
#'
#' @param input1 Input raster file or constant value.
#' @param input2 Input raster file or constant value.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_subtract <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "subtract"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Tan
#'
#' Returns the tangent (tan) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tan <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "tan"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Tanh
#'
#' Returns the hyperbolic tangent (tanh) of each values in a raster.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tanh <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "tanh"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' To degrees
#'
#' Converts a raster from radians to degrees.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_to_degrees <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "to_degrees"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' To radians
#'
#' Converts a raster from degrees to radians.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_to_radians <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "to_radians"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Trend surface
#'
#' Estimates the trend surface of an input raster file.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param order Polynomial order (1 to 10).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_trend_surface <- function(input, output, order=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(order)) {
    args <- paste(args, paste0("--order=", order))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "trend_surface"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
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
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_trend_surface_vector_points <- function(input, field, output, cell_size, order=1, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--field=", wbt_file_path(field)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--cell_size=", wbt_file_path(cell_size)))
  if (!is.null(order)) {
    args <- paste(args, paste0("--order=", order))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "trend_surface_vector_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Truncate
#'
#' Truncates the values in a raster to the desired number of decimal places.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param num_decimals Number of decimals left after truncation (default is zero).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_truncate <- function(input, output, num_decimals=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_decimals)) {
    args <- paste(args, paste0("--num_decimals=", num_decimals))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "truncate"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Turning bands simulation
#'
#' Creates an image containing random values based on a turning-bands simulation.
#'
#' @param base Input base raster file.
#' @param output Output file.
#' @param range The field's range, in xy-units, related to the extent of spatial autocorrelation.
#' @param iterations The number of iterations.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_turning_bands_simulation <- function(base, output, range, iterations=1000, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  args <- paste(args, paste0("--range=", wbt_file_path(range)))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "turning_bands_simulation"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Two sample ks test
#'
#' Performs a 2-sample K-S test for significant differences on two input rasters.
#'
#' @param input1 First input raster file.
#' @param input2 Second input raster file.
#' @param output Output HTML file.
#' @param num_samples Number of samples. Leave blank to use whole image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_two_sample_ks_test <- function(input1, input2, output, num_samples=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "two_sample_ks_test"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Wilcoxon signed rank test
#'
#' Performs a 2-sample K-S test for significant differences on two input rasters.
#'
#' @param input1 First input raster file.
#' @param input2 Second input raster file.
#' @param output Output HTML file.
#' @param num_samples Number of samples. Leave blank to use whole image.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_wilcoxon_signed_rank_test <- function(input1, input2, output, num_samples=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(num_samples)) {
    args <- paste(args, paste0("--num_samples=", num_samples))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "wilcoxon_signed_rank_test"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Xor
#'
#' Performs a logical XOR operator on two Boolean raster images.
#'
#' @param input1 Input raster file.
#' @param input2 Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_xor <- function(input1, input2, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "xor"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Z scores
#'
#' Standardizes the values in an input raster by converting to z-scores.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_z_scores <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "z_scores"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' Zonal statistics
#'
#' Extracts descriptive statistics for a group of patches in a raster.
#'
#' @param input Input data raster file.
#' @param features Input feature definition raster file.
#' @param output Output raster file.
#' @param stat Statistic to extract, including 'mean', 'median', 'minimum', 'maximum', 'range', 'standard deviation', and 'total'.
#' @param out_table Output HTML Table file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_zonal_statistics <- function(input, features, output=NULL, stat="mean", out_table=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--features=", wbt_file_path(features)))
  if (!is.null(output)) {
    args <- paste(args, paste0("--output=", output))
  }
  if (!is.null(stat)) {
    args <- paste(args, paste0("--stat=", stat))
  }
  if (!is.null(out_table)) {
    args <- paste(args, paste0("--out_table=", out_table))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "zonal_statistics"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


