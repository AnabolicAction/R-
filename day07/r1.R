install.packages('rJava')
install.packages('memoise')
install.packages('KoNLP')
install.packages('stringr')
install.packages('wordcloud')

library(rJava)
library(memoise)
library(KoNLP)
library(stringr)
library(dplyr)
library(wordcloud)
library(RColorBrewer)
useNIADic()
txt <-readLines('aaaaa.txt')
head(txt)
#txt<-readLines('http://www.sportalkorea.com')
txt<- gsub('\\W',' ',txt)
txt<- gsub('[0-9]','',txt)
txt<- gsub('[a-z]','',txt)
txt<- gsub('[A-Z]','',txt)
noun<-extractNoun(txt)
vc <-unlist(noun)
wc<-table(vc)

#데이터에 들어가는데 단순히 String형태로 집어넣고 싶다
wf<-as.data.frame(wc,stringsAsFactors = F) 
wf<-filter(wf,nchar(vc)>=2)
wf<-head(wf[order(wf$Freq,decreasing = T),],100)

pal <-brewer.pal(8,'Dark2') #Dark2를 통해서 여러가지 색상을 가져온다
set.seed(1234)
jpeg(filename = "wordcloud.jpg", width = 1000, height = 1000, quality = 100)
p=wordcloud(words=wf$vc,
          freq = wf$Freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          color = pal,
          scale = c(10,1),
          rot.per = 0.1)
print(p) 
dev.off()




















































