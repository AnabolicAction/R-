library('ggplot2')
dim(mpg)
View(mpg)

tf<-data.frame(x=c(1:5),y=c(6:10))
tfc<-tf
colnames(tfc)<-c('Col1','Col2') #c(a,b) a와b로 이름을 바꾸자
#install.packages('dplyr') 한번만 해주면되고
library(dplyr) #install한거를 쓰겠다
tfc<-rename(tf,'XX1'=x)


mpg<-rename(mpg,'city'='cty','highway'='hwy')
mpg$total <-(mpg$city+mpg$highway)/2

hist(mpg$total)

mpg$test <-ifelse(mpg$total>=20,'PASS','FAIL')

table(mpg$test)
qplot(mpg$test)

#total연비를 3등급으로 나누고자한다. 30이상 A 20~29 B 20미만 C grade라는 칼럼을 만들어 추가한다. 그래프도그린다
mpg$total <-ifelse(mpg$total>=30,'A',ifelse(mpg$total>=20,'B','C'))

qplot(mpg$total)



























