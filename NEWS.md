# whitebox 1.5.1

* Add options for custom EXE path 

  * Changes behavior of `wbt_init()`; now only checks EXE path
      
      * Adds `install_whitebox()` to handle downloading and installing WhiteboxTools
      
  * Use a system environment variable (`R_WHITEBOX_EXE_PATH`), a package option (`whitebox.exe_path`) or an argument to set custom paths
      
*  Changes to automatically-generated testing code; adds `skip_if_not(check_whitebox_binary())` 

# whitebox 0.3.0

* update to [WhiteboxTools v0.15.0](https://github.com/jblindsay/whitebox-tools/releases)

# whitebox 0.2.0

* Change the way to download WBT binaries

# whitebox 0.1.1

* Update to use secure download mechanisms (https)

# whitebox 0.1

* Initial release
