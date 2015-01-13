
# set wd to package directory
setwd("B:/Conservation_Limits/CL_Juvenile_Density/Spatial_Abundance_Model/package/CLdata")

# build data from raw files
knitr::knit2html("data-raw/ReadAllData.Rmd", output = "data-raw/ReadAllData.html")
unlink("ReadAllData.md")

# 
knitr::knit2html("data-raw/Read_GIS_EF_Data.Rmd", output = "data-raw/Read_GIS_EF_Data.html")
unlink("Read_GIS_EF_Data.md")

# form data required by analyses
knitr::knit2html("data-raw/ManipulateRawData.Rmd", output = "data-raw/ManipulateRawData.html")
unlink("ManipulateRawData.md")
