library(shiny)
library(xtable)

install.packages('curl', repos = 'http://cran.r-project.org')

install.packages("quantmod")
library(quantmod)

install.packages("devtools")
library(devtools)

install.packages("quadprog")
library(quantmod)

devtools::install_github('systematicinvestor/SIT.date')

#library(curl)
#curl_download('https://github.com/systematicinvestor/SIT/raw/master/SIT.tar.gz', 'sit',mode = 'wb',quiet=T)
devtools::install_github('systematicinvestor/SIT/raw/master/SIT.tar.gz')


library(SIT)


load.packages('Quandl')
load.packages('kernlab')

load.packages('googleVis')

load.packages('quantmod')
if (!require(quantmod)) {
  stop("This app requires the quantmod package. To install it, run 'install.packages(\"quantmod\")'.\n")
}
