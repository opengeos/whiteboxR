test_that("wbt default executable paths", {
  expect_true(is.character(wbt_default_path()))
  expect_true(is.character(wbt_exe_path()))
})

test_that("wbt verbosity", {
  expect_true(is.logical(wbt_verbose()))
  expect_true(is.list(wbt_options(verbose = "foobar")))
})

test_that("wbt initialization [WhiteboxTools missing]", {
  
  skip_on_cran()
  
  # backup options
  sysbak <- Sys.getenv("R_WHITEBOX_EXE_PATH")
  optbak <- getOption("whitebox.exe_path", default = "")
  
  # unset options
  Sys.unsetenv("R_WHITEBOX_EXE_PATH")
  options(whitebox.exe_path = "")
  
  # create a temporary file path (that does not yet exist)
  tf <- tempfile()
  
  # expect wbt_init FALSE
  expect_false(wbt_init(exe_path = tf))
  
  # write something to the temp file
  write("something", file = tf)
  
  # now whitebox sees it (doesn't know it's not a valid executable, just that file exists)
  expect_true(wbt_init(exe_path = tf))
  
  # try running a tool with the fake path; errors are caught
  #   - cant execute the text file; ignore.stderr = hide system err output during testing
  expect_silent({res <- wbt_system_call("--run=slope --dem=foo.tif --output=bar.tif", ignore.stderr = TRUE)})
  
  # an error will return a character containing the error message
  expect_true(is.character(res))
  
  ## and a "status" code attribute from system() [platform dependent; tf not executable]
  # !is.null(attr(res, 'status'))
  
  # cleanup and re-set package options
  unlink(tf)
  if (optbak != "") options(whitebox.exe_path = optbak)
  if (sysbak != "") Sys.setenv("R_WHITEBOX_EXE_PATH" = sysbak)
})

test_that("wbt path expansion", {
  dem <- as.character(wbt_file_path("~/dem.tif", shell_quote = FALSE)) 
  dem3a <- as.character(wbt_file_path("~/dem1.tif;~/dem2.tif;~/dem3.tif"))
  dem3b <- as.character(wbt_file_path("~/dem1.tif,~/dem2.tif,~/dem3.tif"))
  expect_equal(dem, file.path(path.expand("~"), "dem.tif"))
  
  
  expect_equal(dem3a, shQuote(paste0(file.path(path.expand("~"), 
                                     sprintf("dem%s.tif", 1:3)), 
                                     collapse = ",")))
  expect_equal(dem3a, dem3b)
})

test_that("wbt setting and using working directories", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  dem <- sample_dem_data()
  
  skip_if(dem == "")
  
  tf <- tempfile(fileext = ".tif")
  
  mywd <- dirname(tf)
  # if(!dir.exists(mywd)){
  #   dir.create(mywd, recursive = TRUE)
  # }
  
  .doSlope <- function(dem, output, command_only){
    wbt_run_tool("slope",
                 paste0("--dem=", dem, " --output=", basename(tf)),
                 command_only = command_only)
  }
  
  # inspect the command (using wd from options)
  before <- .doSlope(dem, command_only = TRUE)
  
  # new user options (passable via wbt_init)
  wbt_init(wd = mywd, verbose = FALSE)
  
  ## set just wd with wbt_wd or get the value
  expect_true(is.character(wbt_wd()))
  
  # inspect the command (using wd from options)
  after <- .doSlope(dem, command_only = TRUE)
  
  # run a tool
  .doSlope(dem, command_only = FALSE)
  
  # output is in working directory (tempdir)
  expect_length(list.files(pattern = basename(tf)), 0)
  expect_length(list.files(path = mywd, pattern = basename(tf)), 1)
  
  # NA or "" are converted to getwd() with an attribute set to remove the flag after next
  expect_equal(wbt_wd(NA), "")
  
  # cleanup
  unlink(tf)
})

test_that("wbt reset working directory", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  ## RESETTING A WORKING DIRECTORY (unset attribute of whitebox.wd)
  
  # set a working directory
  wbt_wd(tempdir())
  
  # run a tool
  wbt_run_tool("slope", paste0("--dem=", system.file("extdata/DEM.tif", package = "whitebox"), " --output=1.tif"))
  
  # "unset" working directory (to R getwd()) -- special attriubute added to option
  wbt_wd(wd = "")
  
  # get command before: there is no wd flag on first call if background system call worked
  expect_false(grepl("--wd", wbt_run_tool("slope", paste0("--dem=", system.file("extdata/DEM.tif", package = "whitebox"), " --output=2.tif"), command_only = TRUE)))
  
  # print(getOption("whitebox.wd"))
  
  # get command after: there is no --wd flag, and output is in getwd()/4.tif
  expect_false(grepl("--wd", wbt_run_tool("slope", paste0("--dem=", system.file("extdata/DEM.tif", package = "whitebox"), " --output=4.tif"), command_only = TRUE)))
  
  # cleanup
  unlink(c(file.path(tempdir(), "1.tif"), file.path(getwd(), "3.tif")))
})

test_that("wbt utility functions [requires WhiteboxTools installed]", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  expect_true(wbt_init())
  expect_true(is.character(wbt_help()))
  expect_true(is.character(wbt_license()))
  expect_true(is.character(wbt_version()))
  expect_true(is.character(wbt_list_tools()))

  # These non-`--run` flags require tool_name for valid output
  # 
  #   --flag=tool_name
  #   
  expect_true(is.character(wbt_tool_help("Xor")))
  expect_true(is.character(wbt_tool_parameters("Xor")))
  expect_true(is.character(wbt_view_code("Xor", viewer = FALSE)))
  expect_true(is.character(wbt_toolbox("Xor")))
  
  # missing args make "missing" error in R function if required 
  #  (_not_ error after calling WBT)
  #  argument "tool_name" is missing, with no default 
  #  v.s.
  #  thread 'main' panicked at 'Unrecognized tool name .', src\main.rs:72:21
  expect_error(wbt_tool_parameters())
  expect_error(wbt_view_code(viewer = FALSE))
  
  # The following "open-ended" tool_name commands work via command line when above fail
  # 
  # # List all tools and toolboxes
  #   whitebox_tools --toolbox
  #   
  # # List all tool help
  #   whitebox_tools --toolhelp
  #   
  # TODO: following calls vary in whether they return valid values depending on shell quoting
  #       with the default value for tool_name `NULL` we can still expect character result,
  #       but on Windows the result is Rust error string resulting in test noise:
  #         thread 'main' panicked at 'Unrecognized tool name ...'
  #       Skip on Windows for now
  skip_if(Sys.info()[["sysname"]] == "Windows")
  expect_true(is.character(wbt_toolbox()))
  expect_true(is.character(wbt_tool_help()))
})

test_that("wbt raster compression (requires WhiteboxTools v2.1.0 or higher)", {
  
  skip_on_cran()
  
  skip_if_not(check_whitebox_binary())
  
  skip_if_not(gsub("WhiteboxTools v([^ ]+) .*", "\\1", wbt_version()[1]) >= "2.1.0")
  
  dem <- sample_dem_data()
  
  skip_if(dem == "")
  
  wbt_geomorphons(sample_dem_data(), output = "test_compressed.tif", compress_rasters = TRUE)
  
  wbt_geomorphons(sample_dem_data(), output = "test_no-compress.tif", compress_rasters = FALSE)
  
  expect_true(file.size("test_compressed.tif") < file.size("test_no-compress.tif"))
  
  unlink(c("test_compressed.tif", "test_no-compress.tif"))
  
})

test_that("wbt tool name cleaning", {
  
  # wbt_internal_tool_name(): The internal tool name method is a single place for "name cleaning" to happen so it is standard. It deals with some of the messiness with converting between R function names and WBT tool names.
  expect_equal(wbt_internal_tool_name("wbt_wetness_index"), "wetness_index")
  expect_equal(wbt_internal_tool_name("whitebox::wbt_wetness_index"), "wetness_index")
  expect_equal(wbt_internal_tool_name("WetnessIndex"), "WetnessIndex")
  # underscores/snake case allowed as --run= input

  # commands generated from match.call() on `whitebox::wbt_wetness_index()`
  #  should match command for a pre-cleaned tool name "wetness_index"
  expect_equal(
    wbt_run_tool("--dem=foo.tif --output=bar.tif",
      tool_name = c("::", "whitebox", "wbt_wetness_index"),
      command_only = TRUE
    ),
    wbt_system_call(
      "--dem=foo.tif --output=bar.tif -v",
      tool_name = "wetness_index",
      command_only = TRUE
    )
  )
  #  - this relies on wbt_system_call() taking the _last_ tool_name in vector if the wbt_system_call argument has length >1
  #    - `wbt_run_tool()` and `wbt_system_call()` can only create a command for one tool at a time, so if length > 1 there is no vectorized behavior expected, and it can be assumed the vector reflects a single tool name
  #  - this test is still valid / will pass if we change the way spacing/capitalization works 
})
