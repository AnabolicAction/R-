install.packages('RgoogleMaps')
library(RgoogleMaps)

mycenter = c(37.525083, 127.055982)
mymap <- GetMap(
  center=mycenter,
  zoom=11,
  maptype='road',
  format='roadmap',
  destfile = 'mymap.jpg'
  
)
win.graph();
jpeg(filename = "mypoint.jpg", width = 1000, height = 1000, quality = 100)
mydata <-data.frame(
  a=c(1:5),
  lot=c(37.515083,37.525013,37.535023,37.545033,37.555043),
  lon=c(127.055952,127.045942,127.035932,127.025922,127.015912)
  )
p<-PlotOnStaticMap(mymap,
                lat= mydata$lot,
                lon= mydata$lon,
                destfile = 'mymap_point.jpg',
                cex=1, pch=10,col='red'
)
print(p) 
dev.off()
































