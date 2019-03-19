##Histogram for all variables in a dataset mtcars.
##Write a program to create histograms for all columns

windows()
par(mfrow=c(5,4))
for( i in 1:length(mtcars)){
  hist(mtcars[,i], main=paste("Histogram of -", colnames(mtcars[,i]), xlab= colnames(mtcars)[i]))
}

###Check the probability distribution of all variables in mtcars.
library(purrr)
library(tidyr)
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  stat_density()


###Write a program to create boxplot for all variables.

windows()
par(mfrow=c(5,4))
for(i in 1:length(mtcars)){
  boxplot(mtcars[,i], main=paste("Histogram of -", colnames(mtcars[,i]), xlab= colnames(mtcars)[i]))
}