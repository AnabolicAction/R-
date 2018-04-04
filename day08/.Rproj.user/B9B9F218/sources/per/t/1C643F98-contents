install.packages('RJDBC')
install.packages('DBI')
install.packages('rJava')
library(rJava)
library(RJDBC)
library(DBI)
library(ggplot2)

drvName <- 'oracle.jdbc.driver.OracleDriver';
id <- 'ruser';
pwd <- '111111';
url <- 'jdbc:oracle:thin:@localhost:1521:XE';
# DB 접근 과정(Java도 똑같음)
# 1. Driver Loading
drv <- JDBC(driverClass = drvName, 
            classPath = 'C:\\java_hive_lib\\ojdbc6.jar')

# 2. Connection
conn <- dbConnect(drv, url, id, pwd)

# 3. Statement                    # sql문 작성 전송
sqlstr <- 'select trunc(months_between(sysdate,HIREDATE)) AS MONTHSAL ,SAL from emp';

# 4. ResultSet                    # 값 받기  이 때, data.frame으로 받음
emp <- dbGetQuery(conn,sqlstr);

# 5. Close
dbDisconnect(conn)



ggplot(data=emp,aes(x=MONTHSAL, y=SAL))+geom_line()










































