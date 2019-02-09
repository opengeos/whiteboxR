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
There were no ERRORs or WARNINGs. 

There was 1 NOTE:

* checking installed package size ... NOTE
  installed size is 24.9Mb
  sub-directories of 1Mb or more:
    WBT  20.0Mb

  WhiteboxTools (WBT) exectuable is a required backend of the whitebox R package.

## Comments
* Use secure protocol (https) to download WhiteboxTools library
* Eliminate the need to write into the user filespace
* Improve onAttach function to ensure WBT is downloaded one-time only
* Fix error under r-oldrel-windows 
