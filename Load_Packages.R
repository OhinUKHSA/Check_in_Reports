## ---------------------------
##
## Script name: Load_Packages
##
## Purpose of script: Install packages needed to run the two
## Professional Workforce Check-in Survey reports
##
##   - Professional_Workforce  (monthly report)
##   - checkin_6Month          (6-month trend report)
##
## Author: Owen Williams
## Date Created: 19/09/2025
##
## ---------------------------

options(repos = c(CRAN = "https://cloud.r-project.org"))

# Minimal union of package needs across both reports
packages <- c(
  "tidyverse", 
  "reactable",
  "sparkline", 
  "htmltools",
  "crosstalk",
  "plotly",
  "kableExtra",
  "tsibble",
  "scales",
  "knitr" 
)

# Install any that are missing
for (p in packages) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p)
  }
}

message("All required packages are installed. You can now run the reports.")