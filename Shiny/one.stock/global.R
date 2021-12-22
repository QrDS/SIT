library(shiny)
library(xtable)

###############################################################################
# Load Systematic Investor Toolbox (SIT)
# http://systematicinvestor.wordpress.com/systematic-investor-toolbox/
###############################################################################
con = gzcon(file('c:/temp/sit.gz', 'rb'))
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

