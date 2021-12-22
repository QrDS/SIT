library(shiny)
library(xtable)

###############################################################################
# Load Systematic Investor Toolbox (SIT)
# http://systematicinvestor.wordpress.com/systematic-investor-toolbox/
###############################################################################
require(RCurl)
sit = getURLContent('https://github.com/systematicinvestor/SIT/raw/master/sit.gz', binary=TRUE, followlocation = TRUE, ssl.verifypeer = FALSE)
    con = gzcon(rawConnection(sit, 'rb'))
    source(con)
close(con)

load.packages('Quandl')
load.packages('kernlab')

load.packages('googleVis')

load.packages('quantmod')
if (!require(quantmod)) {
  stop("This app requires the quantmod package. To install it, run 'install.packages(\"quantmod\")'.\n")
}

library(SIT)

