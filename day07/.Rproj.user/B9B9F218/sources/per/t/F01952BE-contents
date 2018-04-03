library(KoNLP)
library(stringr)
library(dplyr)
library(wordcloud)
library(RColorBrewer)

txt1<-readLines('text1.txt')
txt2<-readLines('text2.txt')
txt3<-readLines('text3.txt')


txt<-c(txt1,txt2,txt3)
txt<- gsub('\\W',' ',txt)
txt<- gsub('[0-9]','',txt)
txt<- gsub('[a-z]','',txt)
txt<- gsub('[A-Z]','',txt)
txt<- gsub('_',' ',txt)
txt<- gsub('__',' ',txt)
txt<- gsub('  ','',txt)
txt<- gsub(' ',' ',txt)
txt<- gsub('들이',' ',txt)

txt <-extractNoun(txt) #명사끄집어낸다
vc<-unlist(txt)
wc<-table(vc)
wf<-as.data.frame(wc,stringsAsFactors = F)
wf<-filter(wf,nchar(wf$vc)>=2 &nchar(wf$vc)<=5)
str(wf)
wf<-head(wf[order(wf$Freq,decreasing = T),],30)


pal <-brewer.pal(8,'Dark2') #Dark2를 통해서 여러가지 색상을 가져온다
set.seed(1234)
jpeg(filename = "wordcloud.jpg", width = 1000, height = 1000, quality = 100)
p=wordcloud(words=wf$vc,
            freq = wf$Freq,
            min.freq = 1,
            max.words = 200,
            random.order = F,
            color = pal,
            scale = c(12,1),
            rot.per = 0.1)
print(p) 
dev.off()





































