# Initialize 'WhiteboxTools'

`wbt_init()`: Check if a suitable 'WhiteboxTools' executable is present.
Search default path in package directory or set it manually with
`exe_path`.

`wbt_options()`: Get/set package options

- **`whitebox.exe_path`** - character. Path to executable file. The
  default value is the package installation directory, subdirectory
  `"WBT"`, followed by `whitebox_tools.exe` or `whitebox_tools`. Set the
  `whitebox.exe_path` option using `wbt_init()` `exe_path` argument

- **`whitebox.wd`** - character. Path to WhiteboxTools working
  directory. Used as `--wd` argument for tools that support it when `wd`
  is not specified elsewhere.

- **`whitebox.verbose`** - logical. Should standard output from calls to
  executable be [`cat()`](https://rdrr.io/r/base/cat.html) out for
  readability? When `whitebox.verbose=FALSE` no output is produced. Set
  the value of `whitebox.verbose` with `wbt_verbose()` `verbose`
  argument. Default is result of
  [`interactive()`](https://rdrr.io/r/base/interactive.html) if R
  package options are unset.

- **`whitebox.compress_rasters`** - logical. Should raster output from
  WhiteboxTools be compressed? Default: `NULL` uses existing
  WhiteboxTools settings. Set the value of `whitebox.compress_rasters`
  with `wbt_compress_rasters()` `compress_rasters` argument.

- **`whitebox.max_procs`** - integer. Maximum number of processes for
  tools that run in parallel or partially parallelize. Default: `-1`
  uses all of the available cores.

`wbt_exe_path()`: Get the file path of the 'WhiteboxTools' executable.

`wbt_runner_path()`: Get the file path of the 'WhiteboxTools Runner'
executable.

`wbt_default_path()`: Get the default file path of the 'WhiteboxTools'
executable.

`wbt_data_dir()`: Get the directory where 'WhiteboxTools' data are
stored.

`wbt_wd()`: Get or set the 'WhiteboxTools' working directory. Default:
`""` (unset) is your R working directory if no other options are set.

`wbt_verbose()`: Check verbose options for 'WhiteboxTools'

`wbt_compress_rasters()`: Check raster compression option for
'WhiteboxTools'. Default behavior is based on WhiteboxTools
settings.json, package options (if set). Raster compression settings can
be overridden in any `wbt_*()` function call by passing the
`compress_rasters` argument directly.

`wbt_max_procs()`: Check maximum number of processes for for tools that
run in parallel or partially parallelize. Default: `-1` uses all of the
available cores.

## Usage

``` r
wbt_init(
  exe_path = wbt_exe_path(shell_quote = FALSE),
  ...,
  check_version = TRUE
)

wbt_options(
  exe_path = NULL,
  wd = NULL,
  verbose = NULL,
  compress_rasters = NULL,
  max_procs = NULL
)

wbt_exe_path(exe_path = NULL, shell_quote = TRUE)

wbt_runner_path(shell_quote = TRUE)

wbt_default_path()

wbt_data_dir()

wbt_wd(wd = NULL)

wbt_verbose(verbose = NULL)

wbt_compress_rasters(compress_rasters = NULL)

wbt_max_procs(max_procs = NULL)
```

## Arguments

- exe_path:

  Optional: User-supplied path to 'WhiteboxTools' executable. Default:
  `NULL`

- ...:

  additional arguments to `wbt_options()`

- check_version:

  Check version of 'WhiteboxTools' installed against version R package
  was built for? Default: `TRUE`

- wd:

  character; Default: `NULL`; if set the package option `whitebox.wd` is
  set specified path (if directory exists)

- verbose:

  logical. Default: `NULL`; if `TRUE` or `FALSE`, set the package option
  `whitebox.verbose` to specified value. Tool verbosity settings can be
  overridden in any `wbt_*()` function call by passing the
  `verbose_mode` argument directly.

- compress_rasters:

  logical. Default: `NULL`; if `TRUE` or `FALSE`, set the package option
  `whitebox.compress_rasters` to specified value.

- max_procs:

  Default: `NULL`; if integer, set the package option
  `whitebox.max_procs` to specified value

- shell_quote:

  Return [`shQuote()`](https://rdrr.io/r/base/shQuote.html) result?

## Value

`wbt_init()`: logical; `TRUE` if binary file is found at `exe_path`

`wbt_options()`: an invisible list containing current
`whitebox.exe_path`, `whitebox.verbose`, `whitebox.compress_rasters`,
and `whitebox.max_procs` options

Returns the file path of 'WhiteboxTools' executable.

`wbt_wd()`: character; when working directory is unset, will not add
`--wd=` arguments to calls and should be the same as using
[`getwd()`](https://rdrr.io/r/base/getwd.html). See Details.

`wbt_verbose()`: logical; returns the result of option
`"whitebox.verbose_mode"`, if unset defaults to result of
[`interactive()`](https://rdrr.io/r/base/interactive.html).

`wbt_compress_rasters()`: logical; returns the result of option
`"whitebox.compress_rasters"`, if unset defaults to `NA`.

`wbt_max_procs()`: integer; defaults to `NA_integer_`

## Details

`wbt_exe_path()`: Checks system environment variable
`R_WHITEBOX_EXE_PATH` and package option `whitebox.exe_path`. Set your
desired path with either
`Sys.setenv(R_WHITEBOX_EXE_PATH = "C:/path/to/whitebox_tools.exe")` or
`options(whitebox.exe_path = "C:/path/to/whitebox_tools.exe")`. The
default, backwards-compatible path is returned by `wbt_default_path()`

`wbt_runner_path()`: Returns a path to 'WhiteboxTools Runner' including
a platform-specific executable (with or without .exe extension)

`wbt_default_path()`: Returns a path to 'WhiteboxTools' executable
including a platform-specific executable (with or without .exe
extension)

`wbt_data_dir()`: Uses platform-specific user data directory from
`tools::R_user_dir(package = "whitebox", which = "data")` on R 4.0+. On
R\<4 returns the original default `find.package("whitebox")`.

`wbt_wd()`: Before you set the working directory in a session the
default output will be in your current R working directory unless
otherwise specified. You can change working directory at any time by
setting the `wd` argument to `wbt_wd()` and running a tool. Note that
once you have set a working directory, the directory needs to be set
somewhere to "replace" the old value; just dropping the flag will not
change the working directory back to the R working directory. To "unset"
the option in the R package you can use `wbt_wd("")` which removes the
`--wd` flag from commands and sets the `working_directory` value in the
WhiteboxTools *settings.json* to `""`.

## See also

[`install_whitebox()`](install_whitebox.md)
[whitebox](whitebox-package.md)

## Examples

``` r
if (FALSE) { # \dontrun{
## wbt_init():

# set path to binary as an argument
# wbt_init(exe_path = "not/a/valid/path/whitebox_tools.exe")
} # }
if (FALSE) { # \dontrun{

## wbt_options():

# set multiple options (e.g. exe_path and verbose) with wbt_options()
wbt_options(exe_path = "not/a/valid/path/whitebox_tools.exe", verbose = TRUE)

} # }
if (FALSE) { # \dontrun{
wbt_exe_path()
} # }
if (FALSE) { # \dontrun{

## wbt_wd():

# no working directory set
wbt_wd(wd = "")

# set WBT working directory to R working directory
wbt_wd(wd = getwd())
} # }
if (FALSE) { # \dontrun{

## wbt_verbose():

wbt_verbose(verbose = TRUE)
} # }
if (FALSE) { # \dontrun{

## wbt_compress_rasters():

wbt_compress_rasters(compress_rasters = TRUE)
} # }
if (FALSE) { # \dontrun{

## wbt_max_procs():

wbt_max_procs(max_procs = 2)
} # }
```
