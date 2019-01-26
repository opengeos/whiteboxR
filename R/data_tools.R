#' Add point coordinates to table
#'
#' Modifies the attribute table of a point vector by adding fields containing each point's X and Y coordinates.
#'
#' @param input Input vector Points file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
add_point_coordinates_to_table <- function(input, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Convert nodata to zero
#'
#' Converts nodata values in a raster to zero.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
convert_nodata_to_zero <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Convert raster format
#'
#' Converts raster data from one format to another.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
convert_raster_format <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Export table to csv
#'
#' Exports an attribute table to a CSV text file.
#'
#' @param input Input vector file.
#' @param output Output raster file.
#' @param headers Export field names as file header?.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
export_table_to_csv <- function(input, output, headers=TRUE, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(headers)) {
    args <- paste(args, paste0("--headers=", headers))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Join tables
#'
#' Merge a vector's attribute table with another table based on a common field.
#'
#' @param input1 Input primary vector file (i.e. the table to be modified).
#' @param pkey Primary key field.
#' @param input2 Input foreign vector file (i.e. source of data to be imported).
#' @param fkey Foreign key field.
#' @param import_field Imported field (all fields will be imported if not specified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
join_tables <- function(input1, pkey, input2, fkey, import_field, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input1=", input1))
  args <- paste(args, paste0("--pkey=", pkey))
  args <- paste(args, paste0("--input2=", input2))
  args <- paste(args, paste0("--fkey=", fkey))
  args <- paste(args, paste0("--import_field=", import_field))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Lines to polygons
#'
#' Converts vector polylines to polygons.
#'
#' @param input Input vector line file.
#' @param output Output vector polygon file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
lines_to_polygons <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Merge table with csv
#'
#' Merge a vector's attribute table with a table contained within a CSV text file.
#'
#' @param input Input primary vector file (i.e. the table to be modified).
#' @param pkey Primary key field.
#' @param csv Input CSV file (i.e. source of data to be imported).
#' @param fkey Foreign key field.
#' @param import_field Imported field (all fields will be imported if not specified).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
merge_table_with_csv <- function(input, pkey, csv, fkey, import_field=NULL, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--pkey=", pkey))
  args <- paste(args, paste0("--csv=", csv))
  args <- paste(args, paste0("--fkey=", fkey))
  if (!is.null(import_field)) {
    args <- paste(args, paste0("--import_field=", import_field))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Merge vectors
#'
#' Combines two or more input vectors of the same ShapeType creating a single, new output vector.
#'
#' @param inputs Input vector files.
#' @param output Output vector file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
merge_vectors <- function(inputs, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--inputs=", inputs))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Multi part to single part
#'
#' Converts a vector file containing multi-part features into a vector containing only single-part features.
#'
#' @param input Input vector line or polygon file.
#' @param output Output vector line or polygon file.
#' @param exclude_holes Exclude hole parts from the feature splitting? (holes will continue to belong to their features in output.).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
multi_part_to_single_part <- function(input, output, exclude_holes=TRUE, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(exclude_holes)) {
    args <- paste(args, paste0("--exclude_holes=", exclude_holes))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' New raster from base
#'
#' Creates a new raster using a base image.
#'
#' @param base Input base raster file.
#' @param output Output raster file.
#' @param value Constant value to fill raster with; either 'nodata' or numeric value.
#' @param data_type Output raster data type; options include 'double' (64-bit), 'float' (32-bit), and 'integer' (signed 16-bit) (default is 'float').
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
new_raster_from_base <- function(base, output, value="nodata", data_type="float", verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(value)) {
    args <- paste(args, paste0("--value=", value))
  }
  if (!is.null(data_type)) {
    args <- paste(args, paste0("--data_type=", data_type))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Polygons to lines
#'
#' Converts vector polygons to polylines.
#'
#' @param input Input vector polygon file.
#' @param output Output vector lines file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
polygons_to_lines <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Print geo tiff tags
#'
#' Prints the tags within a GeoTIFF.
#'
#' @param input Input GeoTIFF file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
print_geo_tiff_tags <- function(input, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster to vector lines
#'
#' Converts a raster lines features into a vector of the POLYLINE shapetype.
#'
#' @param input Input raster lines file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
raster_to_vector_lines <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster to vector points
#'
#' Converts a raster dataset to a vector of the POINT shapetype.
#'
#' @param input Input raster file.
#' @param output Output vector points file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
raster_to_vector_points <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Reinitialize attribute table
#'
#' Reinitializes a vector's attribute table deleting all fields but the feature ID (FID).
#'
#' @param input Input vector file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
reinitialize_attribute_table <- function(input, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Remove polygon holes
#'
#' Removes holes within the features of a vector polygon file.
#'
#' @param input Input vector polygon file.
#' @param output Output vector polygon file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
remove_polygon_holes <- function(input, output, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Set nodata value
#'
#' Assign a specified value in an input image to the NoData value.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param back_value Background value to set to nodata.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
set_nodata_value <- function(input, output, back_value=0.0, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(back_value)) {
    args <- paste(args, paste0("--back_value=", back_value))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Single part to multi part
#'
#' Converts a vector file containing multi-part features into a vector containing only single-part features.
#'
#' @param input Input vector line or polygon file.
#' @param field Grouping ID field name in attribute table.
#' @param output Output vector line or polygon file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
single_part_to_multi_part <- function(input, output, field=NULL, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Vector lines to raster
#'
#' Converts a vector containing polylines into a raster.
#'
#' @param input Input vector lines file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
vector_lines_to_raster <- function(input, output, field="FID", nodata=TRUE, cell_size=NULL, base=NULL, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(nodata)) {
    args <- paste(args, paste0("--nodata=", nodata))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Vector points to raster
#'
#' Converts a vector containing points into a raster.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param assign Assignment operation, where multiple points are in the same grid cell; options include 'first', 'last' (default), 'min', 'max', 'sum'.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
vector_points_to_raster <- function(input, output, field="FID", assign="last", nodata=TRUE, cell_size=NULL, base=NULL, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(assign)) {
    args <- paste(args, paste0("--assign=", assign))
  }
  if (!is.null(nodata)) {
    args <- paste(args, paste0("--nodata=", nodata))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Vector polygons to raster
#'
#' Converts a vector containing polygons into a raster.
#'
#' @param input Input vector polygons file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
vector_polygons_to_raster <- function(input, output, field="FID", nodata=TRUE, cell_size=NULL, base=NULL, verbose_mode=TRUE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(nodata)) {
    args <- paste(args, paste0("--nodata=", nodata))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!is.null(base)) {
    args <- paste(args, paste0("--base=", base))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


