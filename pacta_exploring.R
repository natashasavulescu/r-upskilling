install.packages("r2dii.match")
install.packages("devtools")
devtools::install_github("RMI-PACTA/r2dii.match")
library(r2dii.data)
library(r2dii.match)

# Step 1: Importing necessary files
# option 1
your_loanbook <- r2dii.data::loanbook_demo
your_abcd <- r2dii.data::abcd_demo

# option 2 (abcd = asset-based company-level data)
# your_loanbook <- readr::read_csv(“…enter file path…/lbk.csv)
# your_abcd <- readr::read_csv(“…enter file path…/abcd.csv)

#Step 2: Matching
# match lbk to abcd
match_file <- r2dii.match::match_name(your_loanbook, your_abcd)

# match lbk to abcd (advance)
# match_file_2 <- r2dii.match::match_name(your_loanbook, your_abcd, by_sector == TRUE, min_score = 0.8, method = “jw”, p = 0.1, overwrite = NULL)

