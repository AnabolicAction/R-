exdata<-function(){
library(readxl);
  data<-read_excel('excel_exam_3.xlsx',sheet=2);
  return(data);
}

