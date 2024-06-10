# add library
library(datasets)

# load dataset
data(mtcars)

# view 5 header rows
head(mtcars, 5)

# add ggplot
library(ggplot2)

# visualize (scatter plot)
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()

# add axes label and title
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+
  ggtitle("Displaceent Vs. Mile per Gallon")+
  labs(x="Displacement", y="Miles per Gallon")

# make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

# visualize (box plot)
ggplot(aes(x=vs, y=mpg), data=mtcars)+geom_boxplot()

# adding colors
ggplot(aes(x=vs, y=mpg, fill=vs), data=mtcars)+
  geom_boxplot(alpha=0.3)+
  theme(legend.position="none")

# histogram of weight
ggplot(aes(x=wt), data=mtcars)+geom_histogram(binwidth=0.5)

