library(KoNLP)
library(stringr)
library(dplyr)
library(wordcloud)
library(RColorBrewer)
useNIADic()
txt <-readLines('hiphop.txt')
head(txt)
txt<- gsub('\\W',' ',txt)
txt<- gsub('[0-9]','',txt)
txt<- gsub('[a-z]','',txt)
txt<- gsub('[A-Z]','',txt)
noun<-extractNoun(txt)
vc <-unlist(noun)

#데이터에 들어가는데 단순히 String형태로 집어넣고 싶다
wf<-as.data.frame(wc,stringsAsFactors = F) 
wf<-filter(wf,nchar(vc)>=2)
wf<-head(wf[order(wf$Freq,decreasing = T),],30)

wc <-function(a){
  library(ggplot2);
  # R 이미지화 방법
  #c:\\rproject\\
  if(a==1){
    pal <-brewer.pal(8,'Dark2') #Dark2를 통해서 여러가지 색상을 가져온다
    set.seed(1234)
    jpeg(filename = "wc.jpg", width = 1000, height = 1000, quality = 100)
    p=wordcloud(words=wf$vc,
                freq = wf$Freq,
                min.freq = 1,
                max.words = 200,
                random.order = F,
                color = pal,
                scale = c(12,1),
                rot.per = 0.1)
    print(p); 
    dev.off();
  }else if(a==2){
    library(ggplot2)
    pal <-brewer.pal(8,'Dark2') #Dark2를 통해서 여러가지 색상을 가져온다
    set.seed(1234)
    jpeg(filename = "wcbar.jpg", width = 1000, height = 1000, quality = 100)
    order<-arrange(wf,Freq)$vc
  p= ggplot(data=wf, aes(x=vc ,y=Freq)) +ylim(0,250)+geom_col()+coord_flip()+scale_x_discrete(limit=order)+geom_text(aes(label=Freq),hjust=-0.3)
  print(p); 
  dev.off();
  }
  
}