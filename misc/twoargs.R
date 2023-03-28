library(terra)
library(whitebox)

wbt_verbose(TRUE)
wbt_wd("")

# get file path of sample DEM
dem <- sample_dem_data()
rdem <- round(rast(dem))

# step 1: calculate slope (input2)
step1 <- wbt("slope", dem = rdem, output = "slope.tif")
wbt_result(step1)

# step2 uses step1 as first arg and another input as input2
step2 <- wbt(step1, "add", input2 = rdem, output = "foo.tif")
x <- step2 |> 
  wbt_result() |>
  rast() 
plot(x)

# check the math
plot(round(x[["foo"]] - x[["slope"]]) - rdem)

# no rounding
plot((x[["foo"]] - x[["slope"]]) - rdem)

unlink(c(dem2, "foo.tif"))
