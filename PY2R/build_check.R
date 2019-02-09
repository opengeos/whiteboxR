if (!require(devtools)) install.packages('devtools')
if (!require(pkgdown)) install.packages('pkgdown')
if (!require(rhub)) install.packages('rhub')

devtools::check()
devtools::test()
rhub::check_for_cran()

rhub::check_with_rdevel()
rhub::check_with_rpatched()
rhub::check_with_rrelease()
rhub::check_with_roldrel()

pkgdown::build_site()
devtools::submit_cran()

devtools::install_github("giswqs/whiteboxR")
