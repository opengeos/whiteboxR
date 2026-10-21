# Package index

## 'WhiteboxTools' R Reference

### General

- [`check_whitebox_binary()`](check_whitebox_binary.md) : Check for
  'WhiteboxTools' executable path
- [`sample_dem_data()`](extdata-gis.md)
  [`sample_soils_data()`](extdata-gis.md) : Convenience method for path
  to sample DEM and soils data
- [`wbt_install()`](install_whitebox.md)
  [`install_whitebox()`](install_whitebox.md)
  [`wbt_install_extension()`](install_whitebox.md) : Download and
  Install 'WhiteboxTools'
- [`wbt()`](wbt.md) [`wbt_result()`](wbt.md) : Run WhiteboxTools by Tool
  Name
- [`wbt_activate()`](wbt_activate.md) : Activate 'WhiteboxTools'
  Extensions
- [`wbt_file_path()`](wbt_file_path.md) : Prepare File Paths for
  WhiteboxTools Commands
- [`wbt_help()`](wbt_help.md) : Help description for 'WhiteboxTools'
- [`wbt_init()`](wbt_init.md) [`wbt_options()`](wbt_init.md)
  [`wbt_exe_path()`](wbt_init.md) [`wbt_runner_path()`](wbt_init.md)
  [`wbt_default_path()`](wbt_init.md) [`wbt_data_dir()`](wbt_init.md)
  [`wbt_wd()`](wbt_init.md) [`wbt_verbose()`](wbt_init.md)
  [`wbt_compress_rasters()`](wbt_init.md)
  [`wbt_max_procs()`](wbt_init.md) : Initialize 'WhiteboxTools'
- [`wbt_launch_runner()`](wbt_launch_runner.md) : Launch 'WhiteboxTools
  Runner' GUI
- [`wbt_license()`](wbt_license.md) : License information for
  'WhiteboxTools'
- [`wbt_list_tools()`](wbt_list_tools.md) : All available tools in
  'WhiteboxTools'
- [`wbt_run_tool()`](wbt_run_tool.md) : Run a tool in 'WhiteboxTools' by
  name
- [`wbt_rust_backtrace()`](wbt_rust_backtrace.md) : Convenience method
  for setting RUST_BACKTRACE options for debugging
- [`wbt_source()`](wbt_source.md) : Initialize an R object containing
  spatial data for use by WhiteboxTools
- [`wbt_tool_help()`](wbt_tool_help.md) : Help description for a
  specific tool in 'WhiteboxTools'
- [`wbt_tool_parameters()`](wbt_tool_parameters.md) : Tool parameter
  descriptions for a specific tool in 'WhiteboxTools'
- [`wbt_toolbox()`](wbt_toolbox.md) : The toolbox for a specific tool in
  WhiteboxTools
- [`wbt_version()`](wbt_version.md) : Version information for
  'WhiteboxTools'
- [`wbt_view_code()`](wbt_view_code.md) : Source code for a specific
  tool in 'WhiteboxTools'
- [`wbttoolparameters`](wbttoolparameters.md) : 'WhiteboxTools' Tool
  Parameters
- [`wbttools`](wbttools.md) : 'WhiteboxTools' Tool List
- [`wbt_install_wb_extension()`](wbt_install_wb_extension.md) : Install
  wb extension
- [`wbt_launch_wb_runner()`](wbt_launch_wb_runner.md) : Launch wb runner

### Data Tools

- [`wbt_add_point_coordinates_to_table()`](wbt_add_point_coordinates_to_table.md)
  : Add point coordinates to table
- [`wbt_clean_vector()`](wbt_clean_vector.md) : Clean vector
- [`wbt_convert_nodata_to_zero()`](wbt_convert_nodata_to_zero.md) :
  Convert nodata to zero
- [`wbt_convert_raster_format()`](wbt_convert_raster_format.md) :
  Convert raster format
- [`wbt_csv_points_to_vector()`](wbt_csv_points_to_vector.md) : Csv
  points to vector
- [`wbt_export_table_to_csv()`](wbt_export_table_to_csv.md) : Export
  table to csv
- [`wbt_fix_dangling_arcs()`](wbt_fix_dangling_arcs.md) : Fix dangling
  arcs
- [`wbt_join_tables()`](wbt_join_tables.md) : Join tables
- [`wbt_lines_to_polygons()`](wbt_lines_to_polygons.md) : Lines to
  polygons
- [`wbt_merge_table_with_csv()`](wbt_merge_table_with_csv.md) : Merge
  table with csv
- [`wbt_merge_vectors()`](wbt_merge_vectors.md) : Merge vectors
- [`wbt_modify_no_data_value()`](wbt_modify_no_data_value.md) : Modify
  no data value
- [`wbt_multi_part_to_single_part()`](wbt_multi_part_to_single_part.md)
  : Multi part to single part
- [`wbt_new_raster_from_base()`](wbt_new_raster_from_base.md) : New
  raster from base
- [`wbt_polygons_to_lines()`](wbt_polygons_to_lines.md) : Polygons to
  lines
- [`wbt_print_geo_tiff_tags()`](wbt_print_geo_tiff_tags.md) : Print geo
  tiff tags
- [`wbt_raster_to_vector_lines()`](wbt_raster_to_vector_lines.md) :
  Raster to vector lines
- [`wbt_raster_to_vector_points()`](wbt_raster_to_vector_points.md) :
  Raster to vector points
- [`wbt_raster_to_vector_polygons()`](wbt_raster_to_vector_polygons.md)
  : Raster to vector polygons
- [`wbt_reinitialize_attribute_table()`](wbt_reinitialize_attribute_table.md)
  : Reinitialize attribute table
- [`wbt_remove_polygon_holes()`](wbt_remove_polygon_holes.md) : Remove
  polygon holes
- [`wbt_remove_raster_polygon_holes()`](wbt_remove_raster_polygon_holes.md)
  : Remove raster polygon holes
- [`wbt_set_nodata_value()`](wbt_set_nodata_value.md) : Set nodata value
- [`wbt_single_part_to_multi_part()`](wbt_single_part_to_multi_part.md)
  : Single part to multi part
- [`wbt_vector_lines_to_raster()`](wbt_vector_lines_to_raster.md) :
  Vector lines to raster
- [`wbt_vector_points_to_raster()`](wbt_vector_points_to_raster.md) :
  Vector points to raster
- [`wbt_vector_polygons_to_raster()`](wbt_vector_polygons_to_raster.md)
  : Vector polygons to raster

### GIS Analysis

- [`wbt_aggregate_raster()`](wbt_aggregate_raster.md) : Aggregate raster
- [`wbt_block_maximum_gridding()`](wbt_block_maximum_gridding.md) :
  Block maximum gridding
- [`wbt_block_minimum_gridding()`](wbt_block_minimum_gridding.md) :
  Block minimum gridding
- [`wbt_centroid()`](wbt_centroid.md) : Centroid
- [`wbt_centroid_vector()`](wbt_centroid_vector.md) : Centroid vector
- [`wbt_clump()`](wbt_clump.md) : Clump
- [`wbt_construct_vector_tin()`](wbt_construct_vector_tin.md) :
  Construct vector tin
- [`wbt_create_hexagonal_vector_grid()`](wbt_create_hexagonal_vector_grid.md)
  : Create hexagonal vector grid
- [`wbt_create_plane()`](wbt_create_plane.md) : Create plane
- [`wbt_create_rectangular_vector_grid()`](wbt_create_rectangular_vector_grid.md)
  : Create rectangular vector grid
- [`wbt_dissolve()`](wbt_dissolve.md) : Dissolve
- [`wbt_eliminate_coincident_points()`](wbt_eliminate_coincident_points.md)
  : Eliminate coincident points
- [`wbt_extend_vector_lines()`](wbt_extend_vector_lines.md) : Extend
  vector lines
- [`wbt_extract_nodes()`](wbt_extract_nodes.md) : Extract nodes
- [`wbt_extract_raster_values_at_points()`](wbt_extract_raster_values_at_points.md)
  : Extract raster values at points
- [`wbt_filter_raster_features_by_area()`](wbt_filter_raster_features_by_area.md)
  : Filter raster features by area
- [`wbt_find_lowest_or_highest_points()`](wbt_find_lowest_or_highest_points.md)
  : Find lowest or highest points
- [`wbt_heat_map()`](wbt_heat_map.md) : Heat map
- [`wbt_idw_interpolation()`](wbt_idw_interpolation.md) : Idw
  interpolation
- [`wbt_layer_footprint()`](wbt_layer_footprint.md) : Layer footprint
- [`wbt_medoid()`](wbt_medoid.md) : Medoid
- [`wbt_minimum_bounding_box()`](wbt_minimum_bounding_box.md) : Minimum
  bounding box
- [`wbt_minimum_bounding_circle()`](wbt_minimum_bounding_circle.md) :
  Minimum bounding circle
- [`wbt_minimum_bounding_envelope()`](wbt_minimum_bounding_envelope.md)
  : Minimum bounding envelope
- [`wbt_minimum_convex_hull()`](wbt_minimum_convex_hull.md) : Minimum
  convex hull
- [`wbt_natural_neighbour_interpolation()`](wbt_natural_neighbour_interpolation.md)
  : Natural neighbour interpolation
- [`wbt_nearest_neighbour_gridding()`](wbt_nearest_neighbour_gridding.md)
  : Nearest neighbour gridding
- [`wbt_polygon_area()`](wbt_polygon_area.md) : Polygon area
- [`wbt_polygon_long_axis()`](wbt_polygon_long_axis.md) : Polygon long
  axis
- [`wbt_polygon_perimeter()`](wbt_polygon_perimeter.md) : Polygon
  perimeter
- [`wbt_polygon_short_axis()`](wbt_polygon_short_axis.md) : Polygon
  short axis
- [`wbt_radial_basis_function_interpolation()`](wbt_radial_basis_function_interpolation.md)
  : Radial basis function interpolation
- [`wbt_raster_area()`](wbt_raster_area.md) : Raster area
- [`wbt_raster_cell_assignment()`](wbt_raster_cell_assignment.md) :
  Raster cell assignment
- [`wbt_raster_perimeter()`](wbt_raster_perimeter.md) : Raster perimeter
- [`wbt_reclass()`](wbt_reclass.md) : Reclass
- [`wbt_reclass_equal_interval()`](wbt_reclass_equal_interval.md) :
  Reclass equal interval
- [`wbt_reclass_from_file()`](wbt_reclass_from_file.md) : Reclass from
  file
- [`wbt_smooth_vectors()`](wbt_smooth_vectors.md) : Smooth vectors
- [`wbt_split_vector_lines()`](wbt_split_vector_lines.md) : Split vector
  lines
- [`wbt_tin_gridding()`](wbt_tin_gridding.md) : Tin gridding
- [`wbt_travelling_salesman_problem()`](wbt_travelling_salesman_problem.md)
  : Travelling salesman problem
- [`wbt_vector_hex_binning()`](wbt_vector_hex_binning.md) : Vector hex
  binning
- [`wbt_voronoi_diagram()`](wbt_voronoi_diagram.md) : Voronoi diagram

### GIS Analysis (Distance)

- [`wbt_buffer_raster()`](wbt_buffer_raster.md) : Buffer raster
- [`wbt_cost_allocation()`](wbt_cost_allocation.md) : Cost allocation
- [`wbt_cost_distance()`](wbt_cost_distance.md) : Cost distance
- [`wbt_cost_pathway()`](wbt_cost_pathway.md) : Cost pathway
- [`wbt_euclidean_allocation()`](wbt_euclidean_allocation.md) :
  Euclidean allocation
- [`wbt_euclidean_distance()`](wbt_euclidean_distance.md) : Euclidean
  distance

### GIS Analysis (Overlay)

- [`wbt_average_overlay()`](wbt_average_overlay.md) : Average overlay
- [`wbt_clip()`](wbt_clip.md) : Clip
- [`wbt_clip_raster_to_polygon()`](wbt_clip_raster_to_polygon.md) : Clip
  raster to polygon
- [`wbt_count_if()`](wbt_count_if.md) : Count if
- [`wbt_difference()`](wbt_difference.md) : Difference
- [`wbt_erase()`](wbt_erase.md) : Erase
- [`wbt_erase_polygon_from_raster()`](wbt_erase_polygon_from_raster.md)
  : Erase polygon from raster
- [`wbt_highest_position()`](wbt_highest_position.md) : Highest position
- [`wbt_intersect()`](wbt_intersect.md) : Intersect
- [`wbt_line_intersections()`](wbt_line_intersections.md) : Line
  intersections
- [`wbt_lowest_position()`](wbt_lowest_position.md) : Lowest position
- [`wbt_max_absolute_overlay()`](wbt_max_absolute_overlay.md) : Max
  absolute overlay
- [`wbt_max_overlay()`](wbt_max_overlay.md) : Max overlay
- [`wbt_merge_line_segments()`](wbt_merge_line_segments.md) : Merge line
  segments
- [`wbt_min_absolute_overlay()`](wbt_min_absolute_overlay.md) : Min
  absolute overlay
- [`wbt_min_overlay()`](wbt_min_overlay.md) : Min overlay
- [`wbt_multiply_overlay()`](wbt_multiply_overlay.md) : Multiply overlay
- [`wbt_percent_equal_to()`](wbt_percent_equal_to.md) : Percent equal to
- [`wbt_percent_greater_than()`](wbt_percent_greater_than.md) : Percent
  greater than
- [`wbt_percent_less_than()`](wbt_percent_less_than.md) : Percent less
  than
- [`wbt_pick_from_list()`](wbt_pick_from_list.md) : Pick from list
- [`wbt_polygonize()`](wbt_polygonize.md) : Polygonize
- [`wbt_split_with_lines()`](wbt_split_with_lines.md) : Split with lines
- [`wbt_sum_overlay()`](wbt_sum_overlay.md) : Sum overlay
- [`wbt_symmetrical_difference()`](wbt_symmetrical_difference.md) :
  Symmetrical difference
- [`wbt_union()`](wbt_union.md) : Union
- [`wbt_update_nodata_cells()`](wbt_update_nodata_cells.md) : Update
  nodata cells
- [`wbt_weighted_overlay()`](wbt_weighted_overlay.md) : Weighted overlay
- [`wbt_weighted_sum()`](wbt_weighted_sum.md) : Weighted sum

### GIS Analysis (Patch Shape)

- [`wbt_boundary_shape_complexity()`](wbt_boundary_shape_complexity.md)
  : Boundary shape complexity
- [`wbt_compactness_ratio()`](wbt_compactness_ratio.md) : Compactness
  ratio
- [`wbt_edge_proportion()`](wbt_edge_proportion.md) : Edge proportion
- [`wbt_elongation_ratio()`](wbt_elongation_ratio.md) : Elongation ratio
- [`wbt_find_patch_or_class_edge_cells()`](wbt_find_patch_or_class_edge_cells.md)
  : Find patch or class edge cells
- [`wbt_hole_proportion()`](wbt_hole_proportion.md) : Hole proportion
- [`wbt_linearity_index()`](wbt_linearity_index.md) : Linearity index
- [`wbt_narrowness_index()`](wbt_narrowness_index.md) : Narrowness index
- [`wbt_patch_orientation()`](wbt_patch_orientation.md) : Patch
  orientation
- [`wbt_perimeter_area_ratio()`](wbt_perimeter_area_ratio.md) :
  Perimeter area ratio
- [`wbt_radius_of_gyration()`](wbt_radius_of_gyration.md) : Radius of
  gyration
- [`wbt_related_circumscribing_circle()`](wbt_related_circumscribing_circle.md)
  : Related circumscribing circle
- [`wbt_shape_complexity_index()`](wbt_shape_complexity_index.md) :
  Shape complexity index
- [`wbt_shape_complexity_index_raster()`](wbt_shape_complexity_index_raster.md)
  : Shape complexity index raster

### Geomorphometric Analysis

- [`wbt_accumulation_curvature()`](wbt_accumulation_curvature.md) :
  Accumulation curvature
- [`wbt_aspect()`](wbt_aspect.md) : Aspect
- [`wbt_assess_route()`](wbt_assess_route.md) : Assess route
- [`wbt_average_normal_vector_angular_deviation()`](wbt_average_normal_vector_angular_deviation.md)
  : Average normal vector angular deviation
- [`wbt_breakline_mapping()`](wbt_breakline_mapping.md) : Breakline
  mapping
- [`wbt_circular_variance_of_aspect()`](wbt_circular_variance_of_aspect.md)
  : Circular variance of aspect
- [`wbt_contours_from_points()`](wbt_contours_from_points.md) : Contours
  from points
- [`wbt_contours_from_raster()`](wbt_contours_from_raster.md) : Contours
  from raster
- [`wbt_curvedness()`](wbt_curvedness.md) : Curvedness
- [`wbt_dem_void_filling()`](wbt_dem_void_filling.md) : Dem void filling
- [`wbt_dev_from_mean_elev()`](wbt_dev_from_mean_elev.md) : Dev from
  mean elev
- [`wbt_diff_from_mean_elev()`](wbt_diff_from_mean_elev.md) : Diff from
  mean elev
- [`wbt_difference_curvature()`](wbt_difference_curvature.md) :
  Difference curvature
- [`wbt_directional_relief()`](wbt_directional_relief.md) : Directional
  relief
- [`wbt_downslope_index()`](wbt_downslope_index.md) : Downslope index
- [`wbt_edge_density()`](wbt_edge_density.md) : Edge density
- [`wbt_elev_above_pit()`](wbt_elev_above_pit.md) : Elev above pit
- [`wbt_elev_percentile()`](wbt_elev_percentile.md) : Elev percentile
- [`wbt_elev_relative_to_min_max()`](wbt_elev_relative_to_min_max.md) :
  Elev relative to min max
- [`wbt_elev_relative_to_watershed_min_max()`](wbt_elev_relative_to_watershed_min_max.md)
  : Elev relative to watershed min max
- [`wbt_embankment_mapping()`](wbt_embankment_mapping.md) : Embankment
  mapping
- [`wbt_exposure_towards_wind_flux()`](wbt_exposure_towards_wind_flux.md)
  : Exposure towards wind flux
- [`wbt_feature_preserving_smoothing()`](wbt_feature_preserving_smoothing.md)
  : Feature preserving smoothing
- [`wbt_fetch_analysis()`](wbt_fetch_analysis.md) : Fetch analysis
- [`wbt_fill_missing_data()`](wbt_fill_missing_data.md) : Fill missing
  data
- [`wbt_find_ridges()`](wbt_find_ridges.md) : Find ridges
- [`wbt_gaussian_curvature()`](wbt_gaussian_curvature.md) : Gaussian
  curvature
- [`wbt_gaussian_scale_space()`](wbt_gaussian_scale_space.md) : Gaussian
  scale space
- [`wbt_generating_function()`](wbt_generating_function.md) : Generating
  function
- [`wbt_geomorphons()`](wbt_geomorphons.md) : Geomorphons
- [`wbt_hillshade()`](wbt_hillshade.md) : Hillshade
- [`wbt_horizon_angle()`](wbt_horizon_angle.md) : Horizon angle
- [`wbt_horizontal_excess_curvature()`](wbt_horizontal_excess_curvature.md)
  : Horizontal excess curvature
- [`wbt_hypsometric_analysis()`](wbt_hypsometric_analysis.md) :
  Hypsometric analysis
- [`wbt_hypsometrically_tinted_hillshade()`](wbt_hypsometrically_tinted_hillshade.md)
  : Hypsometrically tinted hillshade
- [`wbt_local_hypsometric_analysis()`](wbt_local_hypsometric_analysis.md)
  : Local hypsometric analysis
- [`wbt_local_quadratic_regression()`](wbt_local_quadratic_regression.md)
  : Local quadratic regression
- [`wbt_map_off_terrain_objects()`](wbt_map_off_terrain_objects.md) :
  Map off terrain objects
- [`wbt_max_anisotropy_dev()`](wbt_max_anisotropy_dev.md) : Max
  anisotropy dev
- [`wbt_max_anisotropy_dev_signature()`](wbt_max_anisotropy_dev_signature.md)
  : Max anisotropy dev signature
- [`wbt_max_branch_length()`](wbt_max_branch_length.md) : Max branch
  length
- [`wbt_max_difference_from_mean()`](wbt_max_difference_from_mean.md) :
  Max difference from mean
- [`wbt_max_downslope_elev_change()`](wbt_max_downslope_elev_change.md)
  : Max downslope elev change
- [`wbt_max_elev_dev_signature()`](wbt_max_elev_dev_signature.md) : Max
  elev dev signature
- [`wbt_max_elevation_deviation()`](wbt_max_elevation_deviation.md) :
  Max elevation deviation
- [`wbt_max_upslope_elev_change()`](wbt_max_upslope_elev_change.md) :
  Max upslope elev change
- [`wbt_maximal_curvature()`](wbt_maximal_curvature.md) : Maximal
  curvature
- [`wbt_mean_curvature()`](wbt_mean_curvature.md) : Mean curvature
- [`wbt_min_downslope_elev_change()`](wbt_min_downslope_elev_change.md)
  : Min downslope elev change
- [`wbt_minimal_curvature()`](wbt_minimal_curvature.md) : Minimal
  curvature
- [`wbt_multidirectional_hillshade()`](wbt_multidirectional_hillshade.md)
  : Multidirectional hillshade
- [`wbt_multiscale_curvatures()`](wbt_multiscale_curvatures.md) :
  Multiscale curvatures
- [`wbt_multiscale_elevation_percentile()`](wbt_multiscale_elevation_percentile.md)
  : Multiscale elevation percentile
- [`wbt_multiscale_roughness()`](wbt_multiscale_roughness.md) :
  Multiscale roughness
- [`wbt_multiscale_roughness_signature()`](wbt_multiscale_roughness_signature.md)
  : Multiscale roughness signature
- [`wbt_multiscale_std_dev_normals()`](wbt_multiscale_std_dev_normals.md)
  : Multiscale std dev normals
- [`wbt_multiscale_std_dev_normals_signature()`](wbt_multiscale_std_dev_normals_signature.md)
  : Multiscale std dev normals signature
- [`wbt_multiscale_topographic_position_image()`](wbt_multiscale_topographic_position_image.md)
  : Multiscale topographic position image
- [`wbt_num_downslope_neighbours()`](wbt_num_downslope_neighbours.md) :
  Num downslope neighbours
- [`wbt_num_upslope_neighbours()`](wbt_num_upslope_neighbours.md) : Num
  upslope neighbours
- [`wbt_openness()`](wbt_openness.md) : Openness
- [`wbt_pennock_landform_class()`](wbt_pennock_landform_class.md) :
  Pennock landform class
- [`wbt_percent_elev_range()`](wbt_percent_elev_range.md) : Percent elev
  range
- [`wbt_plan_curvature()`](wbt_plan_curvature.md) : Plan curvature
- [`wbt_profile()`](wbt_profile.md) : Profile
- [`wbt_profile_curvature()`](wbt_profile_curvature.md) : Profile
  curvature
- [`wbt_relative_aspect()`](wbt_relative_aspect.md) : Relative aspect
- [`wbt_relative_topographic_position()`](wbt_relative_topographic_position.md)
  : Relative topographic position
- [`wbt_remove_off_terrain_objects()`](wbt_remove_off_terrain_objects.md)
  : Remove off terrain objects
- [`wbt_ring_curvature()`](wbt_ring_curvature.md) : Ring curvature
- [`wbt_rotor()`](wbt_rotor.md) : Rotor
- [`wbt_ruggedness_index()`](wbt_ruggedness_index.md) : Ruggedness index
- [`wbt_sediment_transport_index()`](wbt_sediment_transport_index.md) :
  Sediment transport index
- [`wbt_shadow_animation()`](wbt_shadow_animation.md) : Shadow animation
- [`wbt_shadow_image()`](wbt_shadow_image.md) : Shadow image
- [`wbt_shape_index()`](wbt_shape_index.md) : Shape index
- [`wbt_slope()`](wbt_slope.md) : Slope
- [`wbt_slope_vs_aspect_plot()`](wbt_slope_vs_aspect_plot.md) : Slope vs
  aspect plot
- [`wbt_slope_vs_elevation_plot()`](wbt_slope_vs_elevation_plot.md) :
  Slope vs elevation plot
- [`wbt_smooth_vegetation_residual()`](wbt_smooth_vegetation_residual.md)
  : Smooth vegetation residual
- [`wbt_spherical_std_dev_of_normals()`](wbt_spherical_std_dev_of_normals.md)
  : Spherical std dev of normals
- [`wbt_standard_deviation_of_slope()`](wbt_standard_deviation_of_slope.md)
  : Standard deviation of slope
- [`wbt_stream_power_index()`](wbt_stream_power_index.md) : Stream power
  index
- [`wbt_surface_area_ratio()`](wbt_surface_area_ratio.md) : Surface area
  ratio
- [`wbt_tangential_curvature()`](wbt_tangential_curvature.md) :
  Tangential curvature
- [`wbt_time_in_daylight()`](wbt_time_in_daylight.md) : Time in daylight
- [`wbt_topo_render()`](wbt_topo_render.md) : Topo render
- [`wbt_topographic_position_animation()`](wbt_topographic_position_animation.md)
  : Topographic position animation
- [`wbt_total_curvature()`](wbt_total_curvature.md) : Total curvature
- [`wbt_unsphericity()`](wbt_unsphericity.md) : Unsphericity
- [`wbt_vertical_excess_curvature()`](wbt_vertical_excess_curvature.md)
  : Vertical excess curvature
- [`wbt_viewshed()`](wbt_viewshed.md) : Viewshed
- [`wbt_visibility_index()`](wbt_visibility_index.md) : Visibility index
- [`wbt_wetness_index()`](wbt_wetness_index.md) : Wetness index

### Hydrological Analysis

- [`wbt_average_flowpath_slope()`](wbt_average_flowpath_slope.md) :
  Average flowpath slope
- [`wbt_average_upslope_flowpath_length()`](wbt_average_upslope_flowpath_length.md)
  : Average upslope flowpath length
- [`wbt_basins()`](wbt_basins.md) : Basins
- [`wbt_breach_depressions()`](wbt_breach_depressions.md) : Breach
  depressions
- [`wbt_breach_depressions_least_cost()`](wbt_breach_depressions_least_cost.md)
  : Breach depressions least cost
- [`wbt_breach_single_cell_pits()`](wbt_breach_single_cell_pits.md) :
  Breach single cell pits
- [`wbt_burn_streams_at_roads()`](wbt_burn_streams_at_roads.md) : Burn
  streams at roads
- [`wbt_d8_flow_accumulation()`](wbt_d8_flow_accumulation.md) : D8 flow
  accumulation
- [`wbt_d8_mass_flux()`](wbt_d8_mass_flux.md) : D8 mass flux
- [`wbt_d8_pointer()`](wbt_d8_pointer.md) : D8 pointer
- [`wbt_d_inf_flow_accumulation()`](wbt_d_inf_flow_accumulation.md) : D
  inf flow accumulation
- [`wbt_d_inf_mass_flux()`](wbt_d_inf_mass_flux.md) : D inf mass flux
- [`wbt_d_inf_pointer()`](wbt_d_inf_pointer.md) : D inf pointer
- [`wbt_depth_in_sink()`](wbt_depth_in_sink.md) : Depth in sink
- [`wbt_depth_to_water()`](wbt_depth_to_water.md) : Depth to water
- [`wbt_downslope_distance_to_stream()`](wbt_downslope_distance_to_stream.md)
  : Downslope distance to stream
- [`wbt_downslope_flowpath_length()`](wbt_downslope_flowpath_length.md)
  : Downslope flowpath length
- [`wbt_edge_contamination()`](wbt_edge_contamination.md) : Edge
  contamination
- [`wbt_elevation_above_stream()`](wbt_elevation_above_stream.md) :
  Elevation above stream
- [`wbt_elevation_above_stream_euclidean()`](wbt_elevation_above_stream_euclidean.md)
  : Elevation above stream euclidean
- [`wbt_fd8_flow_accumulation()`](wbt_fd8_flow_accumulation.md) : Fd8
  flow accumulation
- [`wbt_fd8_pointer()`](wbt_fd8_pointer.md) : Fd8 pointer
- [`wbt_fill_burn()`](wbt_fill_burn.md) : Fill burn
- [`wbt_fill_depressions()`](wbt_fill_depressions.md) : Fill depressions
- [`wbt_fill_depressions_planchon_and_darboux()`](wbt_fill_depressions_planchon_and_darboux.md)
  : Fill depressions planchon and darboux
- [`wbt_fill_depressions_wang_and_liu()`](wbt_fill_depressions_wang_and_liu.md)
  : Fill depressions wang and liu
- [`wbt_fill_single_cell_pits()`](wbt_fill_single_cell_pits.md) : Fill
  single cell pits
- [`wbt_find_no_flow_cells()`](wbt_find_no_flow_cells.md) : Find no flow
  cells
- [`wbt_find_parallel_flow()`](wbt_find_parallel_flow.md) : Find
  parallel flow
- [`wbt_flatten_lakes()`](wbt_flatten_lakes.md) : Flatten lakes
- [`wbt_flood_order()`](wbt_flood_order.md) : Flood order
- [`wbt_flow_accumulation_full_workflow()`](wbt_flow_accumulation_full_workflow.md)
  : Flow accumulation full workflow
- [`wbt_flow_length_diff()`](wbt_flow_length_diff.md) : Flow length diff
- [`wbt_hillslopes()`](wbt_hillslopes.md) : Hillslopes
- [`wbt_hydrologic_connectivity()`](wbt_hydrologic_connectivity.md) :
  Hydrologic connectivity
- [`wbt_impoundment_size_index()`](wbt_impoundment_size_index.md) :
  Impoundment size index
- [`wbt_insert_dams()`](wbt_insert_dams.md) : Insert dams
- [`wbt_isobasins()`](wbt_isobasins.md) : Isobasins
- [`wbt_jenson_snap_pour_points()`](wbt_jenson_snap_pour_points.md) :
  Jenson snap pour points
- [`wbt_longest_flowpath()`](wbt_longest_flowpath.md) : Longest flowpath
- [`wbt_low_points_on_headwater_divides()`](wbt_low_points_on_headwater_divides.md)
  : Low points on headwater divides
- [`wbt_max_upslope_flowpath_length()`](wbt_max_upslope_flowpath_length.md)
  : Max upslope flowpath length
- [`wbt_max_upslope_value()`](wbt_max_upslope_value.md) : Max upslope
  value
- [`wbt_md_inf_flow_accumulation()`](wbt_md_inf_flow_accumulation.md) :
  Md inf flow accumulation
- [`wbt_num_inflowing_neighbours()`](wbt_num_inflowing_neighbours.md) :
  Num inflowing neighbours
- [`wbt_qin_flow_accumulation()`](wbt_qin_flow_accumulation.md) : Qin
  flow accumulation
- [`wbt_quinn_flow_accumulation()`](wbt_quinn_flow_accumulation.md) :
  Quinn flow accumulation
- [`wbt_raise_walls()`](wbt_raise_walls.md) : Raise walls
- [`wbt_rho8_flow_accumulation()`](wbt_rho8_flow_accumulation.md) : Rho8
  flow accumulation
- [`wbt_rho8_pointer()`](wbt_rho8_pointer.md) : Rho8 pointer
- [`wbt_river_centerlines()`](wbt_river_centerlines.md) : River
  centerlines
- [`wbt_sink()`](wbt_sink.md) : Sink
- [`wbt_snap_pour_points()`](wbt_snap_pour_points.md) : Snap pour points
- [`wbt_stochastic_depression_analysis()`](wbt_stochastic_depression_analysis.md)
  : Stochastic depression analysis
- [`wbt_strahler_order_basins()`](wbt_strahler_order_basins.md) :
  Strahler order basins
- [`wbt_subbasins()`](wbt_subbasins.md) : Subbasins
- [`wbt_trace_downslope_flowpaths()`](wbt_trace_downslope_flowpaths.md)
  : Trace downslope flowpaths
- [`wbt_unnest_basins()`](wbt_unnest_basins.md) : Unnest basins
- [`wbt_upslope_depression_storage()`](wbt_upslope_depression_storage.md)
  : Upslope depression storage
- [`wbt_watershed()`](wbt_watershed.md) : Watershed

### Image Processing

- [`wbt_change_vector_analysis()`](wbt_change_vector_analysis.md) :
  Change vector analysis
- [`wbt_closing()`](wbt_closing.md) : Closing
- [`wbt_create_colour_composite()`](wbt_create_colour_composite.md) :
  Create colour composite
- [`wbt_flip_image()`](wbt_flip_image.md) : Flip image
- [`wbt_ihs_to_rgb()`](wbt_ihs_to_rgb.md) : Ihs to rgb
- [`wbt_image_slider()`](wbt_image_slider.md) : Image slider
- [`wbt_image_stack_profile()`](wbt_image_stack_profile.md) : Image
  stack profile
- [`wbt_integral_image()`](wbt_integral_image.md) : Integral image
- [`wbt_line_thinning()`](wbt_line_thinning.md) : Line thinning
- [`wbt_mosaic()`](wbt_mosaic.md) : Mosaic
- [`wbt_mosaic_with_feathering()`](wbt_mosaic_with_feathering.md) :
  Mosaic with feathering
- [`wbt_normalized_difference_index()`](wbt_normalized_difference_index.md)
  : Normalized difference index
- [`wbt_opening()`](wbt_opening.md) : Opening
- [`wbt_remove_spurs()`](wbt_remove_spurs.md) : Remove spurs
- [`wbt_resample()`](wbt_resample.md) : Resample
- [`wbt_rgb_to_ihs()`](wbt_rgb_to_ihs.md) : Rgb to ihs
- [`wbt_split_colour_composite()`](wbt_split_colour_composite.md) :
  Split colour composite
- [`wbt_thicken_raster_line()`](wbt_thicken_raster_line.md) : Thicken
  raster line
- [`wbt_tophat_transform()`](wbt_tophat_transform.md) : Tophat transform
- [`wbt_write_function_memory_insertion()`](wbt_write_function_memory_insertion.md)
  : Write function memory insertion

### Image Processing (Classification)

- [`wbt_evaluate_training_sites()`](wbt_evaluate_training_sites.md) :
  Evaluate training sites
- [`wbt_generalize_classified_raster()`](wbt_generalize_classified_raster.md)
  : Generalize classified raster
- [`wbt_generalize_with_similarity()`](wbt_generalize_with_similarity.md)
  : Generalize with similarity
- [`wbt_image_segmentation()`](wbt_image_segmentation.md) : Image
  segmentation
- [`wbt_min_dist_classification()`](wbt_min_dist_classification.md) :
  Min dist classification
- [`wbt_parallelepiped_classification()`](wbt_parallelepiped_classification.md)
  : Parallelepiped classification

### Image Processing (Filters)

- [`wbt_adaptive_filter()`](wbt_adaptive_filter.md) : Adaptive filter
- [`wbt_bilateral_filter()`](wbt_bilateral_filter.md) : Bilateral filter
- [`wbt_canny_edge_detection()`](wbt_canny_edge_detection.md) : Canny
  edge detection
- [`wbt_conservative_smoothing_filter()`](wbt_conservative_smoothing_filter.md)
  : Conservative smoothing filter
- [`wbt_corner_detection()`](wbt_corner_detection.md) : Corner detection
- [`wbt_diff_of_gaussian_filter()`](wbt_diff_of_gaussian_filter.md) :
  Diff of gaussian filter
- [`wbt_diversity_filter()`](wbt_diversity_filter.md) : Diversity filter
- [`wbt_edge_preserving_mean_filter()`](wbt_edge_preserving_mean_filter.md)
  : Edge preserving mean filter
- [`wbt_emboss_filter()`](wbt_emboss_filter.md) : Emboss filter
- [`wbt_fast_almost_gaussian_filter()`](wbt_fast_almost_gaussian_filter.md)
  : Fast almost gaussian filter
- [`wbt_gaussian_filter()`](wbt_gaussian_filter.md) : Gaussian filter
- [`wbt_high_pass_bilateral_filter()`](wbt_high_pass_bilateral_filter.md)
  : High pass bilateral filter
- [`wbt_high_pass_filter()`](wbt_high_pass_filter.md) : High pass filter
- [`wbt_high_pass_median_filter()`](wbt_high_pass_median_filter.md) :
  High pass median filter
- [`wbt_k_nearest_mean_filter()`](wbt_k_nearest_mean_filter.md) : K
  nearest mean filter
- [`wbt_laplacian_filter()`](wbt_laplacian_filter.md) : Laplacian filter
- [`wbt_laplacian_of_gaussian_filter()`](wbt_laplacian_of_gaussian_filter.md)
  : Laplacian of gaussian filter
- [`wbt_lee_sigma_filter()`](wbt_lee_sigma_filter.md) : Lee sigma filter
- [`wbt_line_detection_filter()`](wbt_line_detection_filter.md) : Line
  detection filter
- [`wbt_majority_filter()`](wbt_majority_filter.md) : Majority filter
- [`wbt_maximum_filter()`](wbt_maximum_filter.md) : Maximum filter
- [`wbt_mean_filter()`](wbt_mean_filter.md) : Mean filter
- [`wbt_median_filter()`](wbt_median_filter.md) : Median filter
- [`wbt_minimum_filter()`](wbt_minimum_filter.md) : Minimum filter
- [`wbt_olympic_filter()`](wbt_olympic_filter.md) : Olympic filter
- [`wbt_percentile_filter()`](wbt_percentile_filter.md) : Percentile
  filter
- [`wbt_prewitt_filter()`](wbt_prewitt_filter.md) : Prewitt filter
- [`wbt_range_filter()`](wbt_range_filter.md) : Range filter
- [`wbt_roberts_cross_filter()`](wbt_roberts_cross_filter.md) : Roberts
  cross filter
- [`wbt_scharr_filter()`](wbt_scharr_filter.md) : Scharr filter
- [`wbt_sobel_filter()`](wbt_sobel_filter.md) : Sobel filter
- [`wbt_standard_deviation_filter()`](wbt_standard_deviation_filter.md)
  : Standard deviation filter
- [`wbt_total_filter()`](wbt_total_filter.md) : Total filter
- [`wbt_unsharp_masking()`](wbt_unsharp_masking.md) : Unsharp masking
- [`wbt_user_defined_weights_filter()`](wbt_user_defined_weights_filter.md)
  : User ined weights filter

### Image Processing (Enhancement)

- [`wbt_balance_contrast_enhancement()`](wbt_balance_contrast_enhancement.md)
  : Balance contrast enhancement
- [`wbt_correct_vignetting()`](wbt_correct_vignetting.md) : Correct
  vignetting
- [`wbt_direct_decorrelation_stretch()`](wbt_direct_decorrelation_stretch.md)
  : Direct decorrelation stretch
- [`wbt_gamma_correction()`](wbt_gamma_correction.md) : Gamma correction
- [`wbt_gaussian_contrast_stretch()`](wbt_gaussian_contrast_stretch.md)
  : Gaussian contrast stretch
- [`wbt_histogram_equalization()`](wbt_histogram_equalization.md) :
  Histogram equalization
- [`wbt_histogram_matching()`](wbt_histogram_matching.md) : Histogram
  matching
- [`wbt_histogram_matching_two_images()`](wbt_histogram_matching_two_images.md)
  : Histogram matching two images
- [`wbt_min_max_contrast_stretch()`](wbt_min_max_contrast_stretch.md) :
  Min max contrast stretch
- [`wbt_panchromatic_sharpening()`](wbt_panchromatic_sharpening.md) :
  Panchromatic sharpening
- [`wbt_percentage_contrast_stretch()`](wbt_percentage_contrast_stretch.md)
  : Percentage contrast stretch
- [`wbt_piecewise_contrast_stretch()`](wbt_piecewise_contrast_stretch.md)
  : Piecewise contrast stretch
- [`wbt_sigmoidal_contrast_stretch()`](wbt_sigmoidal_contrast_stretch.md)
  : Sigmoidal contrast stretch
- [`wbt_standard_deviation_contrast_stretch()`](wbt_standard_deviation_contrast_stretch.md)
  : Standard deviation contrast stretch

### LiDAR

- [`wbt_ascii_to_las()`](wbt_ascii_to_las.md) : Ascii to las
- [`wbt_classify_buildings_in_lidar()`](wbt_classify_buildings_in_lidar.md)
  : Classify buildings in lidar
- [`wbt_classify_lidar()`](wbt_classify_lidar.md) : Classify lidar
- [`wbt_classify_overlap_points()`](wbt_classify_overlap_points.md) :
  Classify overlap points
- [`wbt_clip_lidar_to_polygon()`](wbt_clip_lidar_to_polygon.md) : Clip
  lidar to polygon
- [`wbt_colourize_based_on_class()`](wbt_colourize_based_on_class.md) :
  Colourize based on class
- [`wbt_colourize_based_on_point_returns()`](wbt_colourize_based_on_point_returns.md)
  : Colourize based on point returns
- [`wbt_erase_polygon_from_lidar()`](wbt_erase_polygon_from_lidar.md) :
  Erase polygon from lidar
- [`wbt_filter_lidar()`](wbt_filter_lidar.md) : Filter lidar
- [`wbt_filter_lidar_classes()`](wbt_filter_lidar_classes.md) : Filter
  lidar classes
- [`wbt_filter_lidar_scan_angles()`](wbt_filter_lidar_scan_angles.md) :
  Filter lidar scan angles
- [`wbt_find_flightline_edge_points()`](wbt_find_flightline_edge_points.md)
  : Find flightline edge points
- [`wbt_flightline_overlap()`](wbt_flightline_overlap.md) : Flightline
  overlap
- [`wbt_height_above_ground()`](wbt_height_above_ground.md) : Height
  above ground
- [`wbt_individual_tree_detection()`](wbt_individual_tree_detection.md)
  : Individual tree detection
- [`wbt_las_to_ascii()`](wbt_las_to_ascii.md) : Las to ascii
- [`wbt_las_to_laz()`](wbt_las_to_laz.md) : Las to laz
- [`wbt_las_to_multipoint_shapefile()`](wbt_las_to_multipoint_shapefile.md)
  : Las to multipoint shapefile
- [`wbt_las_to_shapefile()`](wbt_las_to_shapefile.md) : Las to shapefile
- [`wbt_las_to_zlidar()`](wbt_las_to_zlidar.md) : Las to zlidar
- [`wbt_laz_to_las()`](wbt_laz_to_las.md) : Laz to las
- [`wbt_lidar_block_maximum()`](wbt_lidar_block_maximum.md) : Lidar
  block maximum
- [`wbt_lidar_block_minimum()`](wbt_lidar_block_minimum.md) : Lidar
  block minimum
- [`wbt_lidar_classify_subset()`](wbt_lidar_classify_subset.md) : Lidar
  classify subset
- [`wbt_lidar_colourize()`](wbt_lidar_colourize.md) : Lidar colourize
- [`wbt_lidar_contour()`](wbt_lidar_contour.md) : Lidar contour
- [`wbt_lidar_digital_surface_model()`](wbt_lidar_digital_surface_model.md)
  : Lidar digital surface model
- [`wbt_lidar_eigenvalue_features()`](wbt_lidar_eigenvalue_features.md)
  : Lidar eigenvalue features
- [`wbt_lidar_elevation_slice()`](wbt_lidar_elevation_slice.md) : Lidar
  elevation slice
- [`wbt_lidar_ground_point_filter()`](wbt_lidar_ground_point_filter.md)
  : Lidar ground point filter
- [`wbt_lidar_hex_binning()`](wbt_lidar_hex_binning.md) : Lidar hex
  binning
- [`wbt_lidar_hillshade()`](wbt_lidar_hillshade.md) : Lidar hillshade
- [`wbt_lidar_histogram()`](wbt_lidar_histogram.md) : Lidar histogram
- [`wbt_lidar_idw_interpolation()`](wbt_lidar_idw_interpolation.md) :
  Lidar idw interpolation
- [`wbt_lidar_info()`](wbt_lidar_info.md) : Lidar info
- [`wbt_lidar_join()`](wbt_lidar_join.md) : Lidar join
- [`wbt_lidar_kappa_index()`](wbt_lidar_kappa_index.md) : Lidar kappa
  index
- [`wbt_lidar_nearest_neighbour_gridding()`](wbt_lidar_nearest_neighbour_gridding.md)
  : Lidar nearest neighbour gridding
- [`wbt_lidar_point_density()`](wbt_lidar_point_density.md) : Lidar
  point density
- [`wbt_lidar_point_return_analysis()`](wbt_lidar_point_return_analysis.md)
  : Lidar point return analysis
- [`wbt_lidar_point_stats()`](wbt_lidar_point_stats.md) : Lidar point
  stats
- [`wbt_lidar_ransac_planes()`](wbt_lidar_ransac_planes.md) : Lidar
  ransac planes
- [`wbt_lidar_rbf_interpolation()`](wbt_lidar_rbf_interpolation.md) :
  Lidar rbf interpolation
- [`wbt_lidar_remove_duplicates()`](wbt_lidar_remove_duplicates.md) :
  Lidar remove duplicates
- [`wbt_lidar_remove_outliers()`](wbt_lidar_remove_outliers.md) : Lidar
  remove outliers
- [`wbt_lidar_rooftop_analysis()`](wbt_lidar_rooftop_analysis.md) :
  Lidar rooftop analysis
- [`wbt_lidar_segmentation()`](wbt_lidar_segmentation.md) : Lidar
  segmentation
- [`wbt_lidar_segmentation_based_filter()`](wbt_lidar_segmentation_based_filter.md)
  : Lidar segmentation based filter
- [`wbt_lidar_shift()`](wbt_lidar_shift.md) : Lidar shift
- [`wbt_lidar_sibson_interpolation()`](wbt_lidar_sibson_interpolation.md)
  : Lidar sibson interpolation
- [`wbt_lidar_sort_by_time()`](wbt_lidar_sort_by_time.md) : Lidar sort
  by time
- [`wbt_lidar_thin()`](wbt_lidar_thin.md) : Lidar thin
- [`wbt_lidar_thin_high_density()`](wbt_lidar_thin_high_density.md) :
  Lidar thin high density
- [`wbt_lidar_tile()`](wbt_lidar_tile.md) : Lidar tile
- [`wbt_lidar_tile_footprint()`](wbt_lidar_tile_footprint.md) : Lidar
  tile footprint
- [`wbt_lidar_tin_gridding()`](wbt_lidar_tin_gridding.md) : Lidar tin
  gridding
- [`wbt_lidar_tophat_transform()`](wbt_lidar_tophat_transform.md) :
  Lidar tophat transform
- [`wbt_modify_lidar()`](wbt_modify_lidar.md) : Modify lidar
- [`wbt_normal_vectors()`](wbt_normal_vectors.md) : Normal vectors
- [`wbt_normalize_lidar()`](wbt_normalize_lidar.md) : Normalize lidar
- [`wbt_recover_flightline_info()`](wbt_recover_flightline_info.md) :
  Recover flightline info
- [`wbt_select_tiles_by_polygon()`](wbt_select_tiles_by_polygon.md) :
  Select tiles by polygon
- [`wbt_sort_lidar()`](wbt_sort_lidar.md) : Sort lidar
- [`wbt_split_lidar()`](wbt_split_lidar.md) : Split lidar
- [`wbt_zlidar_to_las()`](wbt_zlidar_to_las.md) : Zlidar to las

### Machine Learning

- [`wbt_dbscan()`](wbt_dbscan.md) : Dbscan
- [`wbt_k_means_clustering()`](wbt_k_means_clustering.md) : K means
  clustering
- [`wbt_knn_classification()`](wbt_knn_classification.md) : Knn
  classification
- [`wbt_knn_regression()`](wbt_knn_regression.md) : Knn regression
- [`wbt_logistic_regression()`](wbt_logistic_regression.md) : Logistic
  regression
- [`wbt_modified_k_means_clustering()`](wbt_modified_k_means_clustering.md)
  : Modified k means clustering
- [`wbt_random_forest_classification()`](wbt_random_forest_classification.md)
  : Random forest classification
- [`wbt_random_forest_regression()`](wbt_random_forest_regression.md) :
  Random forest regression
- [`wbt_svm_classification()`](wbt_svm_classification.md) : Svm
  classification
- [`wbt_svm_regression()`](wbt_svm_regression.md) : Svm regression

### Math and Statistics

- [`wbt_absolute_value()`](wbt_absolute_value.md) : Absolute value
- [`wbt_add()`](wbt_add.md) : Add
- [`wbt_and()`](wbt_and.md) : And
- [`wbt_anova()`](wbt_anova.md) : Anova
- [`wbt_arc_cos()`](wbt_arc_cos.md) : Arc cos
- [`wbt_arc_sin()`](wbt_arc_sin.md) : Arc sin
- [`wbt_arc_tan()`](wbt_arc_tan.md) : Arc tan
- [`wbt_arcosh()`](wbt_arcosh.md) : Arcosh
- [`wbt_arsinh()`](wbt_arsinh.md) : Arsinh
- [`wbt_artanh()`](wbt_artanh.md) : Artanh
- [`wbt_atan2()`](wbt_atan2.md) : Atan2
- [`wbt_attribute_correlation()`](wbt_attribute_correlation.md) :
  Attribute correlation
- [`wbt_attribute_correlation_neighbourhood_analysis()`](wbt_attribute_correlation_neighbourhood_analysis.md)
  : Attribute correlation neighbourhood analysis
- [`wbt_attribute_histogram()`](wbt_attribute_histogram.md) : Attribute
  histogram
- [`wbt_attribute_scattergram()`](wbt_attribute_scattergram.md) :
  Attribute scattergram
- [`wbt_ceil()`](wbt_ceil.md) : Ceil
- [`wbt_conditional_evaluation()`](wbt_conditional_evaluation.md) :
  Conditional evaluation
- [`wbt_conditioned_latin_hypercube()`](wbt_conditioned_latin_hypercube.md)
  : Conditioned latin hypercube
- [`wbt_cos()`](wbt_cos.md) : Cos
- [`wbt_cosh()`](wbt_cosh.md) : Cosh
- [`wbt_crispness_index()`](wbt_crispness_index.md) : Crispness index
- [`wbt_cross_tabulation()`](wbt_cross_tabulation.md) : Cross tabulation
- [`wbt_cumulative_distribution()`](wbt_cumulative_distribution.md) :
  Cumulative distribution
- [`wbt_decrement()`](wbt_decrement.md) : Decrement
- [`wbt_divide()`](wbt_divide.md) : Divide
- [`wbt_equal_to()`](wbt_equal_to.md) : Equal to
- [`wbt_exp()`](wbt_exp.md) : Exp
- [`wbt_exp2()`](wbt_exp2.md) : Exp2
- [`wbt_floor()`](wbt_floor.md) : Floor
- [`wbt_greater_than()`](wbt_greater_than.md) : Greater than
- [`wbt_image_autocorrelation()`](wbt_image_autocorrelation.md) : Image
  autocorrelation
- [`wbt_image_correlation()`](wbt_image_correlation.md) : Image
  correlation
- [`wbt_image_correlation_neighbourhood_analysis()`](wbt_image_correlation_neighbourhood_analysis.md)
  : Image correlation neighbourhood analysis
- [`wbt_image_regression()`](wbt_image_regression.md) : Image regression
- [`wbt_in_place_add()`](wbt_in_place_add.md) : In place add
- [`wbt_in_place_divide()`](wbt_in_place_divide.md) : In place divide
- [`wbt_in_place_multiply()`](wbt_in_place_multiply.md) : In place
  multiply
- [`wbt_in_place_subtract()`](wbt_in_place_subtract.md) : In place
  subtract
- [`wbt_increment()`](wbt_increment.md) : Increment
- [`wbt_integer_division()`](wbt_integer_division.md) : Integer division
- [`wbt_inverse_principal_component_analysis()`](wbt_inverse_principal_component_analysis.md)
  : Inverse principal component analysis
- [`wbt_is_no_data()`](wbt_is_no_data.md) : Is no data
- [`wbt_kappa_index()`](wbt_kappa_index.md) : Kappa index
- [`wbt_ks_test_for_normality()`](wbt_ks_test_for_normality.md) : Ks
  test for normality
- [`wbt_less_than()`](wbt_less_than.md) : Less than
- [`wbt_list_unique_values()`](wbt_list_unique_values.md) : List unique
  values
- [`wbt_list_unique_values_raster()`](wbt_list_unique_values_raster.md)
  : List unique values raster
- [`wbt_ln()`](wbt_ln.md) : Ln
- [`wbt_log10()`](wbt_log10.md) : Log10
- [`wbt_log2()`](wbt_log2.md) : Log2
- [`wbt_max()`](wbt_max.md) : Max
- [`wbt_min()`](wbt_min.md) : Min
- [`wbt_modulo()`](wbt_modulo.md) : Modulo
- [`wbt_multiply()`](wbt_multiply.md) : Multiply
- [`wbt_negate()`](wbt_negate.md) : Negate
- [`wbt_not()`](wbt_not.md) : Not
- [`wbt_not_equal_to()`](wbt_not_equal_to.md) : Not equal to
- [`wbt_or()`](wbt_or.md) : Or
- [`wbt_paired_sample_t_test()`](wbt_paired_sample_t_test.md) : Paired
  sample t test
- [`wbt_phi_coefficient()`](wbt_phi_coefficient.md) : Phi coefficient
- [`wbt_power()`](wbt_power.md) : Power
- [`wbt_principal_component_analysis()`](wbt_principal_component_analysis.md)
  : Principal component analysis
- [`wbt_quantiles()`](wbt_quantiles.md) : Quantiles
- [`wbt_random_field()`](wbt_random_field.md) : Random field
- [`wbt_random_sample()`](wbt_random_sample.md) : Random sample
- [`wbt_raster_calculator()`](wbt_raster_calculator.md) : Raster
  calculator
- [`wbt_raster_histogram()`](wbt_raster_histogram.md) : Raster histogram
- [`wbt_raster_summary_stats()`](wbt_raster_summary_stats.md) : Raster
  summary stats
- [`wbt_reciprocal()`](wbt_reciprocal.md) : Reciprocal
- [`wbt_rescale_value_range()`](wbt_rescale_value_range.md) : Rescale
  value range
- [`wbt_root_mean_square_error()`](wbt_root_mean_square_error.md) : Root
  mean square error
- [`wbt_round()`](wbt_round.md) : Round
- [`wbt_sin()`](wbt_sin.md) : Sin
- [`wbt_sinh()`](wbt_sinh.md) : Sinh
- [`wbt_square()`](wbt_square.md) : Square
- [`wbt_square_root()`](wbt_square_root.md) : Square root
- [`wbt_subtract()`](wbt_subtract.md) : Subtract
- [`wbt_tan()`](wbt_tan.md) : Tan
- [`wbt_tanh()`](wbt_tanh.md) : Tanh
- [`wbt_to_degrees()`](wbt_to_degrees.md) : To degrees
- [`wbt_to_radians()`](wbt_to_radians.md) : To radians
- [`wbt_trend_surface()`](wbt_trend_surface.md) : Trend surface
- [`wbt_trend_surface_vector_points()`](wbt_trend_surface_vector_points.md)
  : Trend surface vector points
- [`wbt_truncate()`](wbt_truncate.md) : Truncate
- [`wbt_turning_bands_simulation()`](wbt_turning_bands_simulation.md) :
  Turning bands simulation
- [`wbt_two_sample_ks_test()`](wbt_two_sample_ks_test.md) : Two sample
  ks test
- [`wbt_wilcoxon_signed_rank_test()`](wbt_wilcoxon_signed_rank_test.md)
  : Wilcoxon signed rank test
- [`wbt_xor()`](wbt_xor.md) : Xor
- [`wbt_z_scores()`](wbt_z_scores.md) : Z scores
- [`wbt_zonal_statistics()`](wbt_zonal_statistics.md) : Zonal statistics

### Precision Agriculture

- [`wbt_reconcile_multiple_headers()`](wbt_reconcile_multiple_headers.md)
  : Reconcile multiple headers
- [`wbt_recreate_pass_lines()`](wbt_recreate_pass_lines.md) : Recreate
  pass lines
- [`wbt_remove_field_edge_points()`](wbt_remove_field_edge_points.md) :
  Remove field edge points
- [`wbt_yield_filter()`](wbt_yield_filter.md) : Yield filter
- [`wbt_yield_map()`](wbt_yield_map.md) : Yield map
- [`wbt_yield_normalization()`](wbt_yield_normalization.md) : Yield
  normalization

### Stream Network Analysis

- [`wbt_distance_to_outlet()`](wbt_distance_to_outlet.md) : Distance to
  outlet
- [`wbt_extract_streams()`](wbt_extract_streams.md) : Extract streams
- [`wbt_extract_valleys()`](wbt_extract_valleys.md) : Extract valleys
- [`wbt_farthest_channel_head()`](wbt_farthest_channel_head.md) :
  Farthest channel head
- [`wbt_find_main_stem()`](wbt_find_main_stem.md) : Find main stem
- [`wbt_hack_stream_order()`](wbt_hack_stream_order.md) : Hack stream
  order
- [`wbt_horton_stream_order()`](wbt_horton_stream_order.md) : Horton
  stream order
- [`wbt_length_of_upstream_channels()`](wbt_length_of_upstream_channels.md)
  : Length of upstream channels
- [`wbt_long_profile()`](wbt_long_profile.md) : Long profile
- [`wbt_long_profile_from_points()`](wbt_long_profile_from_points.md) :
  Long profile from points
- [`wbt_raster_streams_to_vector()`](wbt_raster_streams_to_vector.md) :
  Raster streams to vector
- [`wbt_rasterize_streams()`](wbt_rasterize_streams.md) : Rasterize
  streams
- [`wbt_remove_short_streams()`](wbt_remove_short_streams.md) : Remove
  short streams
- [`wbt_repair_stream_vector_topology()`](wbt_repair_stream_vector_topology.md)
  : Repair stream vector topology
- [`wbt_shreve_stream_magnitude()`](wbt_shreve_stream_magnitude.md) :
  Shreve stream magnitude
- [`wbt_strahler_stream_order()`](wbt_strahler_stream_order.md) :
  Strahler stream order
- [`wbt_stream_link_class()`](wbt_stream_link_class.md) : Stream link
  class
- [`wbt_stream_link_identifier()`](wbt_stream_link_identifier.md) :
  Stream link identifier
- [`wbt_stream_link_length()`](wbt_stream_link_length.md) : Stream link
  length
- [`wbt_stream_link_slope()`](wbt_stream_link_slope.md) : Stream link
  slope
- [`wbt_stream_slope_continuous()`](wbt_stream_slope_continuous.md) :
  Stream slope continuous
- [`wbt_topological_stream_order()`](wbt_topological_stream_order.md) :
  Topological stream order
- [`wbt_tributary_identifier()`](wbt_tributary_identifier.md) :
  Tributary identifier
- [`wbt_vector_stream_network_analysis()`](wbt_vector_stream_network_analysis.md)
  : Vector stream network analysis
