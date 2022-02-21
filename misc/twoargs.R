library(whitebox)

wbt_verbose(TRUE)
wbt_wd("")

# get file path of sample DEM
dem <- system.file("extdata/DEM.tif", package = "whitebox")

# dem0: create a RasterLayer (no CRS)
dem0 <- raster::raster(dem)

# dem1: set the CRS
dem1 <- raster::raster(dem, crs = "EPSG:26918")

# dem2: in temp directory
dem2 <- file.path(tempdir(), "DEM.tif")

# create a path for the output in same directory
foo <- file.path(tempdir(), "foo.tif")

# writeRaster with CRS info to temp file
raster::writeRaster(dem1, filename = dem2, overwrite=TRUE)

# dem3: raster
step1 <- wbt("slope", dem = raster::raster(dem2), output = "slope.tif")
get_result(step1)

# step2 uses step1 as first arg and another input as input2
step2 <- wbt(step1, "add", input2 = dem, output = foo)
raster::plot(step2 |> get_result() |> raster::stack())

unlink(c(dem2, foo))
