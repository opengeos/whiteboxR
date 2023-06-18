#' @title Add point coordinates to table
#'
#' @description Modifies the attribute table of a point vector by adding fields containing each point's X and Y coordinates.
#'
#' @param input Input vector Points file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_add_point_coordinates_to_table <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "add_point_coordinates_to_table"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Clean vector
#'
#' @description Removes null features and lines/polygons with fewer than the required number of vertices.
#'
#' @param input Input vector file.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_clean_vector <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "clean_vector"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Convert nodata to zero
#'
#' @description Converts nodata values in a raster to zero.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_convert_nodata_to_zero <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "convert_nodata_to_zero"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Convert raster format
#'
#' @description Converts raster data from one format to another.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_convert_raster_format <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "convert_raster_format"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Csv points to vector
#'
#' @description Converts a CSV text file to vector points.
#'
#' @param input Input CSV file (i.e. source of data to be imported).
#' @param output Output vector file.
#' @param xfield X field number (e.g. 0 for first field).
#' @param yfield Y field number (e.g. 1 for second field).
#' @param epsg EPSG projection (e.g. 2958).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_csv_points_to_vector <- function(input, output, xfield=0, yfield=1, epsg=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(xfield)) {
    args <- paste(args, paste0("--xfield=", xfield))
  }
  if (!is.null(yfield)) {
    args <- paste(args, paste0("--yfield=", yfield))
  }
  if (!is.null(epsg)) {
    args <- paste(args, paste0("--epsg=", epsg))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "csv_points_to_vector"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Export table to csv
#'
#' @description Exports an attribute table to a CSV text file.
#'
#' @param input Input vector file.
#' @param output Output csv file.
#' @param headers Export field names as file header?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_export_table_to_csv <- function(input, output, headers=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (headers) {
    args <- paste(args, "--headers")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "export_table_to_csv"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Fix dangling arcs
#'
#' @description This tool fixes undershot and overshot arcs, two common topological errors, in an input vector lines file.
#'
#' @param input Name of the input lines vector file.
#' @param output Name of the output lines vector file.
#' @param dist Snap distance, in xy units (metres).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_fix_dangling_arcs <- function(input, output, dist="", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(dist)) {
    args <- paste(args, paste0("--dist=", dist))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "fix_dangling_arcs"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Join tables
#'
#' @description Merge a vector's attribute table with another table based on a common field.
#'
#' @param input1 Input primary vector file (i.e. the table to be modified).
#' @param pkey Primary key field.
#' @param input2 Input foreign vector file (i.e. source of data to be imported).
#' @param fkey Foreign key field.
#' @param import_field Imported field (all fields will be imported if not specified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_join_tables <- function(input1, pkey, input2, fkey, import_field=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input1=", wbt_file_path(input1)))
  args <- paste(args, paste0("--pkey=", wbt_file_path(pkey)))
  args <- paste(args, paste0("--input2=", wbt_file_path(input2)))
  args <- paste(args, paste0("--fkey=", wbt_file_path(fkey)))
  if (!is.null(import_field)) {
    args <- paste(args, paste0("--import_field=", import_field))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "join_tables"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Lines to polygons
#'
#' @description Converts vector polylines to polygons.
#'
#' @param input Input vector line file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_lines_to_polygons <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "lines_to_polygons"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Merge table with csv
#'
#' @description Merge a vector's attribute table with a table contained within a CSV text file.
#'
#' @param input Input primary vector file (i.e. the table to be modified).
#' @param pkey Primary key field.
#' @param csv Input CSV file (i.e. source of data to be imported).
#' @param fkey Foreign key field.
#' @param import_field Imported field (all fields will be imported if not specified).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_merge_table_with_csv <- function(input, pkey, csv, fkey, import_field=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--pkey=", wbt_file_path(pkey)))
  args <- paste(args, paste0("--csv=", wbt_file_path(csv)))
  args <- paste(args, paste0("--fkey=", wbt_file_path(fkey)))
  if (!is.null(import_field)) {
    args <- paste(args, paste0("--import_field=", import_field))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "merge_table_with_csv"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Merge vectors
#'
#' @description Combines two or more input vectors of the same ShapeType creating a single, new output vector.
#'
#' @param inputs Input vector files.
#' @param output Output vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_merge_vectors <- function(inputs, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--inputs=", wbt_file_path(inputs)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "merge_vectors"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Modify no data value
#'
#' @description Modifies nodata values in a raster.
#'
#' @param input Input raster file.
#' @param new_value New NoData value.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_modify_no_data_value <- function(input, new_value="-32768.0", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!is.null(new_value)) {
    args <- paste(args, paste0("--new_value=", new_value))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "modify_no_data_value"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Multi part to single part
#'
#' @description Converts a vector file containing multi-part features into a vector containing only single-part features.
#'
#' @param input Input vector line or polygon file.
#' @param output Output vector line or polygon file.
#' @param exclude_holes Exclude hole parts from the feature splitting? (holes will continue to belong to their features in output.).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_multi_part_to_single_part <- function(input, output, exclude_holes=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (exclude_holes) {
    args <- paste(args, "--exclude_holes")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "multi_part_to_single_part"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title New raster from base
#'
#' @description Creates a new raster using a base image.
#'
#' @param base Input base raster file.
#' @param output Output raster file.
#' @param value Constant value to fill raster with; either 'nodata' or numeric value.
#' @param data_type Output raster data type; options include 'double' (64-bit), 'float' (32-bit), and 'integer' (signed 16-bit) (default is 'float').
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_new_raster_from_base <- function(base, output, value="nodata", data_type="float", cell_size=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--base=", wbt_file_path(base)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(value)) {
    args <- paste(args, paste0("--value=", value))
  }
  if (!is.null(data_type)) {
    args <- paste(args, paste0("--data_type=", data_type))
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "new_raster_from_base"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Polygons to lines
#'
#' @description Converts vector polygons to polylines.
#'
#' @param input Input vector polygon file.
#' @param output Output vector lines file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_polygons_to_lines <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "polygons_to_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Print geo tiff tags
#'
#' @description Prints the tags within a GeoTIFF.
#'
#' @param input Input GeoTIFF file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_print_geo_tiff_tags <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "print_geo_tiff_tags"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster to vector lines
#'
#' @description Converts a raster lines features into a vector of the POLYLINE shapetype.
#'
#' @param input Input raster lines file.
#' @param output Output raster file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_to_vector_lines <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "raster_to_vector_lines"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster to vector points
#'
#' @description Converts a raster dataset to a vector of the POINT shapetype.
#'
#' @param input Input raster file.
#' @param output Output vector points file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_to_vector_points <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "raster_to_vector_points"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Raster to vector polygons
#'
#' @description Converts a raster dataset to a vector of the POLYGON shapetype.
#'
#' @param input Input raster file.
#' @param output Output vector polygons file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_to_vector_polygons <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "raster_to_vector_polygons"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Reinitialize attribute table
#'
#' @description Reinitializes a vector's attribute table deleting all fields but the feature ID (FID).
#'
#' @param input Input vector file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_reinitialize_attribute_table <- function(input, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "reinitialize_attribute_table"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Remove polygon holes
#'
#' @description Removes holes within the features of a vector polygon file.
#'
#' @param input Input vector polygon file.
#' @param output Output vector polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_polygon_holes <- function(input, output, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
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
  tool_name <- "remove_polygon_holes"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Remove raster polygon holes
#'
#' @description Removes polygon holes, or 'donut-holes', from raster polygons.
#'
#' @param input Name of the input raster image file.
#' @param output Name of the output raster file.
#' @param threshold Maximum size of removed holes, in grid cells. Blank for no threshold, i.e. remove all holes.
#' @param use_diagonals Use diagonal neighbours during clumping operation.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_raster_polygon_holes <- function(input, output, threshold=3, use_diagonals=TRUE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (use_diagonals) {
    args <- paste(args, "--use_diagonals")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "remove_raster_polygon_holes"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Set nodata value
#'
#' @description Assign the NoData value for an input image.
#'
#' @param input Input raster file.
#' @param output Output raster file.
#' @param back_value Background value to set to nodata.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_set_nodata_value <- function(input, output, back_value=0.0, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(back_value)) {
    args <- paste(args, paste0("--back_value=", back_value))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "set_nodata_value"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Single part to multi part
#'
#' @description Converts a vector file containing multi-part features into a vector containing only single-part features.
#'
#' @param input Input vector line or polygon file.
#' @param field Grouping ID field name in attribute table.
#' @param output Output vector line or polygon file.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_single_part_to_multi_part <- function(input, output, field=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "single_part_to_multi_part"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Vector lines to raster
#'
#' @description Converts a vector containing polylines into a raster.
#'
#' @param input Input vector lines file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vector_lines_to_raster <- function(input, output, field="FID", nodata=TRUE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (nodata) {
    args <- paste(args, "--nodata")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "vector_lines_to_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Vector points to raster
#'
#' @description Converts a vector containing points into a raster.
#'
#' @param input Input vector Points file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param assign Assignment operation, where multiple points are in the same grid cell; options include 'first', 'last' (default), 'min', 'max', 'sum', 'number'.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vector_points_to_raster <- function(input, output, field="FID", assign="last", nodata=TRUE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (!is.null(assign)) {
    args <- paste(args, paste0("--assign=", assign))
  }
  if (nodata) {
    args <- paste(args, "--nodata")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "vector_points_to_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Vector polygons to raster
#'
#' @description Converts a vector containing polygons into a raster.
#'
#' @param input Input vector polygons file.
#' @param field Input field name in attribute table.
#' @param output Output raster file.
#' @param nodata Background value to set to NoData. Without this flag, it will be set to 0.0.
#' @param cell_size Optionally specified cell size of output raster. Not used when base raster is specified.
#' @param base Optionally specified input base raster file. Not used when a cell size is specified.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords DataTools
#'
#' @return Returns the tool text outputs.
#' @export
wbt_vector_polygons_to_raster <- function(input, output, field="FID", nodata=TRUE, cell_size=NULL, base=NULL, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--input=", wbt_file_path(input)))
  args <- paste(args, paste0("--output=", wbt_file_path(output)))
  if (!is.null(field)) {
    args <- paste(args, paste0("--field=", field))
  }
  if (nodata) {
    args <- paste(args, "--nodata")
  }
  if (!is.null(cell_size)) {
    args <- paste(args, paste0("--cell_size=", cell_size))
  }
  if (!missing(base)) {
    args <- paste(args, paste0("--base=", wbt_file_path(base)))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "vector_polygons_to_raster"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


