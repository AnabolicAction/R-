name <-c('김지훈','이유진','박동현','김민지')
gender<-c('m','f','m','f')
ko<-c(90,80,60,70)
ma<-c(50,60,100,20)
si<-c(87,54,79,89)
en<-c(54,67,89,88)
add<-c('서울시','광주시','대전시','부산시')
df<-data.frame(name,gender,ko,ma,si,en,add)
student<-rowMeans(df[,3:6])
names(student)<-df$name;
student
score<-colMeans(df[,3:6])
score

temp<-df[,"add"]
temp2<-as.character(temp)
class(temp2)
df$add<-substr(temp2,1,2) #substr: 첫번째숫자와 두번째숫자를 나타내라
dfm<-df[df$gender=='m',]
dff<-df[df$gender=='f',]

dfsm<-colMeans(dfm[,3:6])
dfsf<-colMeans(dff[,3:6])

#학생별 국어와 영어릐 평균을 구하시오 vector로 표현하시오 단 컬럼 명은 학생의 이름으로 표시하시오
koen_avg<-(rowMeans(df[,c(3,6)]))
names(koen_avg)<-df$name

#여학생들의 과목별 평균을 구하시오 vector로 표현하시오 단 컬럼명은 과목이 표시된다
result1<-df[df$gender=='f',]
r1<-colMeans(result1[,c(3:6)])

result2<-df[df$gender=='m',]
r2<-colMeans(result2[,c(3:6)])

result3<-rbind(r1,r2)
result4<-as.data.frame(result3)
class(result4)




















