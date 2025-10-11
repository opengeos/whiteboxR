test_that("wbt_source (raster) works", {

    skip_if_not_installed("terra")

    f <- sample_dem_data()
    src <- wbt_source(f)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.tif$", x))
    expect_true(file.exists(x))

    dem <- terra::rast(f)

    src <- wbt_source(f)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.tif$", x))
    expect_true(file.exists(x))

    tf <- tempfile(fileext = ".grd")
    terra::writeRaster(dem, tf)

    src <- wbt_source(tf)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.tif$", x))
    expect_true(file.exists(x))

    unlink(tf)
})

test_that("wbt_source (vector) works", {

    skip_if_not_installed("terra")

    f <- sample_soils_data()
    src <- wbt_source(f)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.shp$", x))
    expect_true(file.exists(x))

    dem <- terra::vect(f)
    src <- wbt_source(dem)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.shp$", x))
    expect_true(file.exists(x))

    tf <- tempfile(fileext = ".geojson")
    terra::writeVector(dem, tf)

    src <- wbt_source(tf)

    x <- attr(src, "wbt_dsn")

    expect_true(grepl("\.shp$", x))
    expect_true(file.exists(x))

    unlink(tf)
})
