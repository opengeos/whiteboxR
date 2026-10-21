# Download and Install 'WhiteboxTools'

This function downloads the 'WhiteboxTools' binary if needed.
Pre-compiled binaries are only available for download for 64-bit Linux
(default compiled with glibc on Ubuntu 22.04; use
`platform="linux_musl"` for musl/earlier versions of glibc), Windows and
Mac OS (ARM and Intel) platforms. If you need WhiteboxTools for another
platform follow the instructions to build from source:
<https://github.com/jblindsay/whitebox-tools>

## Usage

``` r
wbt_install(
  pkg_dir = wbt_data_dir(),
  platform = NULL,
  force = FALSE,
  remove = FALSE
)

install_whitebox(
  pkg_dir = wbt_data_dir(),
  platform = NULL,
  force = FALSE,
  remove = FALSE
)

wbt_install_extension(
  extension = c("GeneralToolsetExtension", "AgricultureToolset",
    "DemAndSpatialHydrologyToolset", "LidarAndRemoteSensingToolset"),
  platform = NULL,
  destdir = dirname(wbt_exe_path(shell_quote = FALSE))
)
```

## Arguments

- pkg_dir:

  default install path is to whitebox package "WBT" folder

- platform:

  character. Optional: suffix used for alternate platform names. On
  Linux, you can choose `"linux_amd64"` (default; Linux) or
  `"linux_musl"` for older glibc versions. On macOS Darwin you can
  choose `"darwin_amd64"` (default; macOS) or `"darwin_m_series"` for
  Apple M series hardware. Note that for `wbt_install_extension()` on
  the Apple M series use `"MacOS_ARM"`. Only one Windows binary is
  available: `"win_amd64"` (default; Windows).

- force:

  logical. Force install? Default `FALSE`. When `remove=TRUE` passed to
  [`unlink()`](https://rdrr.io/r/base/unlink.html) to change permissions
  to allow removal of files/directories.

- remove:

  logical. Remove contents of "WBT" folder from `pkg_dir`? Default:
  `FALSE`

- extension:

  Extension name

- destdir:

  Directory to create `/plugins/` directory for extracting extensions

## Value

Prints out the location of the WhiteboxTools binary, if found. `NULL`
otherwise.

## Details

'WhiteboxTools' and all of its extensions can be uninstalled by passing
the `remove=TRUE` argument.

## Examples

``` r
if (FALSE) { # \dontrun{
install_whitebox()
} # }
```
