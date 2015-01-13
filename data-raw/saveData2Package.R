
# where intermediate working data is saved
raw_dir <- "B:/Conservation_Limits/CL_Juvenile_Density/Spatial_Abundance_Model/package/CLdata/data-raw/rData/"

# helper fuction to get file names 
fname <- function(file, ext = ".rData", dir = raw_dir) {
  paste0(dir, file, ext)
}


# set wd to package directory
setwd("B:/Conservation_Limits/CL_Juvenile_Density/Spatial_Abundance_Model/package/CLdata")


# choose which data to use in package
load(fname("newrivs"))
load(fname("redctm"))
load(fname("gis_v2"))
load(fname("proj"))
load(fname("hma"))
load(fname("ef"))

# compress using xz to save space
devtools::use_data(newrivs, compress = "xz", overwrite = TRUE)
devtools::use_data(redctm, compress = "xz", overwrite = TRUE)
devtools::use_data(gis, compress = "xz", overwrite = TRUE)
devtools::use_data(proj, compress = "xz", overwrite = TRUE)
devtools::use_data(hma, compress = "xz", overwrite = TRUE)
devtools::use_data(ef, compress = "xz", overwrite = TRUE)

# check size of data files
tools::checkRdaFiles(paths = "data/")

