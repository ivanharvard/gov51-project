requireNamespace("config")
library(haven)

# loaddata.R
#   Functions for loading data files from config.yaml.

cfg <- config::get(file = "../config.yaml")

get_data_path <- function(dataset, year) {
    rel  <- cfg[[dataset]][[as.character(year)]]$dta
    path <- file.path(cfg$root, rel)
    
    if (!file.exists(path)) {
        stop("Missing data file: ", path)
    }
    
    path
}

read_dta_from_path <- function(path) {
    haven::read_dta(path) |> haven::as_factor()
}