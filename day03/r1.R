library('googleVis')
head(Fruits)
class(Fruits)
banana<-Fruits[Fruits$Fruit=='Bananas' ,]
result<-sum(banana$Sales)
aggregate(Sales~Fruit,Fruits,sum)  #과일별(Fruit) 판매 합계 , Sales 가 함수를 적용할대상 ,

df1<-aggregate(Profit~Year+Fruit,Fruits,sum) #년도별(Year)과일별(Fruit) 이익 합계 , Profit 가 함수를 적용할대상 ,

df2<-Fruits[,c(4:6)]
colSums(df2)

round(apply(df2,2,mean),1)

#1.Fruits 데이터를 기반으로 년도별 월별 Sales 합을 구하시오

df3<-aggregate(Sales~Year+substr(Date,6,7),Fruits,sum)
df4<-aggregate(Profit~Year+substr(Date,6,7),Fruits,sum)

#2.1번의 결과를 기반으로 순이익(Psales)컬럼을 추가한다 공식(Sales-Profit)*1.83
(cbind(df3,Psales=(df3$Sales -df4$Profit)*1.83))


#3.년별 월별 세금을 계산한다. 세금은 (총 판매액(Sales)-총수익(Profit))-0.1 이다. 년월세금
Fee<-(Fruits$Sales-Fruits$Profit)*0.1
Month<-(substr(Fruits$Date,6,7))
aggregate(Fee~Year+Month,Fruits,sum)




























