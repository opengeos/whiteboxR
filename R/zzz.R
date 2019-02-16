.onAttach <- function(libname, pkgname) {
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe_name <- "whitebox_tools.exe"
  } else {
    exe_name <- "whitebox_tools"
  }

  pkg_dir <- find.package("whitebox")
  exe_path <- file.path(pkg_dir, "WBT", exe_name)

  if (!file.exists(exe_path)) {
    msg <-  paste0(
      "\n",
      "---------------------------------------------------------------\n",
      "\n",
      "Your next step is to download the WhiteboxTools binary:\n",
      "    > whitebox::wbt_init()\n",
      "\n",
      "For whitebox package documentation, ask for help:\n",
      "    > ??whitebox\n",
      "\n",
      "For more information visit https://giswqs.github.io/whiteboxR\n",
      "\n",
      "---------------------------------------------------------------\n")
    packageStartupMessage(msg)
  }
}

.onLoad <- function(libname, pkgname) {
  check_whitebox_binary()
}

check_whitebox_binary <- function() {
  os <- Sys.info()["sysname"]
  if (os == "Windows") {
    exe_name <- "whitebox_tools.exe"
  } else {
    exe_name <- "whitebox_tools"
  }

  pkg_dir <- find.package("whitebox")
  exe_path <- file.path(pkg_dir, "WBT", exe_name)

  if (!file.exists(exe_path)) {
    msg <- paste0(
      "\n",
      "---------------------------------------------------------------\n",
      "\n",
      "Your next step is to download the WhiteboxTools binary:\n",
      "    > whitebox::wbt_init()\n",
      "\n",
      "For whitebox package documentation, ask for help:\n",
      "    > ??whitebox\n",
      "\n",
      "For more information visit https://giswqs.github.io/whiteboxR\n",
      "\n",
      "---------------------------------------------------------------\n")
    message(msg)
  }
}
