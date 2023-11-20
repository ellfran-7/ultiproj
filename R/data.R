

#' Download datasets from GitHub
#'
#' @description
#' This function downloads the datasets hosted on any 
#' GitHub repository . The file won't be downloaded if already exists 
#' locally (except if `overwrite = TRUE`).
#' The file will be stored in the chosen sub-repository in
#' `data/`. This folder will be created if required.
#' 
#' @param location 
#' @param filename 
#' @param url 
#' @param overwrite 
#'
#' @return
#' @export
#'
#' @examples


fun_2_load_data <- function(location, 
                            filename, 
                            url,
                            overwrite = FALSE) {
  
  
  ## Destination ----
  path <- here::here("data", location)
  
  if (file.exists(file.path(path, filename)) && !overwrite) {
    
    ## Checl if exists locally ----
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
  
  } else {
    
    ## Create destination folder ----
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    ## Download file ----
    utils::download.file(url      = paste0(url, filename), 
                         destfile = file.path(path, filename),
                         mode     = "wb")
  }
  
  invisible(NULL)
}