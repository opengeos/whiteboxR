# Convenience method for path to sample DEM and soils data

Get a file path to DEM.tif or STATSGO2.shp stored in extdata subfolder
of whitebox package installation directory.

## Usage

``` r
sample_dem_data(destfile = NULL, ...)

sample_soils_data(destfile = NULL, ...)
```

## Arguments

- destfile:

  Path to target location of sample data. Will be downloaded if does not
  exist. Defaults to file path of extdata subfolder of whitebox package
  installation directory.

- ...:

  additional arguments to
  [`file.copy()`](https://rdrr.io/r/base/files.html) e.g. `overwrite`

## Value

character.

## Examples

``` r

if (check_whitebox_binary()) {
  wbt_slope(sample_dem_data(), output = "slope.tif")
}
unlink(c('slope.tif', 'settings.json'))
```
