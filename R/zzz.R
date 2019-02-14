.onLoad <- function(libname, pkgname) {
  os <- Sys.info()["sysname"]
  if (os == "Linux") {
    url <- "https://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_linux_amd64.tar.xz"
  } else if (os == "Windows") {
    url <- "https://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_win_amd64.zip"
  } else if (os == "Darwin") {
    url <- "https://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_darwin_amd64.zip"
  } else {
    stop("Sorry, whitebox is unsupported for your operating system!")
  }

  if (os == "Windows") {
    exe_name = "whitebox_tools.exe"
  } else {
    exe_name = "whitebox_tools"
  }

  pkg_dir <- find.package("whitebox")
  exe_path <- file.path(pkg_dir, "WBT", exe_name)

  if (!file.exists(exe_path)) {
    filename <- basename(url)
    # packageStartupMessage("Downloading WhiteboxTools executable for first time use ...")
    exe_zip <- file.path(pkg_dir, filename)
    utils::download.file(url = url, destfile = exe_zip)
    # packageStartupMessage(paste("Decompressing", filename, "..."))
    if (os == "Windows") {
      utils::unzip(exe_zip, exdir = pkg_dir)
    } else {
      utils::untar(exe_zip, exdir = pkg_dir)
    }
    # packageStartupMessage(paste("WhiteboxTools executable is located at:", exe_path))
    # packageStartupMessage("WhiteboxTools installation completed!")
  }

}
