#변수 검토하기
class(welfare$religion)
table(welfare$religion)

#종교 유무 이름 부여
welfare$religion <-ifelse(welfare$religion==1, 'yes','no')
qplot(welfare$religion)

#변수 검토하기
class(welfare$marriage)
table(welfare$marriage)

#이혼 여부 변수 만들기
welfare$group_marriage <- ifelse(welfare$marriage==1,'marriage',
                          ifelse(welfare$marriage==3,'divorce',NA))

table(is.na(welfare$group_marriage))

#종교유무이혼율 분석하기
religion_marriage <-welfare %>% filter(!is.na(group_marriage))%>%group_by(religion, group_marriage) %>% summarise(n=n()) %>% mutate(tot_group=sum(n)) %>%mutate(pct=round(n/tot_group*100,1))

religion_marriage <-welfare %>% filter(!is.na(group_marriage)) %>% count(religion,group_marriage) %>% group_by(religion) %>% mutate(pct=round(n/sum(n)*100,1))

#앞서 만든표에서 이혼에 해당하는 값만 추출해 이혼율 표 작성
divorce <-religion_marriage %>% filter(group_marriage=='divorce') %>% select(religion,pct)

ggplot(data = divorce, aes(x=religion , y= pct))+geom_col()

#연령대별 이혼율 표 만들기
ageg_marriage <-welfare %>% filter(!is.na(group_marriage)) %>% group_by(ageg, group_marriage) %>%summarise(n=n()) %>% mutate(tot_group =sum(n)) %>% mutate(pct=round(n/tot_group*100),1)

ageg_marriage <-welfare %>% filter(!is.na(group_marriage)) %>% count(ageg,group_marriage) %>% group_by(ageg) %>% mutate(pct=round(n/sum(n)*100,1))

#연령대별 이혼율 그래프 만들기
#초년제외, 이혼추출
ageg_divorce <-ageg_marriage %>% filter(ageg !='young' &group_marriage=='divorce') %>% select(ageg,pct)
ggplot(data=ageg_divorce,aes(x=ageg,y=pct))+geom_col()

#연령대,종교 유무,결혼 상태별 비율표 만들기
ageg_religion_marriage<-welfare %>%filter(!is.na(group_marriage) & ageg!='young') %>% group_by(ageg,religion,group_marriage) %>%summarise(n=n()) %>%mutate(pct=round(n/tot_group*100,1))

#연령대 및 종교 유무별 이혼율 표 만들기
df_divorce <-ageg_religion_marriage %>% filter(group_marriage=='divorce') %>% select(ageg,religion,pct)

#연령대 및 종교 유무에 따른 이혼율 그래프만들기
ggplot(data=df_divorce,aes(x=ageg,y=pct,fill=religion))+geom_col(position = 'dodge')





































