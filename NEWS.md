# whitebox 1.5.1
* Add package options for custom EXE path and verbosity
  
  * Changes behavior of `wbt_init()`; now only checks EXE path
  
  * Adds `install_whitebox()` to handle downloading and installing WhiteboxTools
      
  * Use a system environment variable (`R_WHITEBOX_EXE_PATH`) or package option (`whitebox.exe_path`) 
      * Get / set with `wbt_options(exe_path = "C:/path/to/whitebox_tools.exe")` or `wbt_init()`
  
  * Verbosity controlled with (`R_WHITEBOX_VERBOSE`) or package option (`whitebox.verbose`) 
      * Get / set with `wbt_options(verbose = TRUE)` or `wbt_verbose()`
  
* All tests that require WhiteboxTools are prefaced with `skip_if_not(check_whitebox_binary())` 

# whitebox 0.3.0

* update to [WhiteboxTools v0.15.0](https://github.com/jblindsay/whitebox-tools/releases)

# whitebox 0.2.0

* Change the way to download WBT binaries

# whitebox 0.1.1

* Update to use secure download mechanisms (https)

# whitebox 0.1

* Initial release
