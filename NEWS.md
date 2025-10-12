# whitebox 2.4.2

 * `wbt_source()`: now accepts `tmpdir` argument which defaults to `tempdir()` (not `getwd()` or `wbt_wd()`) that is used for storing the intermediate shapefiles needed for WhiteboxTools
 
   * Also, the pattern for temporary file names is now customizable via `pattern` argument
 
 * Bug fixes for `wbt_source()`:
 
   * No longer writes temporary intermediate files to the working directory when passed a non-shapefile vector or non-GeoTIFF raster data source. 
      
      * The temporary directory is used by default, unless new `tmpdir` argument is specified. This could be a breaking change if you were relying on the temporary files to be present in the WhiteboxTools working directory. Specify `tmpdir` in call to `wbt_source()` to make old behavior explicit.
   
   * Properly uses `layer` argument for data sources (e.g. GPKG) that may contain multiple vector layers or raster bands of interest (thanks to @mps9506 for reporting; #132)
 
# whitebox 2.4.1

 * Rebuilt `wbttools` and `wbttoolparameters` with WhiteboxTools v2.4.0

# whitebox 2.4.0

 * Updates for WhiteboxTools v2.4.0 (https://github.com/jblindsay/whitebox-tools/releases/tag/v2.4.0)
 
 * Fix for new ZIP file folder structure for WhiteboxTools v2.4.0+ in `wbt_install()` / `install_whitebox()`
 
# whitebox 2.3.4

 * Exported `wbt_file_path()`, a function previously used internally for creating safe, expanded, quoted, paths for building WhiteboxTools commands. This function also supports the input of `terra` objects that are backed by file sources supported by WhiteboxTools.

# whitebox 2.3.3

 * The default values for `compress_rasters` and `verbose_mode` have been set to `NULL` to better reflect that they are derived from the WhiteboxTools settings.json file.

   * See `wbt_options()` for more details. If the user specifies these arguments in a `wbt_*()` function call then the flag will be passed in the command line call. Otherwise the default `NULL` value is ignored. Links to the corresponding option-setting functions have been added to the documentation for all `wbt_*()` tool functions.

# whitebox 2.3.2

 * Fix for file paths passed to optional `base` argument of `wbt_resample()`; thanks to @Pentaonia for reporting
   
   * Also fixed are: `wbt_vector_lines_to_raster()`, `wbt_vector_points_to_raster()`, `wbt_vector_polygons_to_raster()`, `wbt_block_maximum_gridding()`, `wbt_block_minimum_gridding()`, `wbt_heat_map()`, `wbt_idw_interpolation()`, `wbt_natural_neighbour_interpolation()`, `wbt_nearest_neighbour_gridding()`, `wbt_radial_basis_function_interpolation()`, `wbt_tin_gridding()`

# whitebox 2.3.1
 
 * `wbt_install()` and `wbt_install_extension()` gain optional `platform` argument that is used as a suffix on ZIP file, allowing download of alternate binaries on Linux and macOS (Darwin).
 
 * Add `wbt_runner_path()` (analog of `wbt_exe_path()` for `whitebox_runner` GUI executable) and `wbt_launch_runner()` a simple function to launch the GUI.
 
 * `wbt_wd("")` now sets the value of `working_directory` in the WhiteboxTools settings.json file to `""` and triggers background options to prevent `--wd` flag being added until a new working directory is set. This has been a long-standing issue, resolved following <https://github.com/opengeos/whiteboxR/issues/108>.
 
# whitebox 2.3.0

 * Updates for WhiteboxTools v2.3.0 (https://github.com/jblindsay/whitebox-tools/releases/tag/v2.3.0)
 
 * Add `wbt()`, `wbt_source()`, and related methods; new functionality for calling tools by name with various R object types as input. 
 
   * See the `wbt()` method vignette for details.
 
# whitebox 2.2.1

 * Adds `wbt_data_dir()` for managing where WhiteboxTools "WBT" directory is installed.
 
  * The new default path is a preferred location generated with `tools::R_user_dir(package="whitebox")` on R 4.0+
  
 * If `"whitebox_tools"` is found on your PATH, you no longer need any custom setup of `whitebox.exe_path`. The path and options will be detected automatically via `Sys.which("whitebox_tools")`.
 
  * Custom options set within the session or environment take precedence over PATH.

# whitebox 2.2.0

 * Updates for WhiteboxTools v2.2.0

 * `wbt_rust_backtrace()`, a helper method for debugging Rust-related failures of the command-line tool, is now exported

 * `wbt_run_tool()`: Fix potentially length > 1 logic in `if()` statement for error status messages to avoid warnings/future errors

 * `download.file()` `method="wininet"` has been deprecated so it is no longer in the possible set of methods to try on Windows when a download fails
 
# whitebox 2.1.5

 * Added `wbt_install_extension()` and `wbt_activate()` for downloading, installing and activating WhiteboxTools extensions

 * `wbt_internal_tool_name()` now returns tool names in CamelCase, and these are the tool names passed via the command line
 
# whitebox 2.1.4

 * Suggest {terra} instead of {raster} and update demo vignette accordingly; drops {rgdal} suggest

 * Add support for path expansion in `wd` arguments passed directly to tool functions; this was already supported for other methods of setting the working directory
 
 * Updates to `wbttools` and `wbttoolparameters` datasets
 
    * Fix for `argument_name='k'`
    
    * Remove several one and two character flag aliases from `argument_name` and replace with full name
    
 * Add support for showing warning messages in regular interactive/verbose mode, thanks to @alenahav for reporting an issue (https://github.com/opengeos/whiteboxR/issues/75) with `wbt_fd8_flow_accumulation()`
 
 * Functions that take multiple files are auto-quoted by default; thanks to François-Nicolas Robinne for reporting issue (@FNRobinne; https://github.com/opengeos/whiteboxR/issues/55) with `wbt_mosaic()`
 
 * Error output is now more verbose, ensuring relevant tool output is displayed to user on error regardless of verbosity, platform, etc. Thanks to Jeffrey W. Rozelle for reporting issue (@jwilliamrozelle; https://github.com/opengeos/whiteboxR/issues/80) with getting error messages about unsupported raster types
 

# whitebox 2.1.3

 * Generated `whitebox_tools` commands no longer include flags for default arguments that are stored in settings.json unless specified by the user.
 
   * Updates to fix issues with permissions to write _settings.json_; thanks to Henrik (@hewag1975) for reporting problems on Shiny Server (https://github.com/opengeos/whiteboxR/issues/67)
 
 * `wbt_install()` / `install_whitebox()` now removes the downloaded zip file on exit thanks to Christoph Stepper (@cstepper; https://github.com/opengeos/whiteboxR/issues/72)
 
 * New default arguments for `wbt_list_tools()`, `wbt_time_in_daylight()`, `wbt_shadow_image()` thanks to Jens Wiesehahn (@wiesehahn; https://github.com/opengeos/whiteboxR/issues/70, https://github.com/opengeos/whiteboxR/issues/73)
 
# whitebox 2.1.2

 * Fixes regression in checking "Demo" vignette on CRAN
 
# whitebox 2.1.1

 * File path arguments to tools now automatically perform path expansion (converting `~` to your home directory with `path.expand()`). This also works on arguments that contain comma or semicolon delimited lists. (https://github.com/opengeos/whiteboxR/issues/62)
 
 * Corrections to `wbttoolparameters` dataset (updated classification of input/output parameters) 
 
 * Fix for `wbt_lidar_tin_gridding()` `exclude_cls` argument
 
 * Add `wbt_compress_rasters()` to set package option `whitebox.compress_rasters`
 
   * Updated how `--compress_rasters` parameter is passed via command line. Now the flag is added to all commands regardless of whether the value is `TRUE` or `FALSE`. This allows update of settings.json accordingly when `--compress_rasters=FALSE`. RE: https://github.com/jblindsay/whitebox-tools/issues/233#issuecomment-1065955783
   
 * Add `wbt_max_procs()` to set package option `whitebox.max_procs`
 
 * All `wbt_*()` tool functions now take a `command_only` argument that is passed to `wbt_run_tool()`. When `TRUE`, the function returns the command that would be run by `system()` instead of running the tool.

# whitebox 2.1.0

 * Update for WhiteboxTools v2.1.0  
 
   - See https://www.whiteboxgeo.com/whitebox-geospatial-news/ for details

# whitebox 2.0.0

 * Update for WhiteboxTools v2.0.0  
  
   - See https://github.com/jblindsay/whitebox-tools/releases/tag/v2.0.0 for details

Enhancements:
 
 - `whitebox::install_whitebox()` will call `wbt_init()` on the `exe_path` after unpacking to target directory  
 
 - `wbt_init()` `exe_path`, `wbt_wd()` `wd`, and `install_whitebox()` `pkg_dir` paths can be specified with shorthand `~` for home directory, which is expanded with `path.expand()`
 
 - Unsetting working directories requires only a single call to `wbt_wd("")`
 
 - Functions no longer use `match.call()` so unconventional/automated methods for calling tools that do not have a parsable tool name in the call result now work (#45)

# whitebox 1.5.1
 
 * Add package options for custom EXE path and verbosity
 
   * Changes behavior of `wbt_init()`; now only checks EXE path
 
  * Adds `install_whitebox()` to handle downloading and installing WhiteboxTools
  
## New package options 
 
  * `wbt_init()` can set any of the other options in the same call as the custom EXE path. 
 
    * `wbt_options()` returns current option values
 
  * Use a system environment variable (`R_WHITEBOX_EXE_PATH`) or package option (`whitebox.exe_path`) 
 
    * Get / set with `wbt_init()`. 
 
  * Verbosity controlled with (`R_WHITEBOX_VERBOSE`) or package option (`whitebox.verbose`) 
 
    * Get / set with `wbt_verbose()`
 
  * Working directory controlled with (`R_WHITEBOX_WD`) or package option (`whitebox.wd`) 
 
    * Get / set with `wbt_wd()`
        
  * New "whitebox Demo" vignette

  * New data `wbttools` and `wbttoolparameters` data.frame built from WhiteboxTools v1.5.0 and `wbt_tool_parameters()` output for full tool library

    * See the "whitebox Tool Metadata" vignette

# whitebox 1.5.0

  * Update to WhiteboxTools v1.5.0

  * More information about this version can be found at https://github.com/jblindsay/whitebox-tools/releases/tag/1.5.0 for more info.

# whitebox 1.4.0
  
  * Update to WhiteboxTools v1.4.0
  
  * More information about this version can be found at https://github.com/jblindsay/whitebox-tools/releases/tag/v1.4.0   
 
# whitebox 1.3.1
  
  * Update to WhiteboxTools v1.3.1
  
  * More information about this version can be found at https://github.com/jblindsay/whitebox-tools/releases/tag/v1.3.1

# whitebox 1.3.0

  * Update to WhiteboxTools v1.3.0

# whitebox 1.1.0

  * Update to WhiteboxTools v1.1.0

# whitebox 1.0.2

  * Update to WhiteboxTools v1.0.2

# whitebox 1.0.1

  * Prep for v1.0.1

# whitebox 0.5.0

  * Fix bugs for logical parameters

# whitebox 0.3.0

  * update to [WhiteboxTools v0.15.0](https://github.com/jblindsay/whitebox-tools/releases)

# whitebox 0.2.0

  * Change the way to download WBT binaries

# whitebox 0.1.1

  * Update to use secure download mechanisms (https)

# whitebox 0.1

  * Initial release
