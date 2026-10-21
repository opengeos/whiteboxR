# whitebox: 'WhiteboxTools' R Frontend

An R frontend for the 'WhiteboxTools' library, which is an advanced
geospatial data analysis platform developed by Prof. John Lindsay at the
University of Guelph's Geomorphometry and Hydrogeomatics Research Group.
'WhiteboxTools' can be used to perform common geographical information
systems (GIS) analysis operations, such as cost-distance analysis,
distance buffering, and raster reclassification. Remote sensing and
image processing tasks include image enhancement (e.g. panchromatic
sharpening, contrast adjustments), image mosaicing, numerous filtering
operations, simple classification (k-means), and common image
transformations. 'WhiteboxTools' also contains advanced tooling for
spatial hydrological analysis (e.g. flow-accumulation, watershed
delineation, stream network analysis, sink removal), terrain analysis
(e.g. common terrain indices such as slope, curvatures, wetness index,
hillshading; hypsometric analysis; multi-scale topographic position
analysis), and LiDAR data processing. Suggested citation: Lindsay (2016)
[doi:10.1016/j.cageo.2016.07.003](https://doi.org/10.1016/j.cageo.2016.07.003)
.

## Package options

- **`whitebox.exe_path`** - character. Path to executable file. The
  default value is the package installation directory, subdirectory
  `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the
  `whitebox.exe_path` option using [`wbt_init()`](wbt_init.md)
  `exe_path` argument

- **`whitebox.wd`** - character. Path to WhiteboxTools working
  directory. Used as `--wd` argument for tools that support it when `wd`
  is not specified elsewhere. Note that once you have set a working
  directory, the directory needs to be reset to "replace" the old value;
  just dropping the flag will not change the working directory back to
  your original R working directory. To "unset" the option in the R
  package you can use `wbt_wd("")` which is equivalent to
  `wbt_wd(getwd())`. The WhiteboxTools settings and the package settings
  will be updated to reflect the directory change after running the next
  tool and the `--wd` flag will be dropped from system calls.

- **`whitebox.verbose`** - logical. Should standard output from calls to
  executable be [`cat()`](https://rdrr.io/r/base/cat.html) out for
  readability? Default is result of
  [`interactive()`](https://rdrr.io/r/base/interactive.html). Individual
  tools may have `verbose_mode` setting that produce only single-line
  output when `FALSE`. These argument values are left as the defaults
  defined in the package documentation for that function. When
  `whitebox.verbose=FALSE` no output is produced. Set the value of
  `whitebox.verbose` with [`wbt_verbose()`](wbt_init.md) `verbose`
  argument.

- **`whitebox.compress_rasters`** - logical. Should raster output from
  WhiteboxTools be compressed? Default: `FALSE`. Set the value of
  `whitebox.compress_rasters` with
  [`wbt_compress_rasters()`](wbt_init.md) `compress_rasters` argument.

- **`whitebox.max_procs`** - integer. Maximum number of processes for
  tools that run in parallel or partially parallelize. Default: `-1`
  uses all of the available cores.

The package options can be overridden with system environment variables:
`R_WHITEBOX_EXE_PATH`, `R_WHITEBOX_WD`, `R_WHITEBOX_VERBOSE`,
`R_WHITEBOX_COMPRESS_RASTERS` and `R_WHITEBOX_MAX_PROCS`.

## See also

[`wbt_init()`](wbt_init.md), [`wbt_options()`](wbt_init.md),
[`install_whitebox()`](install_whitebox.md)

## Author

**Maintainer**: Andrew Brown <brown.andrewg@gmail.com>
([ORCID](https://orcid.org/0000-0002-4565-533X))

Authors:

- Qiusheng Wu <giswqs@gmail.com>
