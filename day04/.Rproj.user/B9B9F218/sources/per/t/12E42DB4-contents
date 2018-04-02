library('dplyr')

tf<-data.frame(
  id=c(1:5),
  test=c(86:90)
)

tf2<-data.frame(
  id=c(6:10),
  test=c(91:95)
)

total<- rbind(tf,tf2)

total$test2<-c(90:99)

total$avg<-(total$test+total$test2)/2

total %>% arrange(desc(avg)) %>% head(3)
head(total[order(total$avg,decreasing = T),],3)

total%>% summarise(total_avg)=mean(avg)






































