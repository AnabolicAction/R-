#1
library('ggplot2')
midwest

#2
midwest<-rename(midwest,total=poptotal)
midwest<-rename(midwest,asian=popasian)

#3
midwest$percent<-(midwest$asian/midwest$total*100)
hist(midwest$percent)
View(midwest)

#4
avg<-mean(midwest$percent)
midwest$totalavg<-ifelse(midwest$percent>avg,'large','small')

#5
table(midwest$totalavg)
qplot(midwest$totalavg)


























