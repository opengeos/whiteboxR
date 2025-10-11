# generate inst/extdata/STATSGO2.shp and sidecar files
#
# Digital General Soil Map of the United States or STATSGO2 is a broad-based
# inventory of soils and non-soil areas that occur in a repeatable pattern on
# the landscape and that can be cartographically shown at the scale mapped of
# 1:250,000 for most of U.S
#
# https://www.nrcs.usda.gov/resources/data-and-reports/description-of-statsgo2-database
#
dem <- terra::rast(whitebox::sample_dem_data())
shp <- soilDB::SDA_spatialQuery(
    dem,
    what = "mupolygon",
    db = "statsgo",
    addFields = c("mapunit.musym", "mapunit.muname")
)
statsgo <- terra::crop(terra::project(shp, dem), dem)
terra::writeVector(statsgo, "inst/extdata/STATSGO2.shp")
