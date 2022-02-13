whitebox_json <- jsonlite::read_json("https://raw.githubusercontent.com/giswqs/whiteboxgui/master/whiteboxgui/data/whitebox_tools.json", simplifyVector = TRUE)

wbttools <- lapply(whitebox_json, function(x) x[1:7] |> as.data.frame()) |>
  data.table::rbindlist()

colnames(wbttools)[1:3] <- c("tool_name","function_name", "toolbox_name")

n1 <- lapply(whitebox_json, function(x) x$parameters)
tool_name <- names(n1)
n2 <- lapply(n1, function(x) lapply(x, function(y) lapply(y, function(z) if(is.null(z)) z <- NA else z)))
p2 <- lapply(n1, function(x) lapply(x, function(y) y$parameter_type))
n3 <- lapply(n2, function(x) {
  res <- lapply(x, function(y) {
    y$flags <- paste0(y$flags, collapse = ",")
    y$parameter_type <- NULL
    z <- as.data.frame(y)
    colnames(z)[1] <- "label"
    z
  })
  zz <- data.frame(name = names(res), do.call('rbind', res))
  rownames(zz) <- NULL
  zz
})             

f <- lapply(seq_along(n3), function(i) {
  x <- p2[[i]][n3[[i]]$name]
  
  res <- as.data.frame(lapply(x, function(y) lapply(y, function(z) paste0(z, collapse = ", "))))
  res2 <- data.frame(
    #name = names(x),
    parameter_class = gsub("^X?\\.|\\.[1-9]?$|\\.", "", colnames(res)),
    parameter_detail = as.matrix(res)[1, ]
  )
  rownames(res2) <- NULL
  cbind(n3[[i]], res2)
})

wbtp2 <- data.frame(tool_name = do.call('c', lapply(seq_along(n3), function(i) rep(names(n3)[i], nrow(f[[i]])))), do.call('rbind', f))

wbttoolparameters2 <- merge(wbttools[,c('function_name','tool_name','toolbox_name')],
      wbtp2, by = "tool_name", all.x=T, sort=F)

wbttoolparameters2$is_input <- grepl("input|dem", wbttoolparameters2$flags) | (grepl("Existing|FileList", wbttoolparameters2$parameter_class) & grepl("input", wbttoolparameters2$description, ignore.case = TRUE))
wbttoolparameters2$is_output <- grepl("output", wbttoolparameters2$flags) | (grepl("NewFile", wbttoolparameters2$parameter_class) & grepl("input", wbttoolparameters2$description, ignore.case = TRUE))
wbttoolparameters2$argument_name <- unlist(sapply(strsplit(wbttoolparameters2$flags, ","), function(x){ 
  y <- gsub("\\-\\-(.*)", "\\1", x)
  z <- y[!y %in% c("-i", "-o")]
  if (is.null(z)) return(NA)
  z[1]
}))
wbttoolparameters2$name <- NULL
colnames(wbttoolparameters2)[4] <- "name"

colnames(wbttoolparameters2)        
wbttools <- as.data.frame(wbttools)
wbttoolparameters <- as.data.frame(wbttoolparameters2)

# parse version
wbtvs <- gsub(".*v([0-9.\\-]+\\b).*", "\\1", whitebox::wbt_version()[1])

stopifnot(wbtvs > "1.0.0")

attr(wbttools, 'version') <- wbtvs
attr(wbttoolparameters, 'version') <- wbtvs

# overwrite datasets with new data

wbttools$function_name <- paste0("wbt_", wbttools$function_name)
wbttoolparameters$function_name <- paste0("wbt_", wbttoolparameters$function_name)

usethis::use_data(wbttools, overwrite = TRUE)
usethis::use_data(wbttoolparameters, overwrite = TRUE)
