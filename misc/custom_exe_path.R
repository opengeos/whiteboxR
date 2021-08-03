# demo of custom EXE path

# on loading library get message about binary not found
library(whitebox)

# doesn't work with default path e.g.:
#  /home/andrew/R/x86_64-pc-linux-gnu-library/4.1/whitebox/WBT/whitebox_tools
ret <- wbt_zonal_statistics(input = "/home/andrew/temp/dem.tif",
                            features = "/home/andrew/temp/depression_level.tif",
                            out_table = "output.html")

# set path to whitebox_tools custom-built with cargo
Sys.setenv(R_WHITEBOX_EXE_PATH = "/home/andrew/workspace/whitebox-tools/target/release/whitebox_tools")

# works
ret <- wbt_zonal_statistics(input = "/home/andrew/temp/dem.tif",
                            features = "/home/andrew/temp/depression_level.tif",
                            out_table = "output.html")
