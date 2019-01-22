breach_depressions <- function(dem, output, max_depth=NULL, max_length=NULL) {
  pkg_name <- 'whitebox'
  pkg_dir <- find.package(pkg_name)
  exe_dir <- file.path(pkg_dir, 'WBT')
  exe_path <- file.path(exe_dir, 'whitebox_tools')
  data_dir <- file.path(exe_dir, 'data')
  # print(exe_path)
  cmd <- paste(exe_path, '-r=breach_depressions', '-v', paste0('--dem=', dem), paste0('--output=', output))
  system(cmd)
}
