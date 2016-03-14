library(pixmap)
origin <- read.pnm("balloons.pgm")
origin

edited <- origin

edited@grey[100:210,350:500] <- 1
plot(edited)