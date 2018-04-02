library(ggplot2)
library('dplyr')
View(midwest_cp)
midwest_cp<-midwest
#160 1번
midwest_cp$popadutotal<- 100-(midwest_cp$popadults/midwest_cp$poptotal)*100

#2번
midwest_cp %>%select(county)%>% arrange(desc(midwest_cp$popadutotal)) %>% head(5)

#3번
midwest_cp<-midwest_cp%>% mutate(range=ifelse(popadutotal>=40,'large',
                                 ifelse(popadutotal>=30,'middle','small')))

midwest_cp%>% 
  group_by(range) %>% summarise(n=n())

#4번
midwest_cp$popasitotal<- (midwest_cp$popasian/midwest_cp$poptotal)*100

midwest_cp %>% select(state,county,popasitotal) %>% arrange(midwest_cp$popasitotal) %>% head(10)































































