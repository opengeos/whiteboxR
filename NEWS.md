# whitebox 2.1.2

 * Fixes regression in checking "Demo" vignette on CRAN
 
# whitebox 2.1.1

 * File path arguments to tools now automatically perform path expansion (converting `~` to your home directory with `path.expand()`). This also works on arguments that contain comma or semicolon delimited lists. (https://github.com/giswqs/whiteboxR/issues/62)
 
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
