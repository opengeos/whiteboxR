##
## INSTRUCTIONS for updating .rda files in the  /data directory
##
## Datasets: wbttools and wbttoolparameters
##
# 1. Make sure `whitebox` is using the version of the executable you would like toparameter information for. Set it with `wbt_init(exe_path = ...)` as needed. 
# 
# 2. Run this R file. If it runs without error, new datasets `wbttools` and `wbttoolparameters` will be generated based on the output of `wbt_list_tools()` and 
#
# 3. Commit the changes to binary Rdata files: wbttools.rda, wbttoolparameters.rda 
#
  
library(whitebox)
wbt_verbose(FALSE)

# parse the tools from wbt_list_tools (independent of internal dataset; dependent on binary version)
wlt <- wbt_list_tools()
x <- gsub("([A-Za-z0-9]+):.*|^All [0-9]+.*", "\\1", wlt)
y <- sapply(x[nchar(x) > 0], wbt_toolbox)
z <- gsub("[A-Za-z0-9]+:(.*)|^All [0-9]+.*", "\\1", wlt[nchar(x) > 0])

# this is just the WBT executables tool list, parsed to remove any empty lines
wbttools <- data.frame(tool_name = x[nchar(x) > 0], toolbox_name = y, description = z)

# this requires jsonlite, but uses the the WBT executable toolparameters argument
#  as wrapped by the package function wbt_tool_parameters()
.get_tool_params_from_binary <- function(tool_name) {
  
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("please install the package 'jsonlite'", call. = FALSE)
  }
  
  # TODO: store as Rda file within package, update with latest binary, run on prior binaries? version argument
  params <- jsonlite::parse_json(wbt_tool_parameters(tool_name, quiet = TRUE), simplifyVector = TRUE)$parameters
  
  # allowed flags in package calls (i/o and other shorthand not allowed)
  params$pkgflags <- sapply(params$flags, function(x) as.character(x[grep("--", x)]))
  
  # extract labels
  params$argument_name <- sapply(params$pkgflags, function(x) paste0(gsub("--", "", x[grep("--", x)]), collapse=", "))
  
  # extract parameter label types
  paramtypes <- lapply(unlist(params$parameter_type, recursive = FALSE), function(x) x[!is.na(x)])
  idx <- grep("\\.Vector$", names(paramtypes))
  if (length(idx) > 0) {
    paramtypesnew <- do.call('c', paramtypes[idx])
    paramtypes <- c(paramtypesnew, paramtypes[-idx])
    paramtypes <- paramtypes[sapply(paramtypes, length) > 0]
  } else {
    paramtypes <- do.call('c', lapply(paramtypes, paste0, collapse=", "))
    names(paramtypes) <- gsub("[1-9]$", "", names(paramtypes))
  }
  
  params$parameter_type <- paste(names(paramtypes)[nchar(paramtypes) > 0], paramtypes[nchar(paramtypes) > 0])
  
  # classify parameters as input or output based on i/o flags
  params$is_input <- sapply(params$flags, function(x) any(grepl("^-i$", x)))
  params$is_output <- sapply(params$flags, function(x) any(grepl("^-o$", x)))
  params$flags <- sapply(params$flags, paste0, collapse= ", ")
  params
}

# iterate over tool name, getting parameters from WBT binary JSON output
wbttoolparameters <- do.call('rbind', lapply(seq_along(wbttools$tool_name), function(i) {
  x <- wbttools$tool_name[i]
  
  data.frame(tool_name = x, toolbox_name = wbttools$toolbox_name[i], .get_tool_params_from_binary(x)) 
}))
rownames(wbttools) <- NULL
rownames(wbttoolparameters) <- NULL

# list all functions in the whitebox package currently installed
wbtfunction <- ls('package:whitebox', "wbt_")

# use the new wbttool parameters, and "cleaned" function names (remove wbt_ prefix and underscores)
wbtfunction_clean <- gsub("_", "", whitebox:::wbt_internal_tool_name(wbtfunction))
idx1 <- match(tolower(wbttools$tool_name), wbtfunction_clean)
idx2 <- match(tolower(wbttoolparameters$tool_name), wbtfunction_clean)

# add $function_name to both datasets
wbttools <- data.frame(function_name = wbtfunction[idx1[which(!is.na(idx1))]], wbttools)
wbttoolparameters <- data.frame(function_name = wbtfunction[idx2[which(!is.na(idx2))]], wbttoolparameters)

attr(wbttools, 'version') <- "1.5.0"
attr(wbttoolparameters, 'version') <- "1.5.0"

# cleanup
wbttools[] <- lapply(wbttools, function(x) if(is.character(x)) return(trimws(x)) else x)
wbttoolparameters[] <- lapply(wbttoolparameters, function(x) if(is.character(x)) return(trimws(x)) else x)

# overwrite datasets with new data
usethis::use_data(wbttools, overwrite = TRUE)
usethis::use_data(wbttoolparameters, overwrite = TRUE)
