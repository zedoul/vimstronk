options(repos = structure(c(CRAN = "https://ftp.acc.umu.se/mirror/CRAN/")))
options(stringsAsFactors = F)
options(encoding = 'UTF-8')
library <- function(package) {
  base::library(as.character(substitute(package)),
                warn.conflicts = F, quietly = T, character.only = T)
}
library(setwidth)
library(magrittr)
library(testthat)
