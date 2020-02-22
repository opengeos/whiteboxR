if (!require(devtools)) install.packages('devtools')
if (!require(pkgdown)) install.packages('pkgdown')
if (!require(rhub)) install.packages('rhub')
if (!require(lintr)) install.packages('lintr')

lintr::lint_package()

devtools::check()
# devtools::test()
# rhub::check_for_cran()
#
# rhub::check_with_rdevel()
# rhub::check_with_rpatched()
# rhub::check_with_rrelease()
# rhub::check_with_roldrel()
#
# rhub::check_on_windows()
#
# rhub::list_my_checks()

pkgdown::build_site()
# devtools::submit_cran()

devtools::install_github("giswqs/whiteboxR")
devtools::install_github("giswqs/whiteboxR@develop")
