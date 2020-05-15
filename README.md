# whiteboxR

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/whitebox)](https://cran.r-project.org/package=whitebox)
[![Binder](https://mybinder.org/badge_logo.svg)](https://gishub.org/whiteboxR-cloud)
[![Binder](https://binder.pangeo.io/badge.svg)](https://binder.pangeo.io/v2/gh/giswqs/whitebox-r-binder/master?urlpath=rstudio)
[![Build Status](https://travis-ci.org/giswqs/whiteboxR.svg?branch=master)](https://travis-ci.org/giswqs/whiteboxR)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/giswqs/whiteboxR?branch=master&svg=true)](https://ci.appveyor.com/project/giswqs/whiteboxR)
[![docs](https://img.shields.io/badge/docs-passing-brightgreen.svg)](https://giswqs.github.io/whiteboxR)
[![codecov](https://codecov.io/gh/giswqs/whiteboxR/branch/master/graph/badge.svg)](https://codecov.io/gh/giswqs/whiteboxR)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Twitter Follow](https://img.shields.io/twitter/follow/giswqs?style=social)](https://twitter.com/giswqs)
[![CRAN download count](https://cranlogs.r-pkg.org/badges/grand-total/whitebox)](https://cranlogs.r-pkg.org/badges/grand-total/whitebox)
[![Donate](https://img.shields.io/badge/Donate-Buy%20me%20a%20coffee-yellowgreen.svg)](https://www.buymeacoffee.com/giswqs)


**WhiteboxTools** R Frontend.

This repository is related to the **whitebox** R package for geospatial analysis, which is an R frontend of a stand-alone executable command-line program called **[WhiteboxTools](https://github.com/jblindsay/whitebox-tools)**. 

* Authors: Dr. John Lindsay (<https://jblindsay.github.io/ghrg/index.html>)
* Contributors: Dr. Qiusheng Wu (<https://wetlands.io> | <https://LidarBlog.com>)
* GitHub repo: <https://github.com/giswqs/whiteboxR>
* CRAN link: <https://cran.r-project.org/package=whitebox>
* WhiteboxTools: <https://github.com/jblindsay/whitebox-tools>
* User Manual: <https://jblindsay.github.io/wbt_book>
* Free software: [MIT license](https://opensource.org/licenses/MIT)


**Contents**

1. [Description](#description)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Available Tools](#available-tools)
5. [Contributing](#contributing)
6. [License](#license)
7. [Reporting Bugs](#reporting-bugs)

## Description

The **whitebox** R package is built on **WhiteboxTools**, an advanced geospatial data analysis platform developed by Prof. John Lindsay ([webpage](https://jblindsay.github.io/ghrg/index.html); [jblindsay](https://github.com/jblindsay)) at the University of Guelph's [Geomorphometry and Hydrogeomatics Research Group](https://jblindsay.github.io/ghrg/index.html). *WhiteboxTools* can be used to perform common geographical information systems (GIS) analysis operations, such as cost-distance analysis, distance buffering, and raster reclassification. Remote sensing and image processing tasks include image enhancement (e.g. panchromatic sharpening, contrast adjustments), image mosaicing, numerous filtering operations, simple classification (k-means), and common image transformations. *WhiteboxTools* also contains advanced tooling for spatial hydrological analysis (e.g. flow-accumulation, watershed delineation, stream network analysis, sink removal), terrain analysis (e.g. common terrain indices such as slope, curvatures, wetness index, hillshading; hypsometric analysis; multi-scale topographic position analysis), and LiDAR data processing. LiDAR point clouds can be interrogated (LidarInfo, LidarHistogram), segmented, tiled and joined, analyized for outliers, interpolated to rasters (DEMs, intensity images), and ground-points can be classified or filtered. *WhiteboxTools* is not a cartographic or spatial data visualization package; instead it is meant to serve as an analytical backend for other data visualization software, mainly GIS. Suggested citation: Lindsay, J. B. (2016). Whitebox GAT: A case study in geomorphometric analysis. _Computers & Geosciences_, 95, 75-84. doi:[10.1016/j.cageo.2016.07.003](http://dx.doi.org/10.1016/j.cageo.2016.07.003).

## Installation

There are three ways to install the **whitebox** R package.

### 1. CRAN

**Note:** **whitebox** has been temporarily taken down from [CRAN](https://cran.r-project.org/package=whitebox) due to [policy violation](https://cran.r-project.org/web/packages/policies.html) (*Downloads of WhiteboxTools binary as part of package installation*). An updated version will be released once I figure out how to solve this issue. For the time being, you can install **whitebox** from [R-Forge](https://r-forge.r-project.org/R/?group_id=2337) or [GitHub](https://github.com/giswqs/whiteboxR).

~~**whitebox** is now available on [CRAN](https://cran.r-project.org/package=whitebox), so you can install it with:~~

```R
install.packages("whitebox")
```

### 2. R-Forge

**whitebox** is also available on [R-Forge](https://r-forge.r-project.org/R/?group_id=2337), so you can install it with:

```R
install.packages("whitebox", repos="http://R-Forge.R-project.org")
```

### 3. GitHub

You can alternatively install the development version of **whitebox** from [GitHub](https://github.com/giswqs/whiteboxR) as follows:

```R
if (!require(devtools)) install.packages('devtools')
devtools::install_github("giswqs/whiteboxR")
```

You’ll also need to make sure your machine is able to build packages from source. See [Package Development Prerequisites](http://www.rstudio.com/ide/docs/packages/prerequisites) for the tools needed for your operating system.

## Usage

A complete list of functions available in the **whitebox** R package can be found [HERE](https://giswqs.github.io/whiteboxR/reference/index.html). Check out this [demo](https://giswqs.github.io/whiteboxR/articles/demo.html) for examples.

**About WhiteboxTools?**

```R
library(whitebox)

# Prints the whitebox-tools help...a listing of available commands
print(wbt_help())

# Prints the whitebox-tools license
print(wbt_license())

# Prints the whitebox-tools version
print(wbt_version())

# Prints the toolbox for a specific tool.
print(wbt_toolbox())

# List all available tools in whitebox-tools
print(wbt_list_tools())

# Lists tools with 'lidar' in tool name or description.
print(wbt_list_tools("lidar"))

# Prints the help for a specific tool.
print(wbt_tool_help("lidar_info"))

# Retrieves the tool parameter descriptions for a specific tool.
print(wbt_tool_parameters("slope"))

# View the source code for a specific tool on the source code repository.
print(wbt_view_code("breach_depressions"))
```

**How to run tools?**


Tool names in the whitebox R package can be called using the snake_case (e.g. lidar_info). See below for an example. If you are interested in using the WhiteboxTools command-line program, check [WhiteboxTools Usage](https://github.com/jblindsay/whitebox-tools#3-usage).

```R
library(whitebox)

# Set input raster DEM file
dem <- system.file("extdata", "DEM.tif", package="whitebox")

# Run tools
wbt_feature_preserving_smoothing(dem, "./smoothed.tif", filter=9, verbose_mode = TRUE)
wbt_breach_depressions("./smoothed.tif", "./breached.tif")
wbt_d_inf_flow_accumulation(dem, "./flow_accum.tif")
```

## Available Tools

The **[WhiteboxTools](https://github.com/jblindsay/whitebox-tools)** library currently contains more than **435** tools, which are each grouped based on their main function into one of the following categories: Data Tools, GIS Analysis, Hydrological Analysis, Image Analysis, LiDAR Analysis, Mathematical and Statistical Analysis, Stream Network Analysis, and Terrain Analysis. For a listing of available tools, complete with documentation and usage details, please see the [WhiteboxTools User Manual](https://jblindsay.github.io/wbt_book/available_tools/index.html).


## Contributing

If you would like to contribute to the project as a developer, follow these instructions to get started:

1. Fork the whiteboxR repository (<https://github.com/giswqs/whiteboxR>)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

Unless explicitly stated otherwise, any contribution intentionally submitted for inclusion in the work shall be licensed as the [MIT license](https://opensource.org/licenses/MIT) without any additional terms or conditions.

## License

The **WhiteboxR** package is distributed under the [MIT license](https://opensource.org/licenses/MIT), a permissive open-source (free software) license.


## Reporting Bugs

whiteboxR is distributed as is and without warranty of suitability for application. If you encounter flaws with the software (i.e. bugs) please report the issue. Providing a detailed description of the conditions under which the bug occurred will help to identify the bug. *Use the [Issues tracker](https://github.com/giswqs/whiteboxR/issues) on GitHub to report issues with the software and to request feature enchancements.* Please do not email Dr. Lindsay directly with bugs.