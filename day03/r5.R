library(dplyr)
exam<-read.csv('csv_exam.csv');
colnames(exam)<-c('id','class','math','english','science')
#c1<-exam%>%filter(class==1)

c1 <- exam[exam$math>=50 & exam$english >=30,]
c2<-sqldf('SELECT * FROM exam WHERE math>=50 AND english>=30')
View(mpg)
#1

temp<-aggregate(hwy~displ,mpg,mean)
qplot(temp$hwy)
#2
result1<-aggregate(cty~manufacturer,mpg,mean)
result2<-result1[result1$manufacturer %in% c('audi','toyota')]
#3



#1
mympg<-mpg
mympg
displ4<-mympg %>% filter(displ<=4)
displ4

displ5<-mympg %>% filter(displ>=5)
displ5

comavg<-c(colMeans(displ4[,'hwy']),colMeans(displ5[,'hwy']))
names(comavg)[1]<-paste("displ4")
names(comavg)[2]<-paste("displ5")

#2

mf_mpg<-aggregate(cty~manufacturer, mympg, mean)
mf_mpg<- mf_mpg %>% filter(manufacturer=="audi"|manufacturer=="toyota")
mf_mpg

#3
mf_hwyavg<-aggregate(hwy~mympg[,],mympg,mean)
mf_hwyavg<-mf_hwyavg %>% filter(manufacturer=="chevrolet"|manufacturer=="ford"|manufacturer=="honda")
mf_hwyavg






























