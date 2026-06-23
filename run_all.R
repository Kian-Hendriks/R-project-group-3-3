# run this file to install the packages and knit the report to PDF
# usage: Rscript run_all.R

# install the packages we need if they are not there yet
needed <- c("tidyverse", "rmarkdown", "yaml", "patchwork", "scales", "sf")
missing <- setdiff(needed, rownames(installed.packages()))
if (length(missing) > 0) {
  install.packages(missing, repos = "https://cloud.r-project.org")
}

# knit the report
rmarkdown::render("Template_Assignment.Rmd", output_format = "pdf_document")
