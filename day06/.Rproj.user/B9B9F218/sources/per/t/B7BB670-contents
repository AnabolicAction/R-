class(welfare$sex)
table(welfare$sex)
#이상치확인
table(welfare$sex)

#이상치 결측처리
welfare$sex<-ifelse(welfare$sex==9,NA,welfare$sex)
#결측치확인
table(is.na(welfare$sex))

#성별 항목이름부여
welfare$sex<-ifelse(welfare$sex==1,'male','female')
table(welfare$sex)
qplot(welfare$sex)

#216p
#변수검토하기
class(welfare$income)
summary(welfare$income)
qplot(welfare$income)
qplot(welfare$income) +xlim(0,1000)

welfare$income<-ifelse(welfare$income %in% c(0,9999), NA,welfare$income)
table(is.na(welfare$income))

sex_income<-welfare%>% filter(!is.na(income)) %>% group_by(sex)%>% summarise(mean_income=mean(income))
ggplot(data = sex_income,aes(x=sex,y=mean_income))+geom_col()




















