# whitebox Tool Metadata

## `whitebox` Tool Metadata

This vignette provides an introduction to the data sets included in the
`whitebox` package. These data sets contain names, arguments and other
metadata for tools available in WhiteboxTools.

#### What version of WhiteboxTools are these data sets generated from?

- Current version: **2.4.0**

Internal data sets and functions defined in the R package correspond to
tool names available in the most recent version of WhiteboxTools. Data
sets are *not* dynamically generated from your WhiteboxTools
installation. Relatively recent versions of WhiteboxTools should be
supported backward-compatibly, though any newer functionality will not
be usable.

### WhiteboxTools Tool Names and R Function Names

The first data set describes tool names in WhiteboxTools and the
corresponding exported function in the R package, along with the
WhiteboxTools Toolbox name and a brief description.

``` r

data("wbttools", package = "whitebox")

str(wbttools)
#> 'data.frame':    562 obs. of  8 variables:
#>  $ tool_name    : chr  "AbsoluteValue" "AccumulationCurvature" "AdaptiveFilter" "Add" ...
#>  $ function_name: chr  "wbt_absolute_value" "wbt_accumulation_curvature" "wbt_adaptive_filter" "wbt_add" ...
#>  $ toolbox_name : chr  "Math and Stats Tools" "Geomorphometric Analysis" "Image Processing Tools" "Math and Stats Tools" ...
#>  $ label        : chr  "Absolute Value" "Accumulation Curvature" "Adaptive Filter" "Add" ...
#>  $ description  : chr  "Calculates the absolute value of every cell in a raster." "This tool calculates accumulation curvature from an input DEM." "Performs an adaptive filter on an image." "Performs an addition operation on two rasters or a raster and a constant value." ...
#>  $ github       : chr  "https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/math_stat_analysis/abs.rs" "Source code is unavailable due to proprietary license." "https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/image_analysis/adaptive_filter.rs" "https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/math_stat_analysis/add.rs" ...
#>  $ book         : chr  "https://www.whiteboxgeo.com/manual/wbt_book/available_tools/mathand_stats_tools.html#AbsoluteValue" "https://www.whiteboxgeo.com/manual/wbt_book/available_tools/geomorphometric_analysis.html#AccumulationCurvature" "https://www.whiteboxgeo.com/manual/wbt_book/available_tools/image_processing_tools.html#AdaptiveFilter" "https://www.whiteboxgeo.com/manual/wbt_book/available_tools/mathand_stats_tools.html#Add" ...
#>  $ is_extension : logi  FALSE TRUE FALSE FALSE FALSE FALSE ...
#>  - attr(*, "version")= chr "2.4.0"
```

The `wbttools` data set is a data.frame with 562 tools and 7 variables

- `"tool_name"` - WhiteboxTools tool name

- `"function_name"` - R function tool name

- `"toolbox_name"` - WhiteboxTools toolbox name

- `"label"` - WhiteboxTools tool label

- `"description"` - Brief description

- `"github"` - GitHub link

- `"book"` - Reference manual link

- `"is_extension"` - Tool is part of General Toolset Extension (GTE), as
  opposed to the “open core”

``` r

head(wbttools)
#>                    tool_name                      function_name
#> 1              AbsoluteValue                 wbt_absolute_value
#> 2      AccumulationCurvature         wbt_accumulation_curvature
#> 3             AdaptiveFilter                wbt_adaptive_filter
#> 4                        Add                            wbt_add
#> 5 AddPointCoordinatesToTable wbt_add_point_coordinates_to_table
#> 6            AggregateRaster               wbt_aggregate_raster
#>               toolbox_name                          label
#> 1     Math and Stats Tools                 Absolute Value
#> 2 Geomorphometric Analysis         Accumulation Curvature
#> 3   Image Processing Tools                Adaptive Filter
#> 4     Math and Stats Tools                            Add
#> 5               Data Tools Add Point Coordinates To Table
#> 6             GIS Analysis               Aggregate Raster
#>                                                                                                    description
#> 1                                                     Calculates the absolute value of every cell in a raster.
#> 2                                               This tool calculates accumulation curvature from an input DEM.
#> 3                                                                     Performs an adaptive filter on an image.
#> 4                              Performs an addition operation on two rasters or a raster and a constant value.
#> 5 Modifies the attribute table of a point vector by adding fields containing each point's X and Y coordinates.
#> 6                                                                   Aggregates a raster to a lower resolution.
#>                                                                                                                              github
#> 1                    https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/math_stat_analysis/abs.rs
#> 2                                                                            Source code is unavailable due to proprietary license.
#> 3            https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/image_analysis/adaptive_filter.rs
#> 4                    https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/math_stat_analysis/add.rs
#> 5 https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/data_tools/add_point_coordinates_to_table.rs
#> 6             https://github.com/jblindsay/whitebox-tools/blob/master/whitebox-tools-app/src/tools/gis_analysis/aggregate_raster.rs
#>                                                                                                              book
#> 1              https://www.whiteboxgeo.com/manual/wbt_book/available_tools/mathand_stats_tools.html#AbsoluteValue
#> 2 https://www.whiteboxgeo.com/manual/wbt_book/available_tools/geomorphometric_analysis.html#AccumulationCurvature
#> 3          https://www.whiteboxgeo.com/manual/wbt_book/available_tools/image_processing_tools.html#AdaptiveFilter
#> 4                        https://www.whiteboxgeo.com/manual/wbt_book/available_tools/mathand_stats_tools.html#Add
#> 5          https://www.whiteboxgeo.com/manual/wbt_book/available_tools/data_tools.html#AddPointCoordinatesToTable
#> 6                   https://www.whiteboxgeo.com/manual/wbt_book/available_tools/gis_analysis.html#AggregateRaster
#>   is_extension
#> 1        FALSE
#> 2         TRUE
#> 3        FALSE
#> 4        FALSE
#> 5        FALSE
#> 6        FALSE
```

The R function naming style differs from the tool names in
WhiteboxTools, but the core words are the same.

R function names are derived from the WhiteboxTools name as follows:

1.  `PascalCase` tool names change to `snake_case`

2.  All R function names get the prefix `wbt_`

For example, `StreamSlopeContinuous` in WhiteboxTools becomes
[`wbt_stream_slope_continuous()`](../reference/wbt_stream_slope_continuous.md)
in R.

### WhiteboxTools Tool and Parameter Names

The second data set provides details about the available function
arguments by tool name.

``` r

data("wbttoolparameters", package = "whitebox")
```

The `wbttoolparameters` data set is a *data.frame* with 2313 parameters
and 13 variables:

- `"tool_name"` - WhiteboxTools tool name

- `"function_name"` - R function name

- `"toolbox_name"` - WhiteboxTools toolbox name

- `"name"` - WhiteboxTools tool parameter name

- `"flags"` - flags used to specify parameter on command line;
  comma-separated

- `"description"` - parameter description

- `"default_value"` - parameter default value, if any

- `"optional"` - parameter “optional” flag; note that some combination
  of optional parameters may be required for certain conditions

- `"parameter_class"` - parameter type

- `"parameter_detail"` - parameter details; character: data type
  followed by colon and more specifics, For OptionList possible values,
  comma-separated (if defined)

- `"is_input"` - logical. Classification of ‘input’ parameters

- `"is_output"` - logical. Classification of ‘output’ parameters

- `"argument_name"` - labels for selected subset of `"flags"` **used as
  R function argument names** for `wbt_` functions

``` r

head(wbttoolparameters)
#>               tool_name              function_name             toolbox_name
#> 1         AbsoluteValue         wbt_absolute_value     Math and Stats Tools
#> 2         AbsoluteValue         wbt_absolute_value     Math and Stats Tools
#> 3 AccumulationCurvature wbt_accumulation_curvature Geomorphometric Analysis
#> 4 AccumulationCurvature wbt_accumulation_curvature Geomorphometric Analysis
#> 5 AccumulationCurvature wbt_accumulation_curvature Geomorphometric Analysis
#> 6 AccumulationCurvature wbt_accumulation_curvature Geomorphometric Analysis
#>                        name       flags
#> 1                Input File  -i,--input
#> 2               Output File -o,--output
#> 3          Input Raster DEM    -i,--dem
#> 4       Output Raster Image -o,--output
#> 5 Log-transform the output?       --log
#> 6                  Z-factor   --zfactor
#>                                description default_value optional
#> 1                       Input raster file.          <NA>    FALSE
#> 2                      Output raster file.          <NA>    FALSE
#> 3       Name of the input raster DEM file.          <NA>    FALSE
#> 4    Name of the output raster image file.          <NA>    FALSE
#> 5 Display output values using a log-scale.         false     TRUE
#> 6                     Z conversion factor.           1.0     TRUE
#>   parameter_class parameter_detail is_input is_output argument_name
#> 1    ExistingFile           Raster     TRUE     FALSE         input
#> 2         NewFile           Raster    FALSE      TRUE        output
#> 3    ExistingFile           Raster     TRUE     FALSE           dem
#> 4         NewFile           Raster    FALSE      TRUE        output
#> 5         Boolean          Boolean    FALSE     FALSE           log
#> 6           Float            Float    FALSE     FALSE       zfactor
```

Several fields in this table such as `flags` and `parameter_type` are
“flattened” relative to the nested
[`wbt_tool_parameters()`](../reference/wbt_tool_parameters.md) output.

The nested `parameter_type` from the JSON result is replaced with two
variables in the data set: `parameter_class` and `parameter_details`

This parameter *data.frame* is useful to construct your own functions
with [`wbt_run_tool()`](../reference/wbt_run_tool.md) or for inspecting
the types of tools that can be run on particular data types.

``` r

str(wbttoolparameters, max.level = 1)
#> 'data.frame':    2313 obs. of  13 variables:
#>  $ tool_name       : chr  "AbsoluteValue" "AbsoluteValue" "AccumulationCurvature" "AccumulationCurvature" ...
#>  $ function_name   : chr  "wbt_absolute_value" "wbt_absolute_value" "wbt_accumulation_curvature" "wbt_accumulation_curvature" ...
#>  $ toolbox_name    : chr  "Math and Stats Tools" "Math and Stats Tools" "Geomorphometric Analysis" "Geomorphometric Analysis" ...
#>  $ name            : chr  "Input File" "Output File" "Input Raster DEM" "Output Raster Image" ...
#>  $ flags           : chr  "-i,--input" "-o,--output" "-i,--dem" "-o,--output" ...
#>  $ description     : chr  "Input raster file." "Output raster file." "Name of the input raster DEM file." "Name of the output raster image file." ...
#>  $ default_value   : chr  NA NA NA NA ...
#>  $ optional        : logi  FALSE FALSE FALSE FALSE TRUE TRUE ...
#>  $ parameter_class : chr  "ExistingFile" "NewFile" "ExistingFile" "NewFile" ...
#>  $ parameter_detail: chr  "Raster" "Raster" "Raster" "Raster" ...
#>  $ is_input        : logi  TRUE FALSE TRUE FALSE FALSE FALSE ...
#>  $ is_output       : logi  FALSE TRUE FALSE TRUE FALSE FALSE ...
#>  $ argument_name   : chr  "input" "output" "dem" "output" ...
#>  - attr(*, "version")= chr "2.4.0"
```

You will find that both `tool_name` and `function_name` are present, so
you can look up by whatever is convenient.

The variable `argument_name` is processed to be the subset of `flags`
that corresponds to arguments to R functions, which are denoted with
`function_name`.

#### Example: Finding Tools by Parameter Type

To find the tools that have an “ExistingFile” argument with file type
“Raster” we can use [`subset()`](https://rdrr.io/r/base/subset.html).

``` r

head(subset(wbttoolparameters, grepl("ExistingFile", parameter_class) & grepl("Raster", parameter_detail)))
#>                tool_name              function_name             toolbox_name
#> 1          AbsoluteValue         wbt_absolute_value     Math and Stats Tools
#> 3  AccumulationCurvature wbt_accumulation_curvature Geomorphometric Analysis
#> 7         AdaptiveFilter        wbt_adaptive_filter   Image Processing Tools
#> 12                   Add                    wbt_add     Math and Stats Tools
#> 13                   Add                    wbt_add     Math and Stats Tools
#> 16       AggregateRaster       wbt_aggregate_raster             GIS Analysis
#>                            name      flags                          description
#> 1                    Input File -i,--input                   Input raster file.
#> 3              Input Raster DEM   -i,--dem   Name of the input raster DEM file.
#> 7                    Input File -i,--input                   Input raster file.
#> 12 Input File Or Constant Value   --input1 Input raster file or constant value.
#> 13 Input File Or Constant Value   --input2 Input raster file or constant value.
#> 16                   Input File -i,--input                   Input raster file.
#>    default_value optional     parameter_class parameter_detail is_input
#> 1           <NA>    FALSE        ExistingFile           Raster     TRUE
#> 3           <NA>    FALSE        ExistingFile           Raster     TRUE
#> 7           <NA>    FALSE        ExistingFile           Raster     TRUE
#> 12          <NA>    FALSE ExistingFileOrFloat           Raster     TRUE
#> 13          <NA>    FALSE ExistingFileOrFloat           Raster     TRUE
#> 16          <NA>    FALSE        ExistingFile           Raster     TRUE
#>    is_output argument_name
#> 1      FALSE         input
#> 3      FALSE           dem
#> 7      FALSE         input
#> 12     FALSE        input1
#> 13     FALSE        input2
#> 16     FALSE         input
```

### Appendix: Tables of Function Names by Toolbox

The remainder of this vignette is tables of R function names and tool
descriptions from `wbttoolparameters`, organized by WhiteboxTools
toolbox/extension name.

#### Data Tools

| Function Name | Description |
|:---|:---|
| [`wbt_add_point_coordinates_to_table()`](../reference/wbt_add_point_coordinates_to_table.md) | Modifies the attribute table of a point vector by adding fields containing each point’s X and Y coordinates. |
| [`wbt_clean_vector()`](../reference/wbt_clean_vector.md) | Removes null features and lines/polygons with fewer than the required number of vertices. |
| [`wbt_convert_nodata_to_zero()`](../reference/wbt_convert_nodata_to_zero.md) | Converts nodata values in a raster to zero. |
| [`wbt_convert_raster_format()`](../reference/wbt_convert_raster_format.md) | Converts raster data from one format to another. |
| [`wbt_csv_points_to_vector()`](../reference/wbt_csv_points_to_vector.md) | Converts a CSV text file to vector points. |
| [`wbt_export_table_to_csv()`](../reference/wbt_export_table_to_csv.md) | Exports an attribute table to a CSV text file. |
| [`wbt_fix_dangling_arcs()`](../reference/wbt_fix_dangling_arcs.md) | This tool fixes undershot and overshot arcs, two common topological errors, in an input vector lines file. |
| [`wbt_join_tables()`](../reference/wbt_join_tables.md) | Merge a vector’s attribute table with another table based on a common field. |
| [`wbt_lines_to_polygons()`](../reference/wbt_lines_to_polygons.md) | Converts vector polylines to polygons. |
| [`wbt_merge_table_with_csv()`](../reference/wbt_merge_table_with_csv.md) | Merge a vector’s attribute table with a table contained within a CSV text file. |
| [`wbt_merge_vectors()`](../reference/wbt_merge_vectors.md) | Combines two or more input vectors of the same ShapeType creating a single, new output vector. |
| [`wbt_modify_no_data_value()`](../reference/wbt_modify_no_data_value.md) | Modifies nodata values in a raster. |
| [`wbt_multi_part_to_single_part()`](../reference/wbt_multi_part_to_single_part.md) | Converts a vector file containing multi-part features into a vector containing only single-part features. |
| [`wbt_new_raster_from_base()`](../reference/wbt_new_raster_from_base.md) | Creates a new raster using a base image. |
| [`wbt_polygons_to_lines()`](../reference/wbt_polygons_to_lines.md) | Converts vector polygons to polylines. |
| [`wbt_print_geo_tiff_tags()`](../reference/wbt_print_geo_tiff_tags.md) | Prints the tags within a GeoTIFF. |
| [`wbt_raster_to_vector_lines()`](../reference/wbt_raster_to_vector_lines.md) | Converts a raster lines features into a vector of the POLYLINE shapetype |
| [`wbt_raster_to_vector_points()`](../reference/wbt_raster_to_vector_points.md) | Converts a raster dataset to a vector of the POINT shapetype. |
| [`wbt_raster_to_vector_polygons()`](../reference/wbt_raster_to_vector_polygons.md) | Converts a raster dataset to a vector of the POLYGON shapetype. |
| [`wbt_reinitialize_attribute_table()`](../reference/wbt_reinitialize_attribute_table.md) | Reinitializes a vector’s attribute table deleting all fields but the feature ID (FID). |
| [`wbt_remove_polygon_holes()`](../reference/wbt_remove_polygon_holes.md) | Removes holes within the features of a vector polygon file. |
| [`wbt_remove_raster_polygon_holes()`](../reference/wbt_remove_raster_polygon_holes.md) | Removes polygon holes, or ‘donut-holes’, from raster polygons. |
| [`wbt_set_nodata_value()`](../reference/wbt_set_nodata_value.md) | Assign the NoData value for an input image. |
| [`wbt_single_part_to_multi_part()`](../reference/wbt_single_part_to_multi_part.md) | Converts a vector file containing multi-part features into a vector containing only single-part features. |
| [`wbt_vector_lines_to_raster()`](../reference/wbt_vector_lines_to_raster.md) | Converts a vector containing polylines into a raster. |
| [`wbt_vector_points_to_raster()`](../reference/wbt_vector_points_to_raster.md) | Converts a vector containing points into a raster. |
| [`wbt_vector_polygons_to_raster()`](../reference/wbt_vector_polygons_to_raster.md) | Converts a vector containing polygons into a raster. |

Toolbox: Data Tools {.table}

#### Geomorphometric Analysis

| Function Name | Description |
|:---|:---|
| [`wbt_accumulation_curvature()`](../reference/wbt_accumulation_curvature.md) | This tool calculates accumulation curvature from an input DEM. |
| [`wbt_aspect()`](../reference/wbt_aspect.md) | Calculates an aspect raster from an input DEM. |
| [`wbt_assess_route()`](../reference/wbt_assess_route.md) | This tool assesses a route for slope, elevation, and visibility variation. |
| `wbt_average_horizon_distance()` | This tool calculates accumulation curvature from an input DEM. |
| [`wbt_average_normal_vector_angular_deviation()`](../reference/wbt_average_normal_vector_angular_deviation.md) | Calculates the circular variance of aspect at a scale for a DEM. |
| [`wbt_breakline_mapping()`](../reference/wbt_breakline_mapping.md) | This tool maps breaklines from an input DEM. |
| [`wbt_circular_variance_of_aspect()`](../reference/wbt_circular_variance_of_aspect.md) | Calculates the circular variance of aspect at a scale for a DEM. |
| [`wbt_contours_from_points()`](../reference/wbt_contours_from_points.md) | Creates a contour coverage from a set of input points. |
| [`wbt_contours_from_raster()`](../reference/wbt_contours_from_raster.md) | Derives a vector contour coverage from a raster surface. |
| `wbt_convergence_index()` | Calculates Qin et al. (2007) flow accumulation. |
| [`wbt_curvedness()`](../reference/wbt_curvedness.md) | This tool calculates curvedness from an input DEM. |
| [`wbt_dem_void_filling()`](../reference/wbt_dem_void_filling.md) | This tool can be used to fill the void areas of a DEM using another fill DEM data set. |
| [`wbt_dev_from_mean_elev()`](../reference/wbt_dev_from_mean_elev.md) | Calculates deviation from mean elevation. |
| [`wbt_difference_curvature()`](../reference/wbt_difference_curvature.md) | This tool calculates difference curvature from an input DEM. |
| [`wbt_diff_from_mean_elev()`](../reference/wbt_diff_from_mean_elev.md) | Calculates difference from mean elevation (equivalent to a high-pass filter). |
| [`wbt_directional_relief()`](../reference/wbt_directional_relief.md) | Calculates relief for cells in an input DEM for a specified direction. |
| [`wbt_downslope_index()`](../reference/wbt_downslope_index.md) | Calculates the Hjerdt et al. (2004) downslope index. |
| [`wbt_edge_density()`](../reference/wbt_edge_density.md) | Calculates the density of edges, or breaks-in-slope within DEMs. |
| [`wbt_elev_above_pit()`](../reference/wbt_elev_above_pit.md) | Calculate the elevation of each grid cell above the nearest downstream pit cell or grid edge cell. |
| [`wbt_elev_percentile()`](../reference/wbt_elev_percentile.md) | Calculates the elevation percentile raster from a DEM. |
| [`wbt_elev_relative_to_min_max()`](../reference/wbt_elev_relative_to_min_max.md) | Calculates the elevation of a location relative to the minimum and maximum elevations in a DEM. |
| [`wbt_elev_relative_to_watershed_min_max()`](../reference/wbt_elev_relative_to_watershed_min_max.md) | Calculates the elevation of a location relative to the minimum and maximum elevations in a watershed. |
| [`wbt_embankment_mapping()`](../reference/wbt_embankment_mapping.md) | Maps and/or removes road embankments from an input fine-resolution DEM. |
| [`wbt_exposure_towards_wind_flux()`](../reference/wbt_exposure_towards_wind_flux.md) | Evaluates hydrologic connectivity within a DEM |
| [`wbt_feature_preserving_smoothing()`](../reference/wbt_feature_preserving_smoothing.md) | Reduces short-scale variation in an input DEM using a modified Sun et al. (2007) algorithm. |
| [`wbt_fetch_analysis()`](../reference/wbt_fetch_analysis.md) | Performs an analysis of fetch or upwind distance to an obstacle. |
| [`wbt_fill_missing_data()`](../reference/wbt_fill_missing_data.md) | Fills NoData holes in a DEM. |
| [`wbt_find_ridges()`](../reference/wbt_find_ridges.md) | Identifies potential ridge and peak grid cells. |
| [`wbt_gaussian_curvature()`](../reference/wbt_gaussian_curvature.md) | Calculates a mean curvature raster from an input DEM. |
| [`wbt_gaussian_scale_space()`](../reference/wbt_gaussian_scale_space.md) | Uses the fast Gaussian approximation algorithm to produce scaled land-surface parameter measurements from an input DEM. |
| [`wbt_generating_function()`](../reference/wbt_generating_function.md) | This tool calculates generating function from an input DEM. |
| [`wbt_geomorphons()`](../reference/wbt_geomorphons.md) | Computes geomorphon patterns. |
| [`wbt_hillshade()`](../reference/wbt_hillshade.md) | Calculates a hillshade raster from an input DEM. |
| [`wbt_horizon_angle()`](../reference/wbt_horizon_angle.md) | Calculates horizon angle (maximum upwind slope) for each grid cell in an input DEM. |
| `wbt_horizon_area()` | Calculates horizon area, i.e., the area of the horizon polygon centered on each point in a DEM. |
| [`wbt_horizontal_excess_curvature()`](../reference/wbt_horizontal_excess_curvature.md) | This tool calculates horizontal excess curvature from an input DEM. |
| [`wbt_hypsometrically_tinted_hillshade()`](../reference/wbt_hypsometrically_tinted_hillshade.md) | Creates an colour shaded relief image from an input DEM. |
| [`wbt_hypsometric_analysis()`](../reference/wbt_hypsometric_analysis.md) | Calculates a hypsometric curve for one or more DEMs. |
| [`wbt_local_hypsometric_analysis()`](../reference/wbt_local_hypsometric_analysis.md) | This tool calculates a local, neighbourhood-based hypsometric integral raster. |
| [`wbt_local_quadratic_regression()`](../reference/wbt_local_quadratic_regression.md) | An implementation of the constrained quadratic regression algorithm using a flexible window size described in Wood (1996). |
| [`wbt_map_off_terrain_objects()`](../reference/wbt_map_off_terrain_objects.md) | Maps off-terrain objects in a digital elevation model (DEM). |
| [`wbt_max_anisotropy_dev()`](../reference/wbt_max_anisotropy_dev.md) | Calculates the maximum anisotropy (directionality) in elevation deviation over a range of spatial scales. |
| [`wbt_max_anisotropy_dev_signature()`](../reference/wbt_max_anisotropy_dev_signature.md) | Calculates the anisotropy in deviation from mean for points over a range of spatial scales. |
| [`wbt_max_branch_length()`](../reference/wbt_max_branch_length.md) | Lindsay and Seibert’s (2013) branch length index is used to map drainage divides or ridge lines. |
| [`wbt_max_difference_from_mean()`](../reference/wbt_max_difference_from_mean.md) | Calculates the maximum difference from mean elevation over a range of spatial scales. |
| [`wbt_max_downslope_elev_change()`](../reference/wbt_max_downslope_elev_change.md) | Calculates the maximum downslope change in elevation between a grid cell and its eight downslope neighbors. |
| [`wbt_max_elevation_deviation()`](../reference/wbt_max_elevation_deviation.md) | Calculates the maximum elevation deviation over a range of spatial scales. |
| [`wbt_max_elev_dev_signature()`](../reference/wbt_max_elev_dev_signature.md) | Calculates the maximum elevation deviation over a range of spatial scales and for a set of points. |
| [`wbt_maximal_curvature()`](../reference/wbt_maximal_curvature.md) | Calculates a mean curvature raster from an input DEM. |
| [`wbt_max_upslope_elev_change()`](../reference/wbt_max_upslope_elev_change.md) | Calculates the maximum upslope change in elevation between a grid cell and its eight downslope neighbors. |
| [`wbt_mean_curvature()`](../reference/wbt_mean_curvature.md) | Calculates a mean curvature raster from an input DEM. |
| [`wbt_min_downslope_elev_change()`](../reference/wbt_min_downslope_elev_change.md) | Calculates the minimum downslope change in elevation between a grid cell and its eight downslope neighbors. |
| [`wbt_minimal_curvature()`](../reference/wbt_minimal_curvature.md) | Calculates a mean curvature raster from an input DEM. |
| [`wbt_multidirectional_hillshade()`](../reference/wbt_multidirectional_hillshade.md) | Calculates a multi-direction hillshade raster from an input DEM. |
| [`wbt_multiscale_curvatures()`](../reference/wbt_multiscale_curvatures.md) | This tool calculates several multiscale curvatures and curvature-based indices from an input DEM. |
| [`wbt_multiscale_elevation_percentile()`](../reference/wbt_multiscale_elevation_percentile.md) | Calculates surface roughness over a range of spatial scales. |
| [`wbt_multiscale_roughness()`](../reference/wbt_multiscale_roughness.md) | Calculates surface roughness over a range of spatial scales. |
| [`wbt_multiscale_roughness_signature()`](../reference/wbt_multiscale_roughness_signature.md) | Calculates the surface roughness for points over a range of spatial scales. |
| [`wbt_multiscale_std_dev_normals()`](../reference/wbt_multiscale_std_dev_normals.md) | Calculates surface roughness over a range of spatial scales. |
| [`wbt_multiscale_std_dev_normals_signature()`](../reference/wbt_multiscale_std_dev_normals_signature.md) | Calculates the surface roughness for points over a range of spatial scales. |
| [`wbt_multiscale_topographic_position_image()`](../reference/wbt_multiscale_topographic_position_image.md) | Creates a multiscale topographic position image from three DEVmax rasters of differing spatial scale ranges. |
| [`wbt_num_downslope_neighbours()`](../reference/wbt_num_downslope_neighbours.md) | Calculates the number of downslope neighbours to each grid cell in a DEM. |
| [`wbt_num_upslope_neighbours()`](../reference/wbt_num_upslope_neighbours.md) | Calculates the number of upslope neighbours to each grid cell in a DEM. |
| [`wbt_openness()`](../reference/wbt_openness.md) | This tool calculates the topographic openness index from an input DEM. |
| [`wbt_pennock_landform_class()`](../reference/wbt_pennock_landform_class.md) | Classifies hillslope zones based on slope, profile curvature, and plan curvature. |
| [`wbt_percent_elev_range()`](../reference/wbt_percent_elev_range.md) | Calculates percent of elevation range from a DEM. |
| [`wbt_plan_curvature()`](../reference/wbt_plan_curvature.md) | Calculates a plan (contour) curvature raster from an input DEM. |
| [`wbt_profile()`](../reference/wbt_profile.md) | Plots profiles from digital surface models. |
| [`wbt_profile_curvature()`](../reference/wbt_profile_curvature.md) | Calculates a profile curvature raster from an input DEM. |
| [`wbt_relative_aspect()`](../reference/wbt_relative_aspect.md) | Calculates relative aspect (relative to a user-specified direction) from an input DEM. |
| [`wbt_relative_topographic_position()`](../reference/wbt_relative_topographic_position.md) | Calculates the relative topographic position index from a DEM. |
| [`wbt_remove_off_terrain_objects()`](../reference/wbt_remove_off_terrain_objects.md) | Removes off-terrain objects from a raster digital elevation model (DEM). |
| [`wbt_ring_curvature()`](../reference/wbt_ring_curvature.md) | This tool calculates ring curvature from an input DEM. |
| [`wbt_rotor()`](../reference/wbt_rotor.md) | This tool calculates rotor from an input DEM. |
| [`wbt_ruggedness_index()`](../reference/wbt_ruggedness_index.md) | Calculates the Riley et al.’s (1999) terrain ruggedness index from an input DEM. |
| [`wbt_sediment_transport_index()`](../reference/wbt_sediment_transport_index.md) | Calculates the sediment transport index. |
| [`wbt_shadow_animation()`](../reference/wbt_shadow_animation.md) | This tool creates an animated GIF of shadows based on an input DEM. |
| [`wbt_shadow_image()`](../reference/wbt_shadow_image.md) | This tool creates a raster of shadow areas based on an input DEM. |
| [`wbt_shape_index()`](../reference/wbt_shape_index.md) | This tool calculates the shape index from an input DEM. |
| `wbt_skyline_analysis()` | Performs a skyline analysis for one or more observation points based on the terrain of an underlying DEM. |
| `wbt_sky_view_factor()` | Calculates the sky-view factor (SVF) from an input digital elevation model or digital surface model. |
| [`wbt_slope()`](../reference/wbt_slope.md) | Calculates a slope raster from an input DEM. |
| [`wbt_slope_vs_aspect_plot()`](../reference/wbt_slope_vs_aspect_plot.md) | This tool creates a slope-aspect relation plot from an input DEM. |
| [`wbt_slope_vs_elevation_plot()`](../reference/wbt_slope_vs_elevation_plot.md) | Creates a slope vs. elevation plot for one or more DEMs. |
| [`wbt_smooth_vegetation_residual()`](../reference/wbt_smooth_vegetation_residual.md) | This tool can smooth the residual roughness due to vegetation cover in LiDAR DEMs. |
| [`wbt_spherical_std_dev_of_normals()`](../reference/wbt_spherical_std_dev_of_normals.md) | Calculates the spherical standard deviation of surface normals for a DEM. |
| [`wbt_standard_deviation_of_slope()`](../reference/wbt_standard_deviation_of_slope.md) | Calculates the standard deviation of slope from an input DEM. |
| [`wbt_stream_power_index()`](../reference/wbt_stream_power_index.md) | Calculates the relative stream power index. |
| [`wbt_surface_area_ratio()`](../reference/wbt_surface_area_ratio.md) | Calculates a the surface area ratio of each grid cell in an input DEM. |
| [`wbt_tangential_curvature()`](../reference/wbt_tangential_curvature.md) | Calculates a tangential curvature raster from an input DEM. |
| [`wbt_time_in_daylight()`](../reference/wbt_time_in_daylight.md) | Calculates the proportion of time a location is not within an area of shadow. |
| `wbt_topographic_hachures()` | Derives topographic hachures from a raster surface. |
| [`wbt_topographic_position_animation()`](../reference/wbt_topographic_position_animation.md) | This tool creates an animated GIF of multi-scale local topographic position (elevation deviation). |
| [`wbt_topo_render()`](../reference/wbt_topo_render.md) | This tool creates a pseudo-3D rendering from an input DEM, for the purpose of effective topographic visualization. |
| [`wbt_total_curvature()`](../reference/wbt_total_curvature.md) | Calculates a total curvature raster from an input DEM. |
| [`wbt_unsphericity()`](../reference/wbt_unsphericity.md) | This tool calculates the unsphericity curvature from an input DEM. |
| [`wbt_vertical_excess_curvature()`](../reference/wbt_vertical_excess_curvature.md) | This tool calculates vertical excess curvature from an input DEM. |
| [`wbt_viewshed()`](../reference/wbt_viewshed.md) | Identifies the viewshed for a point or set of points. |
| [`wbt_visibility_index()`](../reference/wbt_visibility_index.md) | Estimates the relative visibility of sites in a DEM. |
| [`wbt_wetness_index()`](../reference/wbt_wetness_index.md) | Calculates the topographic wetness index, Ln(A / tan(slope)). |

Toolbox: Geomorphometric Analysis {.table}

#### GIS Analysis

| Function Name | Description |
|:---|:---|
| [`wbt_aggregate_raster()`](../reference/wbt_aggregate_raster.md) | Aggregates a raster to a lower resolution. |
| [`wbt_average_overlay()`](../reference/wbt_average_overlay.md) | Calculates the average for each grid cell from a group of raster images. |
| [`wbt_block_maximum_gridding()`](../reference/wbt_block_maximum_gridding.md) | Creates a raster grid based on a set of vector points and assigns grid values using a block maximum scheme. |
| [`wbt_block_minimum_gridding()`](../reference/wbt_block_minimum_gridding.md) | Creates a raster grid based on a set of vector points and assigns grid values using a block minimum scheme. |
| [`wbt_boundary_shape_complexity()`](../reference/wbt_boundary_shape_complexity.md) | Calculates the complexity of the boundaries of raster polygons. |
| [`wbt_buffer_raster()`](../reference/wbt_buffer_raster.md) | Maps a distance-based buffer around each non-background (non-zero/non-nodata) grid cell in an input image. |
| [`wbt_centroid()`](../reference/wbt_centroid.md) | Calculates the centroid, or average location, of raster polygon objects. |
| [`wbt_centroid_vector()`](../reference/wbt_centroid_vector.md) | Identifies the centroid point of a vector polyline or polygon feature or a group of vector points. |
| [`wbt_clip()`](../reference/wbt_clip.md) | Extract all the features, or parts of features, that overlap with the features of the clip vector. |
| [`wbt_clip_raster_to_polygon()`](../reference/wbt_clip_raster_to_polygon.md) | Clips a raster to a vector polygon. |
| [`wbt_clump()`](../reference/wbt_clump.md) | Groups cells that form discrete areas, assigning them unique identifiers. |
| [`wbt_compactness_ratio()`](../reference/wbt_compactness_ratio.md) | Calculates the compactness ratio (A/P), a measure of shape complexity, for vector polygons. |
| [`wbt_construct_vector_tin()`](../reference/wbt_construct_vector_tin.md) | Creates a vector triangular irregular network (TIN) for a set of vector points. |
| [`wbt_cost_allocation()`](../reference/wbt_cost_allocation.md) | Identifies the source cell to which each grid cell is connected by a least-cost pathway in a cost-distance analysis. |
| [`wbt_cost_distance()`](../reference/wbt_cost_distance.md) | Performs cost-distance accumulation on a cost surface and a group of source cells. |
| [`wbt_cost_pathway()`](../reference/wbt_cost_pathway.md) | Performs cost-distance pathway analysis using a series of destination grid cells. |
| [`wbt_count_if()`](../reference/wbt_count_if.md) | Counts the number of occurrences of a specified value in a cell-stack of rasters. |
| [`wbt_create_hexagonal_vector_grid()`](../reference/wbt_create_hexagonal_vector_grid.md) | Creates a hexagonal vector grid. |
| [`wbt_create_plane()`](../reference/wbt_create_plane.md) | Creates a raster image based on the equation for a simple plane. |
| [`wbt_create_rectangular_vector_grid()`](../reference/wbt_create_rectangular_vector_grid.md) | Creates a rectangular vector grid. |
| `wbt_deviation_from_regional_direction()` | Calculates the deviation of vector polygons from the regional average direction. |
| [`wbt_difference()`](../reference/wbt_difference.md) | Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features. |
| [`wbt_dissolve()`](../reference/wbt_dissolve.md) | Removes the interior, or shared, boundaries within a vector polygon coverage. |
| [`wbt_edge_proportion()`](../reference/wbt_edge_proportion.md) | Calculate the proportion of cells in a raster polygon that are edge cells. |
| [`wbt_eliminate_coincident_points()`](../reference/wbt_eliminate_coincident_points.md) | Removes any coincident, or nearly coincident, points from a vector points file. |
| [`wbt_elongation_ratio()`](../reference/wbt_elongation_ratio.md) | Calculates the elongation ratio for vector polygons. |
| [`wbt_erase()`](../reference/wbt_erase.md) | Removes all the features, or parts of features, that overlap with the features of the erase vector polygon. |
| [`wbt_erase_polygon_from_raster()`](../reference/wbt_erase_polygon_from_raster.md) | Erases (cuts out) a vector polygon from a raster. |
| [`wbt_euclidean_allocation()`](../reference/wbt_euclidean_allocation.md) | Assigns grid cells in the output raster the value of the nearest target cell in the input image, measured by the Shih and Wu (2004) Euclidean distance transform. |
| [`wbt_euclidean_distance()`](../reference/wbt_euclidean_distance.md) | Calculates the Shih and Wu (2004) Euclidean distance transform. |
| [`wbt_extend_vector_lines()`](../reference/wbt_extend_vector_lines.md) | Extends vector lines by a specified distance. |
| `wbt_extract_by_attribute()` | Extracts features from an input vector into an output file based on attribute properties. |
| [`wbt_extract_nodes()`](../reference/wbt_extract_nodes.md) | Converts vector lines or polygons into vertex points. |
| [`wbt_extract_raster_values_at_points()`](../reference/wbt_extract_raster_values_at_points.md) | Extracts the values of raster(s) at vector point locations. |
| [`wbt_filter_raster_features_by_area()`](../reference/wbt_filter_raster_features_by_area.md) | Removes small-area features from a raster. |
| [`wbt_find_lowest_or_highest_points()`](../reference/wbt_find_lowest_or_highest_points.md) | Locates the lowest and/or highest valued cells in a raster. |
| [`wbt_find_patch_or_class_edge_cells()`](../reference/wbt_find_patch_or_class_edge_cells.md) | Finds all cells located on the edge of patch or class features. |
| [`wbt_heat_map()`](../reference/wbt_heat_map.md) | Calculates a heat map, or kernel density estimation (KDE), for an input point set. |
| [`wbt_highest_position()`](../reference/wbt_highest_position.md) | Identifies the stack position of the maximum value within a raster stack on a cell-by-cell basis. |
| [`wbt_hole_proportion()`](../reference/wbt_hole_proportion.md) | Calculates the proportion of the total area of a polygon’s holes relative to the area of the polygon’s hull. |
| [`wbt_idw_interpolation()`](../reference/wbt_idw_interpolation.md) | Interpolates vector points into a raster surface using an inverse-distance weighted scheme. |
| [`wbt_intersect()`](../reference/wbt_intersect.md) | Identifies the parts of features in common between two input vector layers. |
| [`wbt_layer_footprint()`](../reference/wbt_layer_footprint.md) | Creates a vector polygon footprint of the area covered by a raster grid or vector layer. |
| [`wbt_linearity_index()`](../reference/wbt_linearity_index.md) | Calculates the linearity index for vector polygons. |
| [`wbt_line_intersections()`](../reference/wbt_line_intersections.md) | Identifies points where the features of two vector line layers intersect. |
| [`wbt_lowest_position()`](../reference/wbt_lowest_position.md) | Identifies the stack position of the minimum value within a raster stack on a cell-by-cell basis. |
| [`wbt_max_absolute_overlay()`](../reference/wbt_max_absolute_overlay.md) | Evaluates the maximum absolute value for each grid cell from a stack of input rasters. |
| [`wbt_max_overlay()`](../reference/wbt_max_overlay.md) | Evaluates the maximum value for each grid cell from a stack of input rasters. |
| [`wbt_medoid()`](../reference/wbt_medoid.md) | Calculates the medoid for a series of vector features contained in a shapefile. |
| [`wbt_merge_line_segments()`](../reference/wbt_merge_line_segments.md) | Merges vector line segments into larger features. |
| [`wbt_min_absolute_overlay()`](../reference/wbt_min_absolute_overlay.md) | Evaluates the minimum absolute value for each grid cell from a stack of input rasters. |
| [`wbt_minimum_bounding_box()`](../reference/wbt_minimum_bounding_box.md) | Creates a vector minimum bounding rectangle around vector features. |
| [`wbt_minimum_bounding_circle()`](../reference/wbt_minimum_bounding_circle.md) | Delineates the minimum bounding circle (i.e. smallest enclosing circle) for a group of vectors. |
| [`wbt_minimum_bounding_envelope()`](../reference/wbt_minimum_bounding_envelope.md) | Creates a vector axis-aligned minimum bounding rectangle (envelope) around vector features. |
| [`wbt_minimum_convex_hull()`](../reference/wbt_minimum_convex_hull.md) | Creates a vector convex polygon around vector features. |
| [`wbt_min_overlay()`](../reference/wbt_min_overlay.md) | Evaluates the minimum value for each grid cell from a stack of input rasters. |
| [`wbt_multiply_overlay()`](../reference/wbt_multiply_overlay.md) | Calculates the sum for each grid cell from a group of raster images. |
| [`wbt_narrowness_index()`](../reference/wbt_narrowness_index.md) | Calculates the narrowness of raster polygons. |
| [`wbt_natural_neighbour_interpolation()`](../reference/wbt_natural_neighbour_interpolation.md) | Creates a raster grid based on Sibson’s natural neighbour method. |
| [`wbt_nearest_neighbour_gridding()`](../reference/wbt_nearest_neighbour_gridding.md) | Creates a raster grid based on a set of vector points and assigns grid values using the nearest neighbour. |
| [`wbt_patch_orientation()`](../reference/wbt_patch_orientation.md) | Calculates the orientation of vector polygons. |
| [`wbt_percent_equal_to()`](../reference/wbt_percent_equal_to.md) | Calculates the percentage of a raster stack that have cell values equal to an input on a cell-by-cell basis. |
| [`wbt_percent_greater_than()`](../reference/wbt_percent_greater_than.md) | Calculates the percentage of a raster stack that have cell values greater than an input on a cell-by-cell basis. |
| [`wbt_percent_less_than()`](../reference/wbt_percent_less_than.md) | Calculates the percentage of a raster stack that have cell values less than an input on a cell-by-cell basis. |
| [`wbt_perimeter_area_ratio()`](../reference/wbt_perimeter_area_ratio.md) | Calculates the perimeter-area ratio of vector polygons. |
| [`wbt_pick_from_list()`](../reference/wbt_pick_from_list.md) | Outputs the value from a raster stack specified by a position raster. |
| [`wbt_polygon_area()`](../reference/wbt_polygon_area.md) | Calculates the area of vector polygons. |
| [`wbt_polygonize()`](../reference/wbt_polygonize.md) | Creates a polygon layer from two or more intersecting line features contained in one or more input vector line files. |
| [`wbt_polygon_long_axis()`](../reference/wbt_polygon_long_axis.md) | Used to map the long axis of polygon features. |
| [`wbt_polygon_perimeter()`](../reference/wbt_polygon_perimeter.md) | Calculates the perimeter of vector polygons. |
| [`wbt_polygon_short_axis()`](../reference/wbt_polygon_short_axis.md) | Used to map the short axis of polygon features. |
| [`wbt_radial_basis_function_interpolation()`](../reference/wbt_radial_basis_function_interpolation.md) | Interpolates vector points into a raster surface using a radial basis function scheme. |
| [`wbt_radius_of_gyration()`](../reference/wbt_radius_of_gyration.md) | Calculates the distance of cells from their polygon’s centroid. |
| [`wbt_raster_area()`](../reference/wbt_raster_area.md) | Calculates the area of polygons or classes within a raster image. |
| [`wbt_raster_cell_assignment()`](../reference/wbt_raster_cell_assignment.md) | Assign row or column number to cells. |
| [`wbt_raster_perimeter()`](../reference/wbt_raster_perimeter.md) | Calculates the perimeters of polygons or classes within a raster image. |
| [`wbt_reclass()`](../reference/wbt_reclass.md) | Reclassifies the values in a raster image. |
| [`wbt_reclass_equal_interval()`](../reference/wbt_reclass_equal_interval.md) | Reclassifies the values in a raster image based on equal-ranges. |
| [`wbt_reclass_from_file()`](../reference/wbt_reclass_from_file.md) | Reclassifies the values in a raster image using reclass ranges in a text file. |
| [`wbt_related_circumscribing_circle()`](../reference/wbt_related_circumscribing_circle.md) | Calculates the related circumscribing circle of vector polygons. |
| [`wbt_shape_complexity_index()`](../reference/wbt_shape_complexity_index.md) | Calculates overall polygon shape complexity or irregularity. |
| [`wbt_shape_complexity_index_raster()`](../reference/wbt_shape_complexity_index_raster.md) | Calculates the complexity of raster polygons or classes. |
| [`wbt_smooth_vectors()`](../reference/wbt_smooth_vectors.md) | Smooths a vector coverage of either a POLYLINE or POLYGON base ShapeType. |
| [`wbt_split_vector_lines()`](../reference/wbt_split_vector_lines.md) | Used to split a vector line coverage into even-lengthed segments. |
| [`wbt_split_with_lines()`](../reference/wbt_split_with_lines.md) | Splits the lines or polygons in one layer using the lines in another layer. |
| [`wbt_sum_overlay()`](../reference/wbt_sum_overlay.md) | Calculates the sum for each grid cell from a group of raster images. |
| [`wbt_symmetrical_difference()`](../reference/wbt_symmetrical_difference.md) | Outputs the features that occur in one of the two vector inputs but not both, i.e. no overlapping features. |
| [`wbt_tin_gridding()`](../reference/wbt_tin_gridding.md) | Creates a raster grid based on a triangular irregular network (TIN) fitted to vector points. |
| [`wbt_travelling_salesman_problem()`](../reference/wbt_travelling_salesman_problem.md) | Finds approximate solutions to travelling salesman problems, the goal of which is to identify the shortest route connecting a set of locations. |
| [`wbt_union()`](../reference/wbt_union.md) | Splits vector layers at their overlaps, creating a layer containing all the portions from both input and overlay layers. |
| [`wbt_update_nodata_cells()`](../reference/wbt_update_nodata_cells.md) | Replaces the NoData values in an input raster with the corresponding values contained in a second update layer. |
| [`wbt_vector_hex_binning()`](../reference/wbt_vector_hex_binning.md) | Hex-bins a set of vector points. |
| [`wbt_voronoi_diagram()`](../reference/wbt_voronoi_diagram.md) | Creates a vector Voronoi diagram for a set of vector points. |
| [`wbt_weighted_overlay()`](../reference/wbt_weighted_overlay.md) | Performs a weighted sum on multiple input rasters after converting each image to a common scale. The tool performs a multi-criteria evaluation (MCE). |
| [`wbt_weighted_sum()`](../reference/wbt_weighted_sum.md) | Performs a weighted-sum overlay on multiple input raster images. |

Toolbox: GIS Analysis {.table}

#### Hydrological Analysis

| Function Name | Description |
|:---|:---|
| [`wbt_average_flowpath_slope()`](../reference/wbt_average_flowpath_slope.md) | Measures the average slope gradient from each grid cell to all upslope divide cells. |
| [`wbt_average_upslope_flowpath_length()`](../reference/wbt_average_upslope_flowpath_length.md) | Measures the average length of all upslope flowpaths draining each grid cell. |
| [`wbt_basins()`](../reference/wbt_basins.md) | Identifies drainage basins that drain to the DEM edge. |
| [`wbt_breach_depressions()`](../reference/wbt_breach_depressions.md) | Breaches all of the depressions in a DEM using Lindsay’s (2016) algorithm. This should be preferred over depression filling in most cases. |
| [`wbt_breach_depressions_least_cost()`](../reference/wbt_breach_depressions_least_cost.md) | Breaches the depressions in a DEM using a least-cost pathway method. |
| [`wbt_breach_single_cell_pits()`](../reference/wbt_breach_single_cell_pits.md) | Removes single-cell pits from an input DEM by breaching. |
| [`wbt_burn_streams_at_roads()`](../reference/wbt_burn_streams_at_roads.md) | Burns-in streams at the sites of road embankments. |
| [`wbt_d8_flow_accumulation()`](../reference/wbt_d8_flow_accumulation.md) | Calculates a D8 flow accumulation raster from an input DEM or flow pointer. |
| [`wbt_d8_mass_flux()`](../reference/wbt_d8_mass_flux.md) | Performs a D8 mass flux calculation. |
| [`wbt_d8_pointer()`](../reference/wbt_d8_pointer.md) | Calculates a D8 flow pointer raster from an input DEM. |
| [`wbt_depth_in_sink()`](../reference/wbt_depth_in_sink.md) | Measures the depth of sinks (depressions) in a DEM. |
| [`wbt_depth_to_water()`](../reference/wbt_depth_to_water.md) | This tool calculates cartographic depth-to-water (DTW) index. |
| [`wbt_d_inf_flow_accumulation()`](../reference/wbt_d_inf_flow_accumulation.md) | Calculates a D-infinity flow accumulation raster from an input DEM. |
| [`wbt_d_inf_mass_flux()`](../reference/wbt_d_inf_mass_flux.md) | Performs a D-infinity mass flux calculation. |
| [`wbt_d_inf_pointer()`](../reference/wbt_d_inf_pointer.md) | Calculates a D-infinity flow pointer (flow direction) raster from an input DEM. |
| [`wbt_downslope_distance_to_stream()`](../reference/wbt_downslope_distance_to_stream.md) | Measures distance to the nearest downslope stream cell. |
| [`wbt_downslope_flowpath_length()`](../reference/wbt_downslope_flowpath_length.md) | Calculates the downslope flowpath length from each cell to basin outlet. |
| [`wbt_edge_contamination()`](../reference/wbt_edge_contamination.md) | Identifies grid cells within an input DEM that may be impacted by edge contamination for hydrological applications. |
| [`wbt_elevation_above_stream()`](../reference/wbt_elevation_above_stream.md) | Calculates the elevation of cells above the nearest downslope stream cell. |
| [`wbt_elevation_above_stream_euclidean()`](../reference/wbt_elevation_above_stream_euclidean.md) | Calculates the elevation of cells above the nearest (Euclidean distance) stream cell. |
| [`wbt_fd8_flow_accumulation()`](../reference/wbt_fd8_flow_accumulation.md) | Calculates an FD8 flow accumulation raster from an input DEM. |
| [`wbt_fd8_pointer()`](../reference/wbt_fd8_pointer.md) | Calculates an FD8 flow pointer raster from an input DEM. |
| [`wbt_fill_burn()`](../reference/wbt_fill_burn.md) | Burns streams into a DEM using the FillBurn (Saunders, 1999) method. |
| [`wbt_fill_depressions()`](../reference/wbt_fill_depressions.md) | Fills all of the depressions in a DEM. Depression breaching should be preferred in most cases. |
| [`wbt_fill_depressions_planchon_and_darboux()`](../reference/wbt_fill_depressions_planchon_and_darboux.md) | Fills all of the depressions in a DEM using the Planchon and Darboux (2002) method. |
| [`wbt_fill_depressions_wang_and_liu()`](../reference/wbt_fill_depressions_wang_and_liu.md) | Fills all of the depressions in a DEM using the Wang and Liu (2006) method. Depression breaching should be preferred in most cases. |
| [`wbt_fill_single_cell_pits()`](../reference/wbt_fill_single_cell_pits.md) | Raises pit cells to the elevation of their lowest neighbour. |
| [`wbt_find_no_flow_cells()`](../reference/wbt_find_no_flow_cells.md) | Finds grid cells with no downslope neighbours. |
| [`wbt_find_parallel_flow()`](../reference/wbt_find_parallel_flow.md) | Finds areas of parallel flow in D8 flow direction rasters. |
| [`wbt_flatten_lakes()`](../reference/wbt_flatten_lakes.md) | Flattens lake polygons in a raster DEM. |
| [`wbt_flood_order()`](../reference/wbt_flood_order.md) | Assigns each DEM grid cell its order in the sequence of inundations that are encountered during a search starting from the edges, moving inward at increasing elevations. |
| [`wbt_flow_accumulation_full_workflow()`](../reference/wbt_flow_accumulation_full_workflow.md) | Resolves all of the depressions in a DEM, outputting a breached DEM, an aspect-aligned non-divergent flow pointer, and a flow accumulation raster. |
| [`wbt_flow_length_diff()`](../reference/wbt_flow_length_diff.md) | Calculates the local maximum absolute difference in downslope flowpath length, useful in mapping drainage divides and ridges. |
| [`wbt_hillslopes()`](../reference/wbt_hillslopes.md) | Identifies the individual hillslopes draining to each link in a stream network. |
| [`wbt_hydrologic_connectivity()`](../reference/wbt_hydrologic_connectivity.md) | This tool evaluates hydrologic connectivity within a DEM |
| [`wbt_impoundment_size_index()`](../reference/wbt_impoundment_size_index.md) | Calculates the impoundment size resulting from damming a DEM. |
| [`wbt_insert_dams()`](../reference/wbt_insert_dams.md) | Calculates the impoundment size resulting from damming a DEM. |
| [`wbt_isobasins()`](../reference/wbt_isobasins.md) | Divides a landscape into nearly equal sized drainage basins (i.e. watersheds). |
| [`wbt_jenson_snap_pour_points()`](../reference/wbt_jenson_snap_pour_points.md) | Moves outlet points used to specify points of interest in a watershedding operation to the nearest stream cell. |
| [`wbt_longest_flowpath()`](../reference/wbt_longest_flowpath.md) | Delineates the longest flowpaths for a group of subbasins or watersheds. |
| [`wbt_low_points_on_headwater_divides()`](../reference/wbt_low_points_on_headwater_divides.md) | This tool locates saddle points along ridges within a digital elevation model (DEM) |
| [`wbt_max_upslope_flowpath_length()`](../reference/wbt_max_upslope_flowpath_length.md) | Measures the maximum length of all upslope flowpaths draining each grid cell. |
| [`wbt_max_upslope_value()`](../reference/wbt_max_upslope_value.md) | Calculates the maximum upslope value from an input values raster along flowpaths. |
| [`wbt_md_inf_flow_accumulation()`](../reference/wbt_md_inf_flow_accumulation.md) | Calculates an FD8 flow accumulation raster from an input DEM. |
| [`wbt_num_inflowing_neighbours()`](../reference/wbt_num_inflowing_neighbours.md) | Computes the number of inflowing neighbours to each cell in an input DEM based on the D8 algorithm. |
| [`wbt_qin_flow_accumulation()`](../reference/wbt_qin_flow_accumulation.md) | Calculates Qin et al. (2007) flow accumulation. |
| [`wbt_quinn_flow_accumulation()`](../reference/wbt_quinn_flow_accumulation.md) | Calculates Quinn et al. (1995) flow accumulation. |
| [`wbt_raise_walls()`](../reference/wbt_raise_walls.md) | Raises walls in a DEM along a line or around a polygon, e.g. a watershed. |
| [`wbt_rho8_flow_accumulation()`](../reference/wbt_rho8_flow_accumulation.md) | Calculates Fairfield and Leymarie (1991) flow accumulation. |
| [`wbt_rho8_pointer()`](../reference/wbt_rho8_pointer.md) | Calculates a stochastic Rho8 flow pointer raster from an input DEM. |
| [`wbt_river_centerlines()`](../reference/wbt_river_centerlines.md) | Maps river centerlines from an input water raster. |
| [`wbt_sink()`](../reference/wbt_sink.md) | Identifies the depressions in a DEM, giving each feature a unique identifier. |
| [`wbt_snap_pour_points()`](../reference/wbt_snap_pour_points.md) | Moves outlet points used to specify points of interest in a watershedding operation to the cell with the highest flow accumulation in its neighbourhood. |
| [`wbt_stochastic_depression_analysis()`](../reference/wbt_stochastic_depression_analysis.md) | Performs a stochastic analysis of depressions within a DEM. |
| [`wbt_strahler_order_basins()`](../reference/wbt_strahler_order_basins.md) | Identifies Strahler-order basins from an input stream network. |
| [`wbt_subbasins()`](../reference/wbt_subbasins.md) | Identifies the catchments, or sub-basin, draining to each link in a stream network. |
| `wbt_topological_breach_burn()` | This tool burns streams into a DEM using the topological breach-burn method of Lindsay (2016). |
| [`wbt_trace_downslope_flowpaths()`](../reference/wbt_trace_downslope_flowpaths.md) | Traces downslope flowpaths from one or more target sites (i.e. seed points). |
| [`wbt_unnest_basins()`](../reference/wbt_unnest_basins.md) | Extract whole watersheds for a set of outlet points. |
| [`wbt_upslope_depression_storage()`](../reference/wbt_upslope_depression_storage.md) | Estimates the average upslope depression storage depth. |
| [`wbt_watershed()`](../reference/wbt_watershed.md) | Identifies the watershed, or drainage basin, draining to a set of target cells. |

Toolbox: Hydrological Analysis {.table}

#### Image Processing Tools

| Function Name | Description |
|:---|:---|
| [`wbt_adaptive_filter()`](../reference/wbt_adaptive_filter.md) | Performs an adaptive filter on an image. |
| [`wbt_balance_contrast_enhancement()`](../reference/wbt_balance_contrast_enhancement.md) | Performs a balance contrast enhancement on a colour-composite image of multispectral data. |
| [`wbt_bilateral_filter()`](../reference/wbt_bilateral_filter.md) | A bilateral filter is an edge-preserving smoothing filter introduced by Tomasi and Manduchi (1998). |
| [`wbt_canny_edge_detection()`](../reference/wbt_canny_edge_detection.md) | This tool performs a Canny edge-detection filter on an input image. |
| [`wbt_change_vector_analysis()`](../reference/wbt_change_vector_analysis.md) | Performs a change vector analysis on a two-date multi-spectral dataset. |
| [`wbt_closing()`](../reference/wbt_closing.md) | A closing is a mathematical morphology operation involving an erosion (min filter) of a dilation (max filter) set. |
| [`wbt_conservative_smoothing_filter()`](../reference/wbt_conservative_smoothing_filter.md) | Performs a conservative-smoothing filter on an image. |
| [`wbt_corner_detection()`](../reference/wbt_corner_detection.md) | Identifies corner patterns in boolean images using hit-and-miss pattern matching. |
| [`wbt_correct_vignetting()`](../reference/wbt_correct_vignetting.md) | Corrects the darkening of images towards corners. |
| [`wbt_create_colour_composite()`](../reference/wbt_create_colour_composite.md) | Creates a colour-composite image from three bands of multispectral imagery. |
| [`wbt_diff_of_gaussian_filter()`](../reference/wbt_diff_of_gaussian_filter.md) | Performs a Difference of Gaussian (DoG) filter on an image. |
| [`wbt_direct_decorrelation_stretch()`](../reference/wbt_direct_decorrelation_stretch.md) | Performs a direct decorrelation stretch enhancement on a colour-composite image of multispectral data. |
| [`wbt_diversity_filter()`](../reference/wbt_diversity_filter.md) | Assigns each cell in the output grid the number of different values in a moving window centred on each grid cell in the input raster. |
| [`wbt_edge_preserving_mean_filter()`](../reference/wbt_edge_preserving_mean_filter.md) | Performs a simple edge-preserving mean filter on an input image. |
| [`wbt_emboss_filter()`](../reference/wbt_emboss_filter.md) | Performs an emboss filter on an image, similar to a hillshade operation. |
| [`wbt_evaluate_training_sites()`](../reference/wbt_evaluate_training_sites.md) | This tool can be used to inspect the overlap in spectral signatures of training sites for various classes. |
| [`wbt_fast_almost_gaussian_filter()`](../reference/wbt_fast_almost_gaussian_filter.md) | Performs a fast approximate Gaussian filter on an image. |
| [`wbt_flip_image()`](../reference/wbt_flip_image.md) | Reflects an image in the vertical or horizontal axis. |
| [`wbt_gamma_correction()`](../reference/wbt_gamma_correction.md) | Performs a gamma correction on an input images. |
| [`wbt_gaussian_contrast_stretch()`](../reference/wbt_gaussian_contrast_stretch.md) | Performs a Gaussian contrast stretch on input images. |
| [`wbt_gaussian_filter()`](../reference/wbt_gaussian_filter.md) | Performs a Gaussian filter on an image. |
| [`wbt_generalize_classified_raster()`](../reference/wbt_generalize_classified_raster.md) | Generalizes a raster containing class or object features by removing small features. |
| [`wbt_generalize_with_similarity()`](../reference/wbt_generalize_with_similarity.md) | Generalizes a raster containing class or object features by removing small features using similarity criteria of neighbouring features. |
| [`wbt_high_pass_bilateral_filter()`](../reference/wbt_high_pass_bilateral_filter.md) | Performs a high-pass bilateral filter, by differencing an input image by the bilateral filter by Tomasi and Manduchi (1998). |
| [`wbt_high_pass_filter()`](../reference/wbt_high_pass_filter.md) | Performs a high-pass filter on an input image. |
| [`wbt_high_pass_median_filter()`](../reference/wbt_high_pass_median_filter.md) | Performs a high pass median filter on an input image. |
| [`wbt_histogram_equalization()`](../reference/wbt_histogram_equalization.md) | Performs a histogram equalization contrast enhancement on an image. |
| [`wbt_histogram_matching()`](../reference/wbt_histogram_matching.md) | Alters the statistical distribution of a raster image matching it to a specified PDF. |
| [`wbt_histogram_matching_two_images()`](../reference/wbt_histogram_matching_two_images.md) | Alters the cumulative distribution function of a raster image to that of another image. |
| [`wbt_ihs_to_rgb()`](../reference/wbt_ihs_to_rgb.md) | Converts intensity, hue, and saturation (IHS) images into red, green, and blue (RGB) images. |
| [`wbt_image_segmentation()`](../reference/wbt_image_segmentation.md) | Performs a region-growing based segmentation on a set of multi-spectral images. |
| [`wbt_image_slider()`](../reference/wbt_image_slider.md) | This tool creates an image slider from two input images. |
| [`wbt_image_stack_profile()`](../reference/wbt_image_stack_profile.md) | Plots an image stack profile (i.e. signature) for a set of points and multispectral images. |
| [`wbt_integral_image()`](../reference/wbt_integral_image.md) | Transforms an input image (summed area table) into its integral image equivalent. |
| [`wbt_k_nearest_mean_filter()`](../reference/wbt_k_nearest_mean_filter.md) | A k-nearest mean filter is a type of edge-preserving smoothing filter. |
| [`wbt_laplacian_filter()`](../reference/wbt_laplacian_filter.md) | Performs a Laplacian filter on an image. |
| [`wbt_laplacian_of_gaussian_filter()`](../reference/wbt_laplacian_of_gaussian_filter.md) | Performs a Laplacian-of-Gaussian (LoG) filter on an image. |
| [`wbt_lee_sigma_filter()`](../reference/wbt_lee_sigma_filter.md) | Performs a Lee (Sigma) smoothing filter on an image. |
| [`wbt_line_detection_filter()`](../reference/wbt_line_detection_filter.md) | Performs a line-detection filter on an image. |
| [`wbt_line_thinning()`](../reference/wbt_line_thinning.md) | Performs line thinning a on Boolean raster image; intended to be used with the RemoveSpurs tool. |
| [`wbt_majority_filter()`](../reference/wbt_majority_filter.md) | Assigns each cell in the output grid the most frequently occurring value (mode) in a moving window centred on each grid cell in the input raster. |
| [`wbt_maximum_filter()`](../reference/wbt_maximum_filter.md) | Assigns each cell in the output grid the maximum value in a moving window centred on each grid cell in the input raster. |
| [`wbt_mean_filter()`](../reference/wbt_mean_filter.md) | Performs a mean filter (low-pass filter) on an input image. |
| [`wbt_median_filter()`](../reference/wbt_median_filter.md) | Performs a median filter on an input image. |
| [`wbt_min_dist_classification()`](../reference/wbt_min_dist_classification.md) | Performs a supervised minimum-distance classification using training site polygons and multi-spectral images. |
| [`wbt_minimum_filter()`](../reference/wbt_minimum_filter.md) | Assigns each cell in the output grid the minimum value in a moving window centred on each grid cell in the input raster. |
| [`wbt_min_max_contrast_stretch()`](../reference/wbt_min_max_contrast_stretch.md) | Performs a min-max contrast stretch on an input greytone image. |
| [`wbt_mosaic()`](../reference/wbt_mosaic.md) | Mosaics two or more images together. |
| [`wbt_mosaic_with_feathering()`](../reference/wbt_mosaic_with_feathering.md) | Mosaics two images together using a feathering technique in overlapping areas to reduce edge-effects. |
| [`wbt_normalized_difference_index()`](../reference/wbt_normalized_difference_index.md) | Calculate a normalized-difference index (NDI) from two bands of multispectral image data. |
| [`wbt_olympic_filter()`](../reference/wbt_olympic_filter.md) | Performs an olympic smoothing filter on an image. |
| [`wbt_opening()`](../reference/wbt_opening.md) | An opening is a mathematical morphology operation involving a dilation (max filter) of an erosion (min filter) set. |
| `wbt_otsu_thresholding()` | Applies Ostu’s method for optimal binary thresholding of a continuous image. |
| [`wbt_panchromatic_sharpening()`](../reference/wbt_panchromatic_sharpening.md) | Increases the spatial resolution of image data by combining multispectral bands with panchromatic data. |
| [`wbt_parallelepiped_classification()`](../reference/wbt_parallelepiped_classification.md) | Performs a supervised parallelepiped classification using training site polygons and multi-spectral images. |
| [`wbt_percentage_contrast_stretch()`](../reference/wbt_percentage_contrast_stretch.md) | Performs a percentage linear contrast stretch on input images. |
| [`wbt_percentile_filter()`](../reference/wbt_percentile_filter.md) | Performs a percentile filter on an input image. |
| [`wbt_piecewise_contrast_stretch()`](../reference/wbt_piecewise_contrast_stretch.md) | Performs a piecewise contrast stretch on an input image. |
| [`wbt_prewitt_filter()`](../reference/wbt_prewitt_filter.md) | Performs a Prewitt edge-detection filter on an image. |
| [`wbt_range_filter()`](../reference/wbt_range_filter.md) | Assigns each cell in the output grid the range of values in a moving window centred on each grid cell in the input raster. |
| [`wbt_remove_spurs()`](../reference/wbt_remove_spurs.md) | Removes the spurs (pruning operation) from a Boolean line image; intended to be used on the output of the LineThinning tool. |
| [`wbt_resample()`](../reference/wbt_resample.md) | Resamples one or more input images into a destination image. |
| [`wbt_rgb_to_ihs()`](../reference/wbt_rgb_to_ihs.md) | Converts red, green, and blue (RGB) images into intensity, hue, and saturation (IHS) images. |
| [`wbt_roberts_cross_filter()`](../reference/wbt_roberts_cross_filter.md) | Performs a Robert’s cross edge-detection filter on an image. |
| [`wbt_scharr_filter()`](../reference/wbt_scharr_filter.md) | Performs a Scharr edge-detection filter on an image. |
| [`wbt_sigmoidal_contrast_stretch()`](../reference/wbt_sigmoidal_contrast_stretch.md) | Performs a sigmoidal contrast stretch on input images. |
| [`wbt_sobel_filter()`](../reference/wbt_sobel_filter.md) | Performs a Sobel edge-detection filter on an image. |
| [`wbt_split_colour_composite()`](../reference/wbt_split_colour_composite.md) | Splits an RGB colour composite image into separate multispectral images. |
| [`wbt_standard_deviation_contrast_stretch()`](../reference/wbt_standard_deviation_contrast_stretch.md) | Performs a standard-deviation contrast stretch on input images. |
| [`wbt_standard_deviation_filter()`](../reference/wbt_standard_deviation_filter.md) | Assigns each cell in the output grid the standard deviation of values in a moving window centred on each grid cell in the input raster. |
| [`wbt_thicken_raster_line()`](../reference/wbt_thicken_raster_line.md) | Thickens single-cell wide lines within a raster image. |
| [`wbt_tophat_transform()`](../reference/wbt_tophat_transform.md) | Performs either a white or black top-hat transform on an input image. |
| [`wbt_total_filter()`](../reference/wbt_total_filter.md) | Performs a total filter on an input image. |
| [`wbt_unsharp_masking()`](../reference/wbt_unsharp_masking.md) | An image sharpening technique that enhances edges. |
| [`wbt_user_defined_weights_filter()`](../reference/wbt_user_defined_weights_filter.md) | Performs a user-defined weights filter on an image. |
| [`wbt_write_function_memory_insertion()`](../reference/wbt_write_function_memory_insertion.md) | Performs a write function memory insertion for single-band multi-date change detection. |

Toolbox: Image Processing Tools {.table}

#### LiDAR Tools

| Function Name | Description |
|:---|:---|
| [`wbt_ascii_to_las()`](../reference/wbt_ascii_to_las.md) | Converts one or more ASCII files containing LiDAR points into LAS files. |
| [`wbt_classify_buildings_in_lidar()`](../reference/wbt_classify_buildings_in_lidar.md) | Reclassifies a LiDAR points that lie within vector building footprints. |
| [`wbt_classify_lidar()`](../reference/wbt_classify_lidar.md) | Classify points within a LiDAR point cloud based on point properties. |
| [`wbt_classify_overlap_points()`](../reference/wbt_classify_overlap_points.md) | Classifies or filters LAS points in regions of overlapping flight lines. |
| [`wbt_clip_lidar_to_polygon()`](../reference/wbt_clip_lidar_to_polygon.md) | Clips a LiDAR point cloud to a vector polygon or polygons. |
| [`wbt_colourize_based_on_class()`](../reference/wbt_colourize_based_on_class.md) | Sets the RGB values of a LiDAR point cloud based on the point classification values. |
| [`wbt_colourize_based_on_point_returns()`](../reference/wbt_colourize_based_on_point_returns.md) | Sets the RGB values of a LiDAR point cloud based on the point returns. |
| [`wbt_erase_polygon_from_lidar()`](../reference/wbt_erase_polygon_from_lidar.md) | Erases (cuts out) a vector polygon or polygons from a LiDAR point cloud. |
| [`wbt_filter_lidar()`](../reference/wbt_filter_lidar.md) | Filters points within a LiDAR point cloud based on point properties. |
| `wbt_filter_lidar_by_percentile()` | Filters points within a LiDAR point cloud based on local elevation percentile. |
| `wbt_filter_lidar_by_reference_surface()` | Filters points within a LiDAR point cloud based on a reference surface. |
| [`wbt_filter_lidar_classes()`](../reference/wbt_filter_lidar_classes.md) | Removes points in a LAS file with certain specified class values. |
| [`wbt_filter_lidar_scan_angles()`](../reference/wbt_filter_lidar_scan_angles.md) | Removes points in a LAS file with scan angles greater than a threshold. |
| [`wbt_find_flightline_edge_points()`](../reference/wbt_find_flightline_edge_points.md) | Identifies points along a flightline’s edge in a LAS file. |
| [`wbt_flightline_overlap()`](../reference/wbt_flightline_overlap.md) | Reads a LiDAR (LAS) point file and outputs a raster containing the number of overlapping flight-lines in each grid cell. |
| [`wbt_height_above_ground()`](../reference/wbt_height_above_ground.md) | Normalizes a LiDAR point cloud, providing the height above the nearest ground-classified point. |
| `wbt_improved_ground_point_filter()` | Filters points within a LiDAR point cloud based on a reference surface. |
| [`wbt_individual_tree_detection()`](../reference/wbt_individual_tree_detection.md) | Identifies points in a LiDAR point cloud that are associated with the tops of individual trees. |
| [`wbt_las_to_ascii()`](../reference/wbt_las_to_ascii.md) | Converts one or more LAS files into ASCII text files. |
| [`wbt_las_to_laz()`](../reference/wbt_las_to_laz.md) | This tool converts one or more LAS files into the LAZ format |
| [`wbt_las_to_multipoint_shapefile()`](../reference/wbt_las_to_multipoint_shapefile.md) | Converts one or more LAS files into MultipointZ vector Shapefiles. When the input parameter is not specified, the tool grids all LAS files contained within the working directory. |
| [`wbt_las_to_shapefile()`](../reference/wbt_las_to_shapefile.md) | Converts one or more LAS files into a vector Shapefile of POINT ShapeType. |
| [`wbt_las_to_zlidar()`](../reference/wbt_las_to_zlidar.md) | Converts one or more LAS files into the zlidar compressed LiDAR data format. |
| [`wbt_laz_to_las()`](../reference/wbt_laz_to_las.md) | This tool converts one or more LAZ files into the LAS format |
| [`wbt_lidar_block_maximum()`](../reference/wbt_lidar_block_maximum.md) | Creates a block-maximum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory. |
| [`wbt_lidar_block_minimum()`](../reference/wbt_lidar_block_minimum.md) | Creates a block-minimum raster from an input LAS file. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory. |
| [`wbt_lidar_classify_subset()`](../reference/wbt_lidar_classify_subset.md) | Classifies the values in one LiDAR point cloud that correspond with points in a subset cloud. |
| [`wbt_lidar_colourize()`](../reference/wbt_lidar_colourize.md) | Adds the red-green-blue colour fields of a LiDAR (LAS) file based on an input image. |
| [`wbt_lidar_contour()`](../reference/wbt_lidar_contour.md) | This tool creates a vector contour coverage from an input LiDAR point file. |
| [`wbt_lidar_digital_surface_model()`](../reference/wbt_lidar_digital_surface_model.md) | Creates a top-surface digital surface model (DSM) from a LiDAR point cloud. |
| [`wbt_lidar_eigenvalue_features()`](../reference/wbt_lidar_eigenvalue_features.md) | Calculate eigenvalue-based metrics from a LiDAR point cloud. |
| [`wbt_lidar_elevation_slice()`](../reference/wbt_lidar_elevation_slice.md) | Outputs all of the points within a LiDAR (LAS) point file that lie between a specified elevation range. |
| [`wbt_lidar_ground_point_filter()`](../reference/wbt_lidar_ground_point_filter.md) | Identifies ground points within LiDAR dataset using a slope-based method. |
| [`wbt_lidar_hex_binning()`](../reference/wbt_lidar_hex_binning.md) | Hex-bins a set of LiDAR points. |
| [`wbt_lidar_hillshade()`](../reference/wbt_lidar_hillshade.md) | Calculates a hillshade value for points within a LAS file and stores these data in the RGB field. |
| [`wbt_lidar_histogram()`](../reference/wbt_lidar_histogram.md) | Creates a histogram of LiDAR data. |
| [`wbt_lidar_idw_interpolation()`](../reference/wbt_lidar_idw_interpolation.md) | Interpolates LAS files using an inverse-distance weighted (IDW) scheme. When the input/output parameters are not specified, the tool interpolates all LAS files contained within the working directory. |
| [`wbt_lidar_info()`](../reference/wbt_lidar_info.md) | Prints information about a LiDAR (LAS) dataset, including header, point return frequency, and classification data and information about the variable length records (VLRs) and geokeys. |
| [`wbt_lidar_join()`](../reference/wbt_lidar_join.md) | Joins multiple LiDAR (LAS) files into a single LAS file. |
| [`wbt_lidar_kappa_index()`](../reference/wbt_lidar_kappa_index.md) | Performs a kappa index of agreement (KIA) analysis on the classifications of two LAS files. |
| [`wbt_lidar_nearest_neighbour_gridding()`](../reference/wbt_lidar_nearest_neighbour_gridding.md) | Grids LiDAR files using nearest-neighbour scheme. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory. |
| [`wbt_lidar_point_density()`](../reference/wbt_lidar_point_density.md) | Calculates the spatial pattern of point density for a LiDAR data set. When the input/output parameters are not specified, the tool grids all LAS files contained within the working directory. |
| [`wbt_lidar_point_return_analysis()`](../reference/wbt_lidar_point_return_analysis.md) | This tool performs a quality control check on the return values of points in a LiDAR file. |
| [`wbt_lidar_point_stats()`](../reference/wbt_lidar_point_stats.md) | Creates several rasters summarizing the distribution of LAS point data. When the input/output parameters are not specified, the tool works on all LAS files contained within the working directory. |
| [`wbt_lidar_ransac_planes()`](../reference/wbt_lidar_ransac_planes.md) | Performs a RANSAC analysis to identify points within a LiDAR point cloud that belong to linear planes. |
| [`wbt_lidar_rbf_interpolation()`](../reference/wbt_lidar_rbf_interpolation.md) | Interpolates LAS files using a radial basis function (RBF) scheme. When the input/output parameters are not specified, the tool interpolates all LAS files contained within the working directory. |
| [`wbt_lidar_remove_duplicates()`](../reference/wbt_lidar_remove_duplicates.md) | Removes duplicate points from a LiDAR data set. |
| [`wbt_lidar_remove_outliers()`](../reference/wbt_lidar_remove_outliers.md) | Removes outliers (high and low points) in a LiDAR point cloud. |
| [`wbt_lidar_rooftop_analysis()`](../reference/wbt_lidar_rooftop_analysis.md) | Identifies roof segments in a LiDAR point cloud. |
| [`wbt_lidar_segmentation()`](../reference/wbt_lidar_segmentation.md) | Segments a LiDAR point cloud based on differences in the orientation of fitted planar surfaces and point proximity. |
| [`wbt_lidar_segmentation_based_filter()`](../reference/wbt_lidar_segmentation_based_filter.md) | Identifies ground points within LiDAR point clouds using a segmentation based approach. |
| [`wbt_lidar_shift()`](../reference/wbt_lidar_shift.md) | Shifts the x,y,z coordinates of a LiDAR file. |
| [`wbt_lidar_sibson_interpolation()`](../reference/wbt_lidar_sibson_interpolation.md) | This tool interpolates one or more LiDAR tiles using Sibson’s natural neighbour method. |
| [`wbt_lidar_thin()`](../reference/wbt_lidar_thin.md) | Thins a LiDAR point cloud, reducing point density. |
| [`wbt_lidar_thin_high_density()`](../reference/wbt_lidar_thin_high_density.md) | Thins points from high density areas within a LiDAR point cloud. |
| [`wbt_lidar_tile()`](../reference/wbt_lidar_tile.md) | Tiles a LiDAR LAS file into multiple LAS files. |
| [`wbt_lidar_tile_footprint()`](../reference/wbt_lidar_tile_footprint.md) | Creates a vector polygon of the convex hull of a LiDAR point cloud. When the input/output parameters are not specified, the tool works with all LAS files contained within the working directory. |
| [`wbt_lidar_tin_gridding()`](../reference/wbt_lidar_tin_gridding.md) | Creates a raster grid based on a Delaunay triangular irregular network (TIN) fitted to LiDAR points. |
| [`wbt_lidar_tophat_transform()`](../reference/wbt_lidar_tophat_transform.md) | Performs a white top-hat transform on a Lidar dataset; as an estimate of height above ground, this is useful for modelling the vegetation canopy. |
| [`wbt_modify_lidar()`](../reference/wbt_modify_lidar.md) | Modify points within a LiDAR point cloud based on point properties. |
| [`wbt_normalize_lidar()`](../reference/wbt_normalize_lidar.md) | Normalizes a LiDAR point cloud. |
| [`wbt_normal_vectors()`](../reference/wbt_normal_vectors.md) | Calculates normal vectors for points within a LAS file and stores these data (XYZ vector components) in the RGB field. |
| [`wbt_recover_flightline_info()`](../reference/wbt_recover_flightline_info.md) | Associates LiDAR points by their flightlines. |
| [`wbt_select_tiles_by_polygon()`](../reference/wbt_select_tiles_by_polygon.md) | Copies LiDAR tiles overlapping with a polygon into an output directory. |
| [`wbt_sort_lidar()`](../reference/wbt_sort_lidar.md) | Sorts LiDAR points based on their properties. |
| [`wbt_split_lidar()`](../reference/wbt_split_lidar.md) | Splits LiDAR points up into a series of new files based on their properties. |
| [`wbt_zlidar_to_las()`](../reference/wbt_zlidar_to_las.md) | Converts one or more zlidar files into the LAS data format. |

Toolbox: LiDAR Tools {.table}

#### Machine Learning

| Function Name | Description |
|:---|:---|
| [`wbt_dbscan()`](../reference/wbt_dbscan.md) | Performs a DBSCAN-based unsupervised clustering operation. |
| [`wbt_k_means_clustering()`](../reference/wbt_k_means_clustering.md) | Performs a k-means clustering operation on a multi-spectral dataset. |
| [`wbt_knn_classification()`](../reference/wbt_knn_classification.md) | Performs a supervised k-nearest neighbour classification using training site polygons/points and predictor rasters. |
| [`wbt_knn_regression()`](../reference/wbt_knn_regression.md) | Performs a supervised k-nearest neighbour regression using training site points and predictor rasters. |
| [`wbt_logistic_regression()`](../reference/wbt_logistic_regression.md) | Performs a logistic regression analysis using training site polygons/points and predictor rasters. |
| [`wbt_modified_k_means_clustering()`](../reference/wbt_modified_k_means_clustering.md) | Performs a modified k-means clustering operation on a multi-spectral dataset. |
| `wbt_random_forest_classification_fit()` | Performs a supervised random forest classification using training site polygons/points and predictor rasters. |
| `wbt_random_forest_classification_predict()` | Uses a pre-trained random forest classification model and predictor rasters to create an output raster. |
| `wbt_random_forest_regression_fit()` | Trains a random forest regression model using training site data and predictor rasters. |
| `wbt_random_forest_regression_predict()` | Uses a pre-trained random forest regression model and predictor rasters to create an output raster. |
| [`wbt_svm_classification()`](../reference/wbt_svm_classification.md) | Performs an SVM binary classification using training site polygons/points and multiple input images. |
| [`wbt_svm_regression()`](../reference/wbt_svm_regression.md) | Performs a supervised SVM regression analysis using training site points and predictor rasters. |

Toolbox: Machine Learning {.table}

#### Math and Stats Tools

| Function Name | Description |
|:---|:---|
| [`wbt_absolute_value()`](../reference/wbt_absolute_value.md) | Calculates the absolute value of every cell in a raster. |
| [`wbt_add()`](../reference/wbt_add.md) | Performs an addition operation on two rasters or a raster and a constant value. |
| [`wbt_and()`](../reference/wbt_and.md) | Performs a logical AND operator on two Boolean raster images. |
| [`wbt_anova()`](../reference/wbt_anova.md) | Performs an analysis of variance (ANOVA) test on a raster dataset. |
| [`wbt_arc_cos()`](../reference/wbt_arc_cos.md) | Returns the inverse cosine (arccos) of each values in a raster. |
| [`wbt_arcosh()`](../reference/wbt_arcosh.md) | Returns the inverse hyperbolic cosine (arcosh) of each values in a raster. |
| [`wbt_arc_sin()`](../reference/wbt_arc_sin.md) | Returns the inverse sine (arcsin) of each values in a raster. |
| [`wbt_arc_tan()`](../reference/wbt_arc_tan.md) | Returns the inverse tangent (arctan) of each values in a raster. |
| [`wbt_arsinh()`](../reference/wbt_arsinh.md) | Returns the inverse hyperbolic sine (arsinh) of each values in a raster. |
| [`wbt_artanh()`](../reference/wbt_artanh.md) | Returns the inverse hyperbolic tangent (arctanh) of each values in a raster. |
| [`wbt_atan2()`](../reference/wbt_atan2.md) | Returns the 2-argument inverse tangent (atan2). |
| [`wbt_attribute_correlation()`](../reference/wbt_attribute_correlation.md) | Performs a correlation analysis on attribute fields from a vector database. |
| [`wbt_attribute_correlation_neighbourhood_analysis()`](../reference/wbt_attribute_correlation_neighbourhood_analysis.md) | Performs a correlation on two input vector attributes within a neighbourhood search windows. |
| [`wbt_attribute_histogram()`](../reference/wbt_attribute_histogram.md) | Creates a histogram for the field values of a vector’s attribute table. |
| [`wbt_attribute_scattergram()`](../reference/wbt_attribute_scattergram.md) | Creates a scattergram for two field values of a vector’s attribute table. |
| [`wbt_ceil()`](../reference/wbt_ceil.md) | Returns the smallest (closest to negative infinity) value that is greater than or equal to the values in a raster. |
| [`wbt_conditional_evaluation()`](../reference/wbt_conditional_evaluation.md) | Performs a conditional evaluation (if-then-else) operation on a raster. |
| [`wbt_conditioned_latin_hypercube()`](../reference/wbt_conditioned_latin_hypercube.md) | Implements conditioned Latin Hypercube sampling. |
| [`wbt_cos()`](../reference/wbt_cos.md) | Returns the cosine (cos) of each values in a raster. |
| [`wbt_cosh()`](../reference/wbt_cosh.md) | Returns the hyperbolic cosine (cosh) of each values in a raster. |
| [`wbt_crispness_index()`](../reference/wbt_crispness_index.md) | Calculates the Crispness Index, which is used to quantify how crisp (or conversely how fuzzy) a probability image is. |
| [`wbt_cross_tabulation()`](../reference/wbt_cross_tabulation.md) | Performs a cross-tabulation on two categorical images. |
| [`wbt_cumulative_distribution()`](../reference/wbt_cumulative_distribution.md) | Converts a raster image to its cumulative distribution function. |
| [`wbt_decrement()`](../reference/wbt_decrement.md) | Decreases the values of each grid cell in an input raster by 1.0 (see also InPlaceSubtract). |
| [`wbt_divide()`](../reference/wbt_divide.md) | Performs a division operation on two rasters or a raster and a constant value. |
| [`wbt_equal_to()`](../reference/wbt_equal_to.md) | Performs a equal-to comparison operation on two rasters or a raster and a constant value. |
| [`wbt_exp()`](../reference/wbt_exp.md) | Returns the exponential (base e) of values in a raster. |
| [`wbt_exp2()`](../reference/wbt_exp2.md) | Returns the exponential (base 2) of values in a raster. |
| [`wbt_floor()`](../reference/wbt_floor.md) | Returns the largest (closest to positive infinity) value that is less than or equal to the values in a raster. |
| [`wbt_greater_than()`](../reference/wbt_greater_than.md) | Performs a greater-than comparison operation on two rasters or a raster and a constant value. |
| [`wbt_image_autocorrelation()`](../reference/wbt_image_autocorrelation.md) | Performs Moran’s I analysis on two or more input images. |
| [`wbt_image_correlation()`](../reference/wbt_image_correlation.md) | Performs image correlation on two or more input images. |
| [`wbt_image_correlation_neighbourhood_analysis()`](../reference/wbt_image_correlation_neighbourhood_analysis.md) | Performs image correlation on two input images neighbourhood search windows. |
| [`wbt_image_regression()`](../reference/wbt_image_regression.md) | Performs image regression analysis on two input images. |
| [`wbt_increment()`](../reference/wbt_increment.md) | Increases the values of each grid cell in an input raster by 1.0. (see also InPlaceAdd) |
| [`wbt_in_place_add()`](../reference/wbt_in_place_add.md) | Performs an in-place addition operation (input1 += input2). |
| [`wbt_in_place_divide()`](../reference/wbt_in_place_divide.md) | Performs an in-place division operation (input1 /= input2). |
| [`wbt_in_place_multiply()`](../reference/wbt_in_place_multiply.md) | Performs an in-place multiplication operation (input1 \*= input2). |
| [`wbt_in_place_subtract()`](../reference/wbt_in_place_subtract.md) | Performs an in-place subtraction operation (input1 -= input2). |
| [`wbt_integer_division()`](../reference/wbt_integer_division.md) | Performs an integer division operation on two rasters or a raster and a constant value. |
| `wbt_inverse_pca()` | This tool performs an inverse principal component analysis on a series of input component images. |
| [`wbt_is_no_data()`](../reference/wbt_is_no_data.md) | Identifies NoData valued pixels in an image. |
| [`wbt_kappa_index()`](../reference/wbt_kappa_index.md) | Performs a kappa index of agreement (KIA) analysis on two categorical raster files. |
| [`wbt_ks_test_for_normality()`](../reference/wbt_ks_test_for_normality.md) | Evaluates whether the values in a raster are normally distributed. |
| [`wbt_less_than()`](../reference/wbt_less_than.md) | Performs a less-than comparison operation on two rasters or a raster and a constant value. |
| [`wbt_list_unique_values()`](../reference/wbt_list_unique_values.md) | Lists the unique values contained in a field within a vector’s attribute table. |
| [`wbt_list_unique_values_raster()`](../reference/wbt_list_unique_values_raster.md) | Lists the unique values contained in a field within a vector’s attribute table. |
| [`wbt_ln()`](../reference/wbt_ln.md) | Returns the natural logarithm of values in a raster. |
| [`wbt_log10()`](../reference/wbt_log10.md) | Returns the base-10 logarithm of values in a raster. |
| [`wbt_log2()`](../reference/wbt_log2.md) | Returns the base-2 logarithm of values in a raster. |
| [`wbt_max()`](../reference/wbt_max.md) | Performs a MAX operation on two rasters or a raster and a constant value. |
| [`wbt_min()`](../reference/wbt_min.md) | Performs a MIN operation on two rasters or a raster and a constant value. |
| [`wbt_modulo()`](../reference/wbt_modulo.md) | Performs a modulo operation on two rasters or a raster and a constant value. |
| [`wbt_multiply()`](../reference/wbt_multiply.md) | Performs a multiplication operation on two rasters or a raster and a constant value. |
| [`wbt_negate()`](../reference/wbt_negate.md) | Changes the sign of values in a raster or the 0-1 values of a Boolean raster. |
| [`wbt_not()`](../reference/wbt_not.md) | Performs a logical NOT operator on two Boolean raster images. |
| [`wbt_not_equal_to()`](../reference/wbt_not_equal_to.md) | Performs a not-equal-to comparison operation on two rasters or a raster and a constant value. |
| [`wbt_or()`](../reference/wbt_or.md) | Performs a logical OR operator on two Boolean raster images. |
| [`wbt_paired_sample_t_test()`](../reference/wbt_paired_sample_t_test.md) | Performs a 2-sample K-S test for significant differences on two input rasters. |
| [`wbt_phi_coefficient()`](../reference/wbt_phi_coefficient.md) | This tool performs a binary classification accuracy assessment. |
| [`wbt_power()`](../reference/wbt_power.md) | Raises the values in grid cells of one rasters, or a constant value, by values in another raster or constant value. |
| [`wbt_principal_component_analysis()`](../reference/wbt_principal_component_analysis.md) | Performs a principal component analysis (PCA) on a multi-spectral dataset. |
| [`wbt_quantiles()`](../reference/wbt_quantiles.md) | Transforms raster values into quantiles. |
| [`wbt_random_field()`](../reference/wbt_random_field.md) | Creates an image containing random values. |
| [`wbt_random_sample()`](../reference/wbt_random_sample.md) | Creates an image containing randomly located sample grid cells with unique IDs. |
| [`wbt_raster_calculator()`](../reference/wbt_raster_calculator.md) | Performs a complex mathematical operations on one or more input raster images on a cell-to-cell basis. |
| [`wbt_raster_histogram()`](../reference/wbt_raster_histogram.md) | Creates a histogram from raster values. |
| [`wbt_raster_summary_stats()`](../reference/wbt_raster_summary_stats.md) | Measures a rasters min, max, average, standard deviation, num. non-nodata cells, and total. |
| [`wbt_reciprocal()`](../reference/wbt_reciprocal.md) | Returns the reciprocal (i.e. 1 / z) of values in a raster. |
| [`wbt_rescale_value_range()`](../reference/wbt_rescale_value_range.md) | Performs a min-max contrast stretch on an input greytone image. |
| [`wbt_root_mean_square_error()`](../reference/wbt_root_mean_square_error.md) | Calculates the RMSE and other accuracy statistics. |
| [`wbt_round()`](../reference/wbt_round.md) | Rounds the values in an input raster to the nearest integer value. |
| [`wbt_sin()`](../reference/wbt_sin.md) | Returns the sine (sin) of each values in a raster. |
| [`wbt_sinh()`](../reference/wbt_sinh.md) | Returns the hyperbolic sine (sinh) of each values in a raster. |
| [`wbt_square()`](../reference/wbt_square.md) | Squares the values in a raster. |
| [`wbt_square_root()`](../reference/wbt_square_root.md) | Returns the square root of the values in a raster. |
| [`wbt_subtract()`](../reference/wbt_subtract.md) | Performs a differencing operation on two rasters or a raster and a constant value. |
| [`wbt_tan()`](../reference/wbt_tan.md) | Returns the tangent (tan) of each values in a raster. |
| [`wbt_tanh()`](../reference/wbt_tanh.md) | Returns the hyperbolic tangent (tanh) of each values in a raster. |
| [`wbt_to_degrees()`](../reference/wbt_to_degrees.md) | Converts a raster from radians to degrees. |
| [`wbt_to_radians()`](../reference/wbt_to_radians.md) | Converts a raster from degrees to radians. |
| [`wbt_trend_surface()`](../reference/wbt_trend_surface.md) | Estimates the trend surface of an input raster file. |
| [`wbt_trend_surface_vector_points()`](../reference/wbt_trend_surface_vector_points.md) | Estimates a trend surface from vector points. |
| [`wbt_truncate()`](../reference/wbt_truncate.md) | Truncates the values in a raster to the desired number of decimal places. |
| [`wbt_turning_bands_simulation()`](../reference/wbt_turning_bands_simulation.md) | Creates an image containing random values based on a turning-bands simulation. |
| [`wbt_two_sample_ks_test()`](../reference/wbt_two_sample_ks_test.md) | Performs a 2-sample K-S test for significant differences on two input rasters. |
| [`wbt_wilcoxon_signed_rank_test()`](../reference/wbt_wilcoxon_signed_rank_test.md) | Performs a 2-sample K-S test for significant differences on two input rasters. |
| [`wbt_xor()`](../reference/wbt_xor.md) | Performs a logical XOR operator on two Boolean raster images. |
| [`wbt_zonal_statistics()`](../reference/wbt_zonal_statistics.md) | Extracts descriptive statistics for a group of patches in a raster. |
| [`wbt_z_scores()`](../reference/wbt_z_scores.md) | Standardizes the values in an input raster by converting to z-scores. |

Toolbox: Math and Stats Tools {.table}

#### Precision Agriculture

| Function Name | Description |
|:---|:---|
| [`wbt_reconcile_multiple_headers()`](../reference/wbt_reconcile_multiple_headers.md) | This tool adjusts the crop yield values for data sets collected with multiple headers or combines. |
| [`wbt_recreate_pass_lines()`](../reference/wbt_recreate_pass_lines.md) | This tool can be used to approximate the harvester pass lines from yield points. |
| [`wbt_remove_field_edge_points()`](../reference/wbt_remove_field_edge_points.md) | This tool can be used to remove, or flag, most of the points along the edges from a crop yield data set. |
| [`wbt_yield_filter()`](../reference/wbt_yield_filter.md) | Filters crop yield values of point data derived from combine harvester yield monitors. |
| [`wbt_yield_map()`](../reference/wbt_yield_map.md) | This tool can be used to create a segmented-vector polygon yield map from a set of harvester points. |
| [`wbt_yield_normalization()`](../reference/wbt_yield_normalization.md) | This tool can be used to normalize the yield points for a field. |

Toolbox: Precision Agriculture {.table}

#### Stream Network Analysis

| Function Name | Description |
|:---|:---|
| `wbt_correct_stream_vector_direction()` | This tool resolves directional errors in digitized vector streams. |
| [`wbt_distance_to_outlet()`](../reference/wbt_distance_to_outlet.md) | Calculates the distance of stream grid cells to the channel network outlet cell. |
| [`wbt_extract_streams()`](../reference/wbt_extract_streams.md) | Extracts stream grid cells from a flow accumulation raster. |
| [`wbt_extract_valleys()`](../reference/wbt_extract_valleys.md) | Identifies potential valley bottom grid cells based on local topolography alone. |
| [`wbt_farthest_channel_head()`](../reference/wbt_farthest_channel_head.md) | Calculates the distance to the furthest upstream channel head for each stream cell. |
| [`wbt_find_main_stem()`](../reference/wbt_find_main_stem.md) | Finds the main stem, based on stream lengths, of each stream network. |
| [`wbt_hack_stream_order()`](../reference/wbt_hack_stream_order.md) | Assigns the Hack stream order to each tributary in a stream network. |
| [`wbt_horton_stream_order()`](../reference/wbt_horton_stream_order.md) | Assigns the Horton stream order to each tributary in a stream network. |
| [`wbt_length_of_upstream_channels()`](../reference/wbt_length_of_upstream_channels.md) | Calculates the total length of channels upstream. |
| [`wbt_long_profile()`](../reference/wbt_long_profile.md) | Plots the stream longitudinal profiles for one or more rivers. |
| [`wbt_long_profile_from_points()`](../reference/wbt_long_profile_from_points.md) | Plots the longitudinal profiles from flow-paths initiating from a set of vector points. |
| `wbt_prune_vector_streams()` | This tool performs common stream network analysis operations on an input vector stream file. |
| [`wbt_rasterize_streams()`](../reference/wbt_rasterize_streams.md) | Rasterizes vector streams based on Lindsay (2016) method. |
| [`wbt_raster_streams_to_vector()`](../reference/wbt_raster_streams_to_vector.md) | Converts a raster stream file into a vector file. |
| [`wbt_remove_short_streams()`](../reference/wbt_remove_short_streams.md) | Removes short first-order streams from a stream network. |
| [`wbt_repair_stream_vector_topology()`](../reference/wbt_repair_stream_vector_topology.md) | This tool resolves topological errors and inconsistencies associated with digitized vector streams. |
| [`wbt_shreve_stream_magnitude()`](../reference/wbt_shreve_stream_magnitude.md) | Assigns the Shreve stream magnitude to each link in a stream network. |
| [`wbt_strahler_stream_order()`](../reference/wbt_strahler_stream_order.md) | Assigns the Strahler stream order to each link in a stream network. |
| [`wbt_stream_link_class()`](../reference/wbt_stream_link_class.md) | Identifies the exterior/interior links and nodes in a stream network. |
| [`wbt_stream_link_identifier()`](../reference/wbt_stream_link_identifier.md) | Assigns a unique identifier to each link in a stream network. |
| [`wbt_stream_link_length()`](../reference/wbt_stream_link_length.md) | Estimates the length of each link (or tributary) in a stream network. |
| [`wbt_stream_link_slope()`](../reference/wbt_stream_link_slope.md) | Estimates the average slope of each link (or tributary) in a stream network. |
| [`wbt_stream_slope_continuous()`](../reference/wbt_stream_slope_continuous.md) | Estimates the slope of each grid cell in a stream network. |
| [`wbt_topological_stream_order()`](../reference/wbt_topological_stream_order.md) | Assigns each link in a stream network its topological order. |
| [`wbt_tributary_identifier()`](../reference/wbt_tributary_identifier.md) | Assigns a unique identifier to each tributary in a stream network. |
| [`wbt_vector_stream_network_analysis()`](../reference/wbt_vector_stream_network_analysis.md) | This tool performs common stream network analysis operations on an input vector stream file. |

Toolbox: Stream Network Analysis {.table}

#### Whitebox Utilities

| Function Name | Description |
|:---|:---|
| [`wbt_install_wb_extension()`](../reference/wbt_install_wb_extension.md) | Use to install a Whitebox extension product. |
| [`wbt_launch_wb_runner()`](../reference/wbt_launch_wb_runner.md) | Opens the Whitebox Runner application. |

Toolbox: Whitebox Utilities {.table}
