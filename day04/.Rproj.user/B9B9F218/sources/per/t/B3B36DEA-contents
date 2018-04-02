library('dplyr')
st <-read.csv('csv_exam.csv',header=F)
View(st)
colnames(st) <- c('id','class','ko','en','ma')

#class에 na가 몇개있는지 확인
table(is.na(st$class))

mean(st$ko,na.rm =T) 

#학생정보를 조회하시오 단 id,class,ko 결측치가 있는학생은 빼시오

st%>% filter(!is.na(ko) &!is.na(id)& !is.na(class))
st2<-na.omit(st[,c(1:3)])

#국어,영어,수학성적의 평균을 구하여 vecter를 만든다.
st3<-st[,c(3:5)]
colMeans(st3,na.rm =T) 

avg<-colMeans(st[,c('ko','en','ma')],na.rm=T)

#NA값을 모두 0으로 바꾸시오
st$ko<-ifelse(is.na(st$ko),0,st$ko)
st$en<-ifelse(is.na(st$en),0,st$en)
st$ma<-ifelse(is.na(st$ma),0,st$ma)

st[is.na(st)]=0
boxplot(st$ko)
hist(st$ko)






















