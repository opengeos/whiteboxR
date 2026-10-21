# Changelog

## whitebox (development version)

- Updated links to the WhiteboxTools User Manual, which is no longer
  hosted online, to point to archived copies on the Wayback Machine
  ([\#139](https://github.com/opengeos/whiteboxR/issues/139))

## whitebox 2.4.3

CRAN release: 2025-10-20

- Fix for CRAN check
  ([\#135](https://github.com/opengeos/whiteboxR/issues/135))

  - GeoTIFF DEM sample data (*extdata/DEM.tif*) previously excluded,
    along with all other TIFF files, by *.Rbuildignore* is now
    explicitly included

  - Fix for behavior of
    [`sample_dem_data()`](../reference/extdata-gis.md) `destfile`
    argument:

    - Errors thrown from invalid sources from new
      [`wbt_source()`](../reference/wbt_source.md) (introduced in
      v2.4.2) revealed an underlying issue with sample data assets.
      Invalid source errors are now intentionally captured and tested,
      and inclusion of the extdata file should ensure other parts of
      tests work as expected

    - When `destfile` unset and no local file present,
      [`sample_dem_data()`](../reference/extdata-gis.md) no longer
      attempts to download and write to the user package library
      (**which is read-only on CRAN**)

    - `destfile` now intended for copying the sample dataset from
      package *extdata* folder, for workflows that need the sample data
      outside of the package library

- [`sample_soils_data()`](../reference/extdata-gis.md) now supports
  `destfile` (just like
  [`sample_dem_data()`](../reference/extdata-gis.md))

## whitebox 2.4.2

CRAN release: 2025-10-14

- [`wbt_source()`](../reference/wbt_source.md): now accepts `tmpdir`
  argument which defaults to
  [`tempdir()`](https://rdrr.io/r/base/tempfile.html) (not
  [`getwd()`](https://rdrr.io/r/base/getwd.html) or
  [`wbt_wd()`](../reference/wbt_init.md)) that is used for storing the
  intermediate shapefiles needed for WhiteboxTools

  - Also, the pattern for temporary file names is now customizable via
    `pattern` argument

- Bug fixes for [`wbt_source()`](../reference/wbt_source.md):

  - No longer writes temporary intermediate files to the working
    directory when passed a non-shapefile vector or non-GeoTIFF raster
    data source.

    - The temporary directory is used by default, unless new `tmpdir`
      argument is specified. This could be a breaking change if you were
      relying on the temporary files to be present in the WhiteboxTools
      working directory. Specify `tmpdir` in call to
      [`wbt_source()`](../reference/wbt_source.md) to make old behavior
      explicit.

  - Properly uses `layer` argument for data sources (e.g. GPKG) that may
    contain multiple vector layers or raster bands of interest (thanks
    to [@mps9506](https://github.com/mps9506) for reporting;
    [\#132](https://github.com/opengeos/whiteboxR/issues/132))

## whitebox 2.4.1

- Rebuilt `wbttools` and `wbttoolparameters` with WhiteboxTools v2.4.0

## whitebox 2.4.0

CRAN release: 2024-05-27

- Updates for WhiteboxTools v2.4.0
  (<https://github.com/jblindsay/whitebox-tools/releases/tag/v2.4.0>)

- Fix for new ZIP file folder structure for WhiteboxTools v2.4.0+ in
  [`wbt_install()`](../reference/install_whitebox.md) /
  [`install_whitebox()`](../reference/install_whitebox.md)

## whitebox 2.3.4

CRAN release: 2023-11-18

- Exported [`wbt_file_path()`](../reference/wbt_file_path.md), a
  function previously used internally for creating safe, expanded,
  quoted, paths for building WhiteboxTools commands. This function also
  supports the input of `terra` objects that are backed by file sources
  supported by WhiteboxTools.

## whitebox 2.3.3

- The default values for `compress_rasters` and `verbose_mode` have been
  set to `NULL` to better reflect that they are derived from the
  WhiteboxTools settings.json file.

  - See [`wbt_options()`](../reference/wbt_init.md) for more details. If
    the user specifies these arguments in a `wbt_*()` function call then
    the flag will be passed in the command line call. Otherwise the
    default `NULL` value is ignored. Links to the corresponding
    option-setting functions have been added to the documentation for
    all `wbt_*()` tool functions.

## whitebox 2.3.2

- Fix for file paths passed to optional `base` argument of
  [`wbt_resample()`](../reference/wbt_resample.md); thanks to
  [@Pentaonia](https://github.com/Pentaonia) for reporting

  - Also fixed are:
    [`wbt_vector_lines_to_raster()`](../reference/wbt_vector_lines_to_raster.md),
    [`wbt_vector_points_to_raster()`](../reference/wbt_vector_points_to_raster.md),
    [`wbt_vector_polygons_to_raster()`](../reference/wbt_vector_polygons_to_raster.md),
    [`wbt_block_maximum_gridding()`](../reference/wbt_block_maximum_gridding.md),
    [`wbt_block_minimum_gridding()`](../reference/wbt_block_minimum_gridding.md),
    [`wbt_heat_map()`](../reference/wbt_heat_map.md),
    [`wbt_idw_interpolation()`](../reference/wbt_idw_interpolation.md),
    [`wbt_natural_neighbour_interpolation()`](../reference/wbt_natural_neighbour_interpolation.md),
    [`wbt_nearest_neighbour_gridding()`](../reference/wbt_nearest_neighbour_gridding.md),
    [`wbt_radial_basis_function_interpolation()`](../reference/wbt_radial_basis_function_interpolation.md),
    [`wbt_tin_gridding()`](../reference/wbt_tin_gridding.md)

## whitebox 2.3.1

CRAN release: 2023-06-07

- [`wbt_install()`](../reference/install_whitebox.md) and
  [`wbt_install_extension()`](../reference/install_whitebox.md) gain
  optional `platform` argument that is used as a suffix on ZIP file,
  allowing download of alternate binaries on Linux and macOS (Darwin).

- Add [`wbt_runner_path()`](../reference/wbt_init.md) (analog of
  [`wbt_exe_path()`](../reference/wbt_init.md) for `whitebox_runner` GUI
  executable) and
  [`wbt_launch_runner()`](../reference/wbt_launch_runner.md) a simple
  function to launch the GUI.

- `wbt_wd("")` now sets the value of `working_directory` in the
  WhiteboxTools settings.json file to `""` and triggers background
  options to prevent `--wd` flag being added until a new working
  directory is set. This has been a long-standing issue, resolved
  following <https://github.com/opengeos/whiteboxR/issues/108>.

## whitebox 2.3.0

CRAN release: 2023-03-29

- Updates for WhiteboxTools v2.3.0
  (<https://github.com/jblindsay/whitebox-tools/releases/tag/v2.3.0>)

- Add [`wbt()`](../reference/wbt.md),
  [`wbt_source()`](../reference/wbt_source.md), and related methods; new
  functionality for calling tools by name with various R object types as
  input.

  - See the [`wbt()`](../reference/wbt.md) method vignette for details.

## whitebox 2.2.1

- Adds [`wbt_data_dir()`](../reference/wbt_init.md) for managing where
  WhiteboxTools “WBT” directory is installed.

- The new default path is a preferred location generated with
  `tools::R_user_dir(package="whitebox")` on R 4.0+

- If `"whitebox_tools"` is found on your PATH, you no longer need any
  custom setup of `whitebox.exe_path`. The path and options will be
  detected automatically via `Sys.which("whitebox_tools")`.

- Custom options set within the session or environment take precedence
  over PATH.

## whitebox 2.2.0

CRAN release: 2022-10-27

- Updates for WhiteboxTools v2.2.0

- [`wbt_rust_backtrace()`](../reference/wbt_rust_backtrace.md), a helper
  method for debugging Rust-related failures of the command-line tool,
  is now exported

- [`wbt_run_tool()`](../reference/wbt_run_tool.md): Fix potentially
  length \> 1 logic in `if()` statement for error status messages to
  avoid warnings/future errors

- [`download.file()`](https://rdrr.io/r/utils/download.file.html)
  `method="wininet"` has been deprecated so it is no longer in the
  possible set of methods to try on Windows when a download fails

## whitebox 2.1.5

CRAN release: 2022-07-11

- Added [`wbt_install_extension()`](../reference/install_whitebox.md)
  and [`wbt_activate()`](../reference/wbt_activate.md) for downloading,
  installing and activating WhiteboxTools extensions

- `wbt_internal_tool_name()` now returns tool names in CamelCase, and
  these are the tool names passed via the command line

## whitebox 2.1.4

CRAN release: 2022-05-15

- Suggest {terra} instead of {raster} and update demo vignette
  accordingly; drops {rgdal} suggest

- Add support for path expansion in `wd` arguments passed directly to
  tool functions; this was already supported for other methods of
  setting the working directory

- Updates to `wbttools` and `wbttoolparameters` datasets

  - Fix for `argument_name='k'`

  - Remove several one and two character flag aliases from
    `argument_name` and replace with full name

- Add support for showing warning messages in regular
  interactive/verbose mode, thanks to
  [@alenahav](https://github.com/alenahav) for reporting an issue
  (<https://github.com/opengeos/whiteboxR/issues/75>) with
  [`wbt_fd8_flow_accumulation()`](../reference/wbt_fd8_flow_accumulation.md)

- Functions that take multiple files are auto-quoted by default; thanks
  to François-Nicolas Robinne for reporting issue
  ([@FNRobinne](https://github.com/FNRobinne);
  <https://github.com/opengeos/whiteboxR/issues/55>) with
  [`wbt_mosaic()`](../reference/wbt_mosaic.md)

- Error output is now more verbose, ensuring relevant tool output is
  displayed to user on error regardless of verbosity, platform, etc.
  Thanks to Jeffrey W. Rozelle for reporting issue
  ([@jwilliamrozelle](https://github.com/jwilliamrozelle);
  <https://github.com/opengeos/whiteboxR/issues/80>) with getting error
  messages about unsupported raster types

## whitebox 2.1.3

- Generated `whitebox_tools` commands no longer include flags for
  default arguments that are stored in settings.json unless specified by
  the user.

  - Updates to fix issues with permissions to write *settings.json*;
    thanks to Henrik ([@hewag1975](https://github.com/hewag1975)) for
    reporting problems on Shiny Server
    (<https://github.com/opengeos/whiteboxR/issues/67>)

- [`wbt_install()`](../reference/install_whitebox.md) /
  [`install_whitebox()`](../reference/install_whitebox.md) now removes
  the downloaded zip file on exit thanks to Christoph Stepper
  ([@cstepper](https://github.com/cstepper);
  <https://github.com/opengeos/whiteboxR/issues/72>)

- New default arguments for
  [`wbt_list_tools()`](../reference/wbt_list_tools.md),
  [`wbt_time_in_daylight()`](../reference/wbt_time_in_daylight.md),
  [`wbt_shadow_image()`](../reference/wbt_shadow_image.md) thanks to
  Jens Wiesehahn ([@wiesehahn](https://github.com/wiesehahn);
  <https://github.com/opengeos/whiteboxR/issues/70>,
  <https://github.com/opengeos/whiteboxR/issues/73>)

## whitebox 2.1.2

CRAN release: 2022-03-21

- Fixes regression in checking “Demo” vignette on CRAN

## whitebox 2.1.1

CRAN release: 2022-03-15

- File path arguments to tools now automatically perform path expansion
  (converting `~` to your home directory with
  [`path.expand()`](https://rdrr.io/r/base/path.expand.html)). This also
  works on arguments that contain comma or semicolon delimited lists.
  (<https://github.com/opengeos/whiteboxR/issues/62>)

- Corrections to `wbttoolparameters` dataset (updated classification of
  input/output parameters)

- Fix for
  [`wbt_lidar_tin_gridding()`](../reference/wbt_lidar_tin_gridding.md)
  `exclude_cls` argument

- Add [`wbt_compress_rasters()`](../reference/wbt_init.md) to set
  package option `whitebox.compress_rasters`

  - Updated how `--compress_rasters` parameter is passed via command
    line. Now the flag is added to all commands regardless of whether
    the value is `TRUE` or `FALSE`. This allows update of settings.json
    accordingly when `--compress_rasters=FALSE`. RE:
    <https://github.com/jblindsay/whitebox-tools/issues/233#issuecomment-1065955783>

- Add [`wbt_max_procs()`](../reference/wbt_init.md) to set package
  option `whitebox.max_procs`

- All `wbt_*()` tool functions now take a `command_only` argument that
  is passed to [`wbt_run_tool()`](../reference/wbt_run_tool.md). When
  `TRUE`, the function returns the command that would be run by
  [`system()`](https://rdrr.io/r/base/system.html) instead of running
  the tool.

## whitebox 2.1.0

CRAN release: 2022-02-11

- Update for WhiteboxTools v2.1.0

  - See <https://www.whiteboxgeo.com/whitebox-geospatial-news/> for
    details

## whitebox 2.0.0

CRAN release: 2021-09-10

- Update for WhiteboxTools v2.0.0

  - See
    <https://github.com/jblindsay/whitebox-tools/releases/tag/v2.0.0>
    for details

Enhancements:

- [`whitebox::install_whitebox()`](../reference/install_whitebox.md)
  will call [`wbt_init()`](../reference/wbt_init.md) on the `exe_path`
  after unpacking to target directory

- [`wbt_init()`](../reference/wbt_init.md) `exe_path`,
  [`wbt_wd()`](../reference/wbt_init.md) `wd`, and
  [`install_whitebox()`](../reference/install_whitebox.md) `pkg_dir`
  paths can be specified with shorthand `~` for home directory, which is
  expanded with
  [`path.expand()`](https://rdrr.io/r/base/path.expand.html)

- Unsetting working directories requires only a single call to
  `wbt_wd("")`

- Functions no longer use
  [`match.call()`](https://rdrr.io/r/base/match.call.html) so
  unconventional/automated methods for calling tools that do not have a
  parsable tool name in the call result now work
  ([\#45](https://github.com/opengeos/whiteboxR/issues/45))

## whitebox 1.5.1

- Add package options for custom EXE path and verbosity

  - Changes behavior of [`wbt_init()`](../reference/wbt_init.md); now
    only checks EXE path

- Adds [`install_whitebox()`](../reference/install_whitebox.md) to
  handle downloading and installing WhiteboxTools

### New package options

- [`wbt_init()`](../reference/wbt_init.md) can set any of the other
  options in the same call as the custom EXE path.

  - [`wbt_options()`](../reference/wbt_init.md) returns current option
    values

- Use a system environment variable (`R_WHITEBOX_EXE_PATH`) or package
  option (`whitebox.exe_path`)

  - Get / set with [`wbt_init()`](../reference/wbt_init.md).

- Verbosity controlled with (`R_WHITEBOX_VERBOSE`) or package option
  (`whitebox.verbose`)

  - Get / set with [`wbt_verbose()`](../reference/wbt_init.md)

- Working directory controlled with (`R_WHITEBOX_WD`) or package option
  (`whitebox.wd`)

  - Get / set with [`wbt_wd()`](../reference/wbt_init.md)

- New “whitebox Demo” vignette

- New data `wbttools` and `wbttoolparameters` data.frame built from
  WhiteboxTools v1.5.0 and
  [`wbt_tool_parameters()`](../reference/wbt_tool_parameters.md) output
  for full tool library

  - See the “whitebox Tool Metadata” vignette

## whitebox 1.5.0

- Update to WhiteboxTools v1.5.0

- More information about this version can be found at
  <https://github.com/jblindsay/whitebox-tools/releases/tag/1.5.0> for
  more info.

## whitebox 1.4.0

- Update to WhiteboxTools v1.4.0

- More information about this version can be found at
  <https://github.com/jblindsay/whitebox-tools/releases/tag/v1.4.0>

## whitebox 1.3.1

- Update to WhiteboxTools v1.3.1

- More information about this version can be found at
  <https://github.com/jblindsay/whitebox-tools/releases/tag/v1.3.1>

## whitebox 1.3.0

- Update to WhiteboxTools v1.3.0

## whitebox 1.1.0

- Update to WhiteboxTools v1.1.0

## whitebox 1.0.2

- Update to WhiteboxTools v1.0.2

## whitebox 1.0.1

- Prep for v1.0.1

## whitebox 0.5.0

- Fix bugs for logical parameters

## whitebox 0.3.0

- update to [WhiteboxTools
  v0.15.0](https://github.com/jblindsay/whitebox-tools/releases)

## whitebox 0.2.0

- Change the way to download WBT binaries

## whitebox 0.1.1

- Update to use secure download mechanisms (https)

## whitebox 0.1

- Initial release
