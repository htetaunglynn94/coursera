# add library
library(datasets)

# load dataset
data(iris)

# load GGally
library(GGally)

# pair plot
ggpairs(iris, mapping=ggplot2::aes(color=Species))

