#' @title Install wb extension
#'
#' @description Use to install a Whitebox extension product.
#'
#' @param install_extension Name of the extension product to install. Options include: 'General Toolset Extension', 'DEM & Spatial Hydrology Extension', 'Lidar & Remote Sensing Extension', and 'Agriculture Extension'.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords WhiteboxUtilities
#'
#' @return Returns the tool text outputs.
#' @export
wbt_install_wb_extension <- function(install_extension="General Toolset Extension", wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  if (!is.null(install_extension)) {
    args <- paste(args, paste0("--install_extension=", install_extension))
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "install_wb_extension"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


#' @title Launch wb runner
#'
#' @description Opens the Whitebox Runner application.
#'
#' @param clear_app_state Clear the application state memory?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is `FALSE`, tools will not print output messages.
#' @param compress_rasters Sets the flag used by 'WhiteboxTools' to determine whether to use compression for output rasters.
#' @param command_only Return command that would be executed by `system()` rather than running tool.
#'
#' @keywords WhiteboxUtilities
#'
#' @return Returns the tool text outputs.
#' @export
wbt_launch_wb_runner <- function(clear_app_state=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE, command_only=FALSE) {
  wbt_init()
  args <- ""
  if (clear_app_state) {
    args <- paste(args, "--clear_app_state")
  }
  if (!missing(wd)) {
    args <- paste(args, paste0("--wd=", wbt_file_path(wd)))
  }
  if (!missing(compress_rasters)) {
    args <- paste(args, paste0("--compress_rasters=", compress_rasters))
  }
  tool_name <- "launch_wb_runner"
  wbt_run_tool(tool_name, args, verbose_mode, command_only)
}


