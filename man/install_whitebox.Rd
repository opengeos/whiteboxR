% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wbt.R
\name{wbt_install}
\alias{wbt_install}
\alias{install_whitebox}
\alias{wbt_install_extension}
\title{Download and Install 'WhiteboxTools'}
\usage{
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
}
\arguments{
\item{pkg_dir}{default install path is to whitebox package "WBT" folder}

\item{platform}{character. Optional: suffix used for alternate platform names. On Linux, you can choose \code{"linux_amd64"} (default; Linux) or \code{"linux_musl"} for older glibc versions. On macOS Darwin you can choose \code{"darwin_amd64"} (default; macOS) or \code{"darwin_m_series"} for Apple M series hardware. Note that for \code{wbt_install_extension()} on the Apple M series use \code{"MacOS_ARM"}. Only one Windows binary is available: \code{"win_amd64"} (default; Windows).}

\item{force}{logical. Force install? Default \code{FALSE}. When \code{remove=TRUE} passed to \code{unlink()} to change permissions to allow removal of files/directories.}

\item{remove}{logical. Remove contents of "WBT" folder from \code{pkg_dir}? Default: \code{FALSE}}

\item{extension}{Extension name}

\item{destdir}{Directory to create \verb{/plugins/} directory for extracting extensions}
}
\value{
Prints out the location of the WhiteboxTools binary, if found. \code{NULL} otherwise.
}
\description{
This function downloads the 'WhiteboxTools' binary if needed. Pre-compiled binaries are
only available for download for 64-bit Linux (default compiled with glibc on Ubuntu 22.04;
use \code{platform="linux_musl"} for musl/earlier versions of glibc), Windows and Mac OS (ARM and
Intel) platforms. If you need WhiteboxTools for another platform follow the instructions to
build from source: \url{https://github.com/jblindsay/whitebox-tools}
}
\details{
'WhiteboxTools' and all of its extensions can be uninstalled by passing the \code{remove=TRUE} argument.
}
\examples{
\dontrun{
install_whitebox()
}
}
\keyword{General}
