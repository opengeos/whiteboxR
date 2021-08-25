# whitebox 1.5.1
* Add package options for custom EXE path and verbosity
  * Changes behavior of `wbt_init()`; now only checks EXE path
  * Adds `install_whitebox()` to handle downloading and installing WhiteboxTools
  * Use a system environment variable (`R_WHITEBOX_EXE_PATH`) or package option (`whitebox.exe_path`) 
      * Get / set with `wbt_options(exe_path = "C:/path/to/whitebox_tools.exe")` or `wbt_init()`
  
  * Verbosity controlled with (`R_WHITEBOX_VERBOSE`) or package option (`whitebox.verbose`) 
      * Get / set with `wbt_options(verbose = TRUE)` or `wbt_verbose()`
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
