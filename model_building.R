## Reading data and setting names
setwd("Developing-Data-Products")
first.data <- read.table("Dataset.data")
names(first.data) <- c("sex", "length", "diameter", "height", "whole_weight", 
                       "shucked_weight", "viscera_weight", "shell_weight", 
                       "rings")

## Since data have been scaled for use with an ANN (by dividing by 200), 
## we restore original values.
first.data[2:8] <- first.data[,2:8]*200

## Size of all creatures usually increases together.
## So let's see are there any correlations (should be a lot)
M <- abs(cor(first.data[,2:8]))
> diag(M) <- 0
> corVars <- which(M > 0.8,arr.ind=T)
> dim(corVars)[1]