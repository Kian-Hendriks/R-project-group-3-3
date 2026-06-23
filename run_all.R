# run_all.R -- reproduce the full analysis and report from a clean checkout.
#
# Steps:
#   1. Install any required packages that are missing.
#   2. Knit the R Markdown report to PDF (Template_Assignment.pdf).
#
# Usage (from the project root):
#   Rscript run_all.R

# 1. Install missing packages (only those not already present).
needed <- c("tidyverse", "rmarkdown", "yaml", "patchwork", "scales", "sf")
missing <- setdiff(needed, rownames(installed.packages()))
if (length(missing) > 0) {
  install.packages(missing, repos = "https://cloud.r-project.org")
}

# 2. Render the report.
rmarkdown::render("Template_Assignment.Rmd", output_format = "pdf_document")
