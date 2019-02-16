## Test environments

* Local Manjaro Linux 18.0.2, R 3.5.2
* Ubuntu 14.04 (on travis-ci), R 3.5.2
* Mac OS X 10.13.3 (on travis-ci), R 3.5.2
* Windows Server 2012 R2 x64 (on appveyor), R 3.5.2
* rhub::check_for_cran()
* rhub::check_with_rdevel()
* rhub::check_with_rpatched()
* rhub::check_with_rrelease()
* rhub::check_with_roldrel()

## R CMD check results

There were no ERRORs, WARNINGs, or NOTES. 

## Comments

* Eliminate automatic downloads of WBT binaries during package installation.
* Skip long-running tests and examples
