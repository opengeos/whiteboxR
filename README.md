# whiteboxR

[![Build Status](https://travis-ci.org/giswqs/whiteboxR.svg?branch=master)](https://travis-ci.org/giswqs/whiteboxR)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**WhiteboxTools** R frontend.

This repository is related to the **whitebox** R package for geospatial analysis, which is built on a stand-alone executable command-line program called **WhiteboxTools**. 

* Authors: Dr. John Lindsay (<http://www.uoguelph.ca/~hydrogeo/index.html>)
* Contributors: Dr. Qiusheng Wu (<https://wetlands.io>)
* GitHub repo: <https://github.com/giswqs/whiteboxR>
* WhiteboxTools: <https://github.com/jblindsay/whitebox-tools>
* User Manual: <https://jblindsay.github.io/wbt_book>
* Free software: [MIT license](https://opensource.org/licenses/MIT)

## Description

The **whitebox** R package is built on **WhiteboxTools**, an advanced geospatial data analysis platform developed by Prof. John Lindsay ([webpage](http://www.uoguelph.ca/~hydrogeo/index.html); [jblindsay](https://github.com/jblindsay)) at the University of Guelph's [Geomorphometry and Hydrogeomatics Research Group](http://www.uoguelph.ca/~hydrogeo/index.html). *WhiteboxTools* can be used to perform common geographical information systems (GIS) analysis operations, such as cost-distance analysis, distance buffering, and raster reclassification. Remote sensing and image processing tasks include image enhancement (e.g. panchromatic sharpening, contrast adjustments), image mosaicing, numerous filtering operations, simple classification (k-means), and common image transformations. *WhiteboxTools* also contains advanced tooling for spatial hydrological analysis (e.g. flow-accumulation, watershed delineation, stream network analysis, sink removal), terrain analysis (e.g. common terrain indices such as slope, curvatures, wetness index, hillshading; hypsometric analysis; multi-scale topographic position analysis), and LiDAR data processing. LiDAR point clouds can be interrogated (LidarInfo, LidarHistogram), segmented, tiled and joined, analyized for outliers, interpolated to rasters (DEMs, intensity images), and ground-points can be classified or filtered. *WhiteboxTools* is not a cartographic or spatial data visualization package; instead it is meant to serve as an analytical backend for other data visualization software, mainly GIS.

## Installation

```R
if (!'devtools' %in% installed.packages()) install.packages('devtools')
require(devtools)
devtools::install_github("giswqs/whiteboxR")
```

## Contributing

We welcome any bug reports, enhancement requests, and other contributions. To submit a bug report or enhancement request, please use the [`whiteboxR` GitHub issues tracker](https://github.com/giswqs/whiteboxR/issues). For more substantial contributions, please fork this repo, push your changes to your fork, and submit a pull request with a good commit message.