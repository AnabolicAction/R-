exdata <- function() {
  data <- read.csv('open_wifi.csv',stringsAsFactors = F);
  return (data);
}
writedata <- function(df){
  write.csv(df, file='open_wifi.csv');
}
data <- exdata()
class(data)

#통신사별 와이파이 갯수

wifi_kt<-nrow(data[data$통신사=='KT',])
wifi_lg<-nrow(data[data$통신사=='LGU+',])
wifi_skt<-nrow(data[data$통신사=='SKT',])

names <- c('KT','LGU','SKT');

count <- c(wifi_kt, wifi_lg, wifi_skt);

dfff <- data.frame(names, count);

class(dfff)

#광역시별 통신사 갯수 

data[data$광역시도.국문.=='경상북도',] $ nrow(data[data$통신사=='KT])



















