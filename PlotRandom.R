################################################
# PlotRandom.R
# 
# Author: Ryan McCollum
# Date: October 14th 2022
#
# Purpose: function that will generate a random sample of
#          normal derivatives, plot a histogram and maybe
#          provide "other stuff"
#


plotRandomD <- function(numpts=100) {
  hist(rnorm(numpts))
}

plotRandomD()

############################

# Lets build more flexibility for our function:

plotRandomNormals <- function(numpts=100, mu=24, sigma=3, numbins=15,
                              title = "My Histogram, Oct 14 2022",
                              meanColor = "lime green",
                              seed=8675309)
  {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_x=mean_x,
       StDev_x=sd(rand_x),
       RandomValues=rand_x)
}

plotRandomNormals()
plotRandomNormals(mu=99)
plotRandomNormals(numpts=1000, mu=99, sigma=100)
plotRandomNormals(numpts=1000, mu=99, sigma=100, numbins=100)

