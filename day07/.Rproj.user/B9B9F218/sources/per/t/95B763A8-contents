install.packages('ggiraphExtra')
install.packages('stringi')
install.packages('devtools')
devtools::install_github('cardiomoon/moonbook2')
library(kormaps2014)
library(dplyr)
library(stringi)
str(changeCode(korpop1))
kormap1<-rename(korpop1,
                pop='총인구_명',
                name='행정구역별_읍면동')

str(changeCode(korpop1))

ggChoropleth(
  data=korpop1,
  aes(fill=pop,map_id=code,tooltip=name),
  map=kormap1,
  interactive=T
)

library(ggplot2)
theme_set(theme_gray(base_family="NanumGothic"))

ggplot(korpop1,aes(map_id=code,fill=총인구_명))+
  geom_map(map=kormap1,colour="black",size=0.1)+
  expand_limits(x=kormap1$long,y=kormap1$lat)+
  scale_fill_gradientn(colours=c('white','orange','red'))+
  ggtitle("2015년도 시도별 인구분포도")+
  coord_map()













































