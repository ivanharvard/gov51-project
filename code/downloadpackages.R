install.packages("renv");

renv::init()

packages = c(
    "config", 
    "haven", 
    "dplyr", 
    "ggplot2",
    "yaml"
)

for (pkg in packages) {
    install.packages(pkg)
}


renv::snapshot()
2
