# Time in daylight

Calculates the proportion of time a location is not within an area of
shadow.

## Usage

``` r
wbt_time_in_daylight(
  dem,
  output,
  lat,
  long,
  az_fraction = 10,
  max_dist = 100,
  utc_offset = "00:00",
  start_day = 1,
  end_day = 365,
  start_time = "00:00:00",
  end_time = "23:59:59",
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- dem:

  Input raster DEM file.

- output:

  Output raster file.

- lat:

  Centre point latitude.

- long:

  Centre point longitude.

- az_fraction:

  Azimuth fraction in degrees.

- max_dist:

  Optional maximum search distance. Minimum value is 5 x cell size.

- utc_offset:

  UTC time offset, in hours (e.g. -04:00, +06:00).

- start_day:

  Start day of the year (1-365).

- end_day:

  End day of the year (1-365).

- start_time:

  Starting hour to track shadows (e.g. 5, 5:00, 05:00:00). Assumes
  24-hour time: HH:MM:SS. 'sunrise' is also a valid time.

- end_time:

  Ending hour to track shadows (e.g. 21, 21:00, 21:00:00). Assumes
  24-hour time: HH:MM:SS. 'sunset' is also a valid time.

- wd:

  Changes the working directory. Default: `NULL` will use the value in
  WhiteboxTools settings, see [`wbt_wd()`](wbt_init.md) for details.

- verbose_mode:

  Sets verbose mode. If verbose mode is `FALSE`, tools will not print
  output messages. Default: `NULL` will use the value in WhiteboxTools
  settings, see [`wbt_verbose()`](wbt_init.md) for details.

- compress_rasters:

  Sets the flag used by 'WhiteboxTools' to determine whether to use
  compression for output rasters. Default: `NULL` will use the value in
  WhiteboxTools settings, see [`wbt_compress_rasters()`](wbt_init.md)
  for details.

- command_only:

  Return command that would be executed by
  [`system()`](https://rdrr.io/r/base/system.html) rather than running
  tool. Default: `FALSE`.

## Value

Returns the tool text outputs.
