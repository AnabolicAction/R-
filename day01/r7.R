name<-c('lee','kim','park','jang','hong');
age <- c(10,20,30,40,50);
weight<-c(40,50,60,70,80);
df<-data.frame(name,age,weight)
df
dim(df)
nrow(df)
ncol(df)

mean(df[,2])
df2<-df[2,'age']
colMeans(df2[,c('age','weight')])
mean(df$age[1:3])
max(df$age)
c<-df$age
mx<-which(df$age==max(df$age))
mn<-which(df$age==min(df$age))
sort(df$age)

mean(df[c(-1,-5),'age'])

mean(df$age[c(-mn,-mx)])

df$height<-c(180,170,160,150,155)

df$bmi<-df$weight/(df$height^2)*10000

df2<-df[df$weight>=50 & df$weight<=60,]
df2[df$height==max(df$height),] #키가 max값과 같은애를 찾는다.

ww<-df2$weight
hh<-df2$height























































