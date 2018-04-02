#연령대에 따른 월급차이 -어떤연령대의 월급이 가장많을까
welfare<-welfare %>% mutate(ageg=ifelse(age<30,'young',ifelse(age<=59,'middle','old')))
table(welfare$ages)

#연령대에따른 월급차이 분석하기
ageg_income <-welfare %>% filter(!is.na(income))%>%group_by(ageg) %>% summarise(mean_income =mean(income))

ageg_income
ggplot(data=ageg_income,aes(x=ageg,y=mean_income)) +geom_col() +scale_x_discrete(limits=c('young','middle','old'))





































