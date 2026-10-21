# Conditioned latin hypercube

Implements conditioned Latin Hypercube sampling.

## Usage

``` r
wbt_conditioned_latin_hypercube(
  inputs,
  output,
  samples = 500,
  iterations = 25000,
  seed = NULL,
  prob = 0.5,
  threshold = NULL,
  temp = 1,
  temp_decay = 0.05,
  cycle = 10,
  average = FALSE,
  wd = NULL,
  verbose_mode = NULL,
  compress_rasters = NULL,
  command_only = FALSE
)
```

## Arguments

- inputs:

  Name of the input raster file.

- output:

  Output shapefile.

- samples:

  Number of sample sites returned.

- iterations:

  Maximum iterations (if stopping criteria not reached).

- seed:

  Seed for RNG consistency.

- prob:

  Probability of random resample or resampling worst strata between
  `[0,1]`.

- threshold:

  Objective function values below the threshold stop the resampling
  iterations.

- temp:

  Initial annealing temperature between `[0,1]`.

- temp_decay:

  Annealing temperature decay proportion between `[0,1]`. Reduce
  temperature by this proportion each annealing cycle.

- cycle:

  Number of iterations before decaying annealing temperature.

- average:

  Weight the continuous objective function by the 1/N contributing
  strata.

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
