exam[exam$class==2,c('english','math')]
temp<-c(3,1,3,5,4,5,8)
sort(temp,decreasing = T)

exam[order(exam$math,decreasing = T),] #default 가 내림

exam[order(exam$class,exam$math,decreasing = T),] 
exam2<-exam%>% arrange(class,desc(math))

exam3<-exam%>% arrange(desc(math))
ex4<-head(exam3,5)

#각 반별 3과목 평균이 높은 사람순으로 정렬하시오
avg<-(exam$math+exam$english+exam$science)/3
eachavg<-aggregate(avg,exam,sum)
eachavg<-rename(eachavg,'eachavg'=x)
eachavg<-eachavg%>% arrange(class,desc(avg))


#141 1번
mod<-mpg[mpg$manufacturer=='audi',]
mod<-mod%>% arrange(desc(hwy))%>%head(5)
#1
cpmpg<-mpg
temp<-aggregate(cpmpg$hwy+cpmpg$cty,cpmpg,sum)
temp<-rename(temp,'sumboth'=x)

#2
avg<-temp$sumboth/2
temp2<-aggregate(avg,temp,mean)
temp2<-rename(temp2,'totalavg'=x)

#3
temp3<-temp2%>% arrange(desc(totalavg))%>%head(3)

#4
mpgdplyr<-mpg
mpgdplyr<- mpgdplyr %>%mutate(temp=cty+hwy, temp2=temp/2) %>% arrange(desc(temp2)) %>% head(3)



mpgdplyr<- mpgdplyr %>% mutate(ctyhwy=cty+hwy, avg=ctyhwy/2)%>%
  arrange(desc(avg)) %>% head(3)
mpgdplyr

























