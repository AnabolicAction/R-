library(ggplot2)
data <- c(10,40,20,30,60)
qplot(data)

qplot(data=mpg,y=hwy,x=drv,geom = "boxplot",colour=drv)


