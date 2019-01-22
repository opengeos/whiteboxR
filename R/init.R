#' Title
#'
#' @return
#' @export
#'
#' @examples
whitebox_init <- function() {
  os <- Sys.info()['sysname']
  if (os == "Linux") {
    print("OS: Linux")
    url <- "http://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_linux_amd64.tar.xz"
  } else if (os == 'Windows') {
    print("OS: Windows")
    url <- "http://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_win_amd64.zip"
  } else if (os == "Darwin") {
    print("OS: Darwin")
    url <- "http://www.uoguelph.ca/~hydrogeo/WhiteboxTools/WhiteboxTools_linux_amd64.tar.xz"
  } else {
    print("Unsupported operating system")
  }

  pkg_dir <- find.package("whitebox")
  # print(pkg_dir)
  filename <- basename(url)
  print(paste("Downloading", filename, "..."))
  exe_zip <- file.path(pkg_dir, filename)
  print(exe_zip)

  if(!file.exists(exe_zip)) {
    utils::download.file(url = url, destfile = exe_zip)
  }

  print(paste("Unzipping", filename, "..."))
  if(file.exists(exe_zip) & os == "Windows") {
    utils::unzip(exe_zip, exdir = pkg_dir)
  } else {
    utils::untar(exe_zip, exdir = pkg_dir)
  }
}

# whitebox_init()

