library(dplyr)
View(mpg)
mpg2<-mpg[,c('drv','hwy')]

result<-aggregate(hwy~drv,mpg,mean)
ggplot(data = result, aes(x=reorder(drv,hwy),y=hwy))+geom_col()
ggplot(data = mpg,aes(x=hwy))+geom_bar()

#193
#1
result<-mpg[mpg$class=='suv',]
sum_mpg<-head(result[order(result$cty,decreasing = T),],5)
#2
ggplot(data =mpg,aes(x=class))+geom_bar()















































