#성별 직업빈도
#남성직업빈도 상위 10개 추출
job_male <-welfare %>% filter(!is.na(job) & sex=='male') %>% group_by(job) %>% summarise(n=n()) %>% arrange(desc(n)) %>% head(10)

#여성직업 빈도 상위 10개 추출
job_female <-welfare %>%filter(!is.na(job) & sex=='female') %>% group_by(job) %>% summarise(n=n())%>%arrange(desc(n))%>% head(10)

#남성,여성그래프만들기
ggplot(data=job_male, aes(x=reorder(job,n),y=n))+geom_col()+coord_flip()
ggplot(data=job_female, aes(x=reorder(job,n),y=n))+geom_col()+coord_flip()































