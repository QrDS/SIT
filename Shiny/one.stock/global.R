library(shiny)
library(xtable)

#install.packages('curl', repos = 'http://cran.r-project.org')

install.packages("quantmod")
library(quantmod)

install.packages("devtools")
library(devtools)

install.packages("quadprog")
library(quantmod)

# By default, the directories in .libPaths() aren't writable on shinyapps.io, so
# create a subdir where we'll install our package.
if (!file.exists("R-lib")) {
  dir.create("R-lib")
}
# Unfortunately, there's no way to get deployapp() to ignore this directory, so
# make sure to remove it locally before you call deployapp(). This can be done
# with:
#   unlink("pkgInst/R-lib", recursive = TRUE)

# You may also need to restart R before calling deployapp(), because calling
# runApp() will modify your libpath (below), which can confuse deployapp().

# Add ./R-lib/ to the libPaths
.libPaths( c(normalizePath("R-lib/"), .libPaths()) )

# Install the package if needed.
if (!do.call(require, list("SIT"))) {
  install.packages("SIT.tar.gz", repos = NULL, type = "source")
}

do.call(library, list("SIT"))



load.packages('Quandl')
load.packages('kernlab')

load.packages('googleVis')

load.packages('quantmod')
if (!require(quantmod)) {
  stop("This app requires the quantmod package. To install it, run 'install.packages(\"quantmod\")'.\n")
}
