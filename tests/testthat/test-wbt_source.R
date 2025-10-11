test_that("wbt_source (raster) works", {

    skip_if_not_installed("terra")

    f <- sample_dem_data()

    # raster source from geotiff path
    src <- wbt_source(f)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.tif$", x))
    expect_true(file.exists(x))

    dem <- terra::rast(f)

    # raster source from spatraster (with source file)
    src <- wbt_source(dem)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.tif$", x))
    expect_true(file.exists(x))

    dem2 <- dem*2

    # raster source from spatraster (in memory)
    src <- wbt_source(dem)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.tif$", x))
    expect_true(file.exists(x))

    tf <- tempfile(fileext = ".gpkg")
    terra::writeRaster(dem, tf)

    # raster source from non-geotiff
    src <- wbt_source(tf)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.tif$", x))
    expect_true(file.exists(x))

    unlink(tf)
})

test_that("wbt_source (vector) works", {

    skip_if_not_installed("terra")

    f <- sample_soils_data()

    # vector source from shapefile
    src <- wbt_source(f)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.shp$", x))
    expect_true(file.exists(x))

    vf <- terra::vect(f)

    # vector source from spatvector (in memory)
    src <- wbt_source(vf)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.shp$", x))
    expect_true(file.exists(x))

    vf2 <- terra::vect(f, proxy = TRUE)

    # vector source from spatvectorproxy
    src <- wbt_source(vf2)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.shp$", x))
    expect_true(file.exists(x))

    tf <- tempfile(fileext = ".gpkg")
    terra::writeVector(vf, tf)

    # vector source from non-shapefile
    src <- wbt_source(tf)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\\.shp$", x))
    expect_true(file.exists(x))

    unlink(tf)
})
