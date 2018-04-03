install.packages('RgoogleMaps')
library(RgoogleMaps)
library(dplyr)
library(readxl)

# 데이터 불러오기
raw_welfare <- read.csv(file = "seoul.csv", header=TRUE, sep = ',')


wifi <-function(a){
if(a==1){
com<-'KT'
jpg_name<-"KTwifi.jpg"
 
}else if(a==2){
 
  com<-'LGU+'
  jpg_name<-"LGwifi.jpg"
  
}else if(a==3){
  com<-'SKT'
  jpg_name<-"SKTwifi.jpg"
 
}
  raw_welfareLG<- raw_welfare[raw_welfare$com==com,]
  jpeg(filename = jpg_name, width = 1000, height = 1000, quality = 100)
  
  p<-PlotOnStaticMap(mymap,
                     lat= raw_welfareLG$lat,
                     lon= raw_welfareLG$lon,
                     cex=1, pch=10,col='red'
  )
  print(p) 
  dev.off()
}
