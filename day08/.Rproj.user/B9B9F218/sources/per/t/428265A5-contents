install.packages('sqldf')
library(sqldf)
library(dplyr)
library(ggplot2)
class(iris)
mydata <-sqldf('SELECT * FROM iris WHERE Species = "setosa"');

mydata2<-iris[iris$Species=='setosa',]

colMeans(mydata2[,c(1:4)])

colnames(iris)<-c('sl','sw','pl','pw','s')
mydata3 <-sqldf('SELECT s,
                AVG(sl),
                AVG(sw),
                AVG(pl),
                AVG(pw)
                FROM iris 
                group by s')


sqldf("SELECT s, AVG(sl) AS 'mean_SL', AVG(sw) AS 'mean_SW', AVG(pl) AS 'mean_PL', AVG(pw) AS 'mean_PW' FROM iris GROUP BY s")

iris %>% group_by(s) %>% summarise(mean_SL = mean(sl), mean_SW = mean(sw), mean_PL = mean(pl), mean_PW = mean(pw))

cbind(aggregate(sl~s,data,mean),sw=aggregate(sw~s,data,mean)$sw,pl=aggregate(pl~s,data,mean)$pl,pw=aggregate(pw~s,data,mean)$pw)

mydata4 <-iris %>% group_by(s)%>% summarise(sl_mean=mean(sl),
                                            sw_mean=mean(sw),
                                            pl_mean=mean(pl),
                                            pw_mean=mean(pw),
                                            )
ggplot(data=iris,aes(x=sl, y=pw))+geom_line()




























