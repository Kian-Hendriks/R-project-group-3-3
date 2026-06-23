# run_all.R -- reproduce the full analysis and report from a clean checkout.
#
# Steps:
#   1. Restore the exact package versions recorded in renv.lock.
#   2. Knit the R Markdown report to PDF (Template_Assignment.pdf).
#
# Usage (from the project root):
#   Rscript run_all.R

# 1. Restore the recorded package environment.
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv", repos = "https://cloud.r-project.org")
}
renv::restore(prompt = FALSE)

# 2. Render the report.
rmarkdown::render("Template_Assignment.Rmd", output_format = "pdf_document")
