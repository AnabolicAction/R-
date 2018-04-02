#220p 나이와 월급의 관계-"몇살때 월급을 가장많이 받을까?"
class(welfare$birth)
summary(welfare$birth)
qplot(welfare$birth)

#결측치 확인
summary(welfare$birth)
table(is.na(welfare$birth))

#이상치 결측처리
welfare$birth<-ifelse(welfare$birth==9999,NA,welfare$birth)
table(is.na(welfare$birth))

#파생변수 만들기
welfare$age<-2015- welfare$birth +1
summary(welfare$age)

#나이에따른 월급평균표 만들기
age_income<-welfare %>% filter(!is.na(income)) %>% group_by(age) %>% summarise(mean_income=mean(income))
head(age_income)
ggplot(data=age_income,aes(x=age,y = mean_income)) +geom_line()













