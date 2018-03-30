#aggregate 와 %>% 의 차이점 반듯이 기억
aggregate(math~class,exam,mean)

ex1<-exam%>%
  group_by(class) %>% summarise(mean_math=mean(math),sum_english=sum(english),mean_science=mean(science),
                                      n=n())
#제조사,드라이브별 %>% 
mpg%>%
  group_by(manufacturer,drv) %>% summarise(mcty=mean(cty))%>%arrange(desc(mcty)) %>% head(5)

#150p 1번 
mpg%>% 
  group_by(class) %>% summarise(mean_cty=mean(cty))
#2
mpg%>% 
  group_by(class) %>% summarise(mean_cty=mean(cty))%>% arrange(desc(mean_cty))
#3
mpg%>% 
  group_by(class) %>% summarise(mean_hwy=mean(hwy))%>% arrange(desc(mean_hwy))%>%head(3)
#4
comp<-mpg[mpg$class=='compact',]
comp%>% 
  group_by(manufacturer) %>% summarise(count=n())%>%arrange((count))
























































