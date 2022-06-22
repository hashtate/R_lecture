#패키지 설치
install.packages("ggplot2")
#패키지 설정
library(ggplot2)

#통계
#데이터
#내장 데이터 (mtcars)
#iris
str(iris)
help(str) #도움말
?str

ggplot(data = iris, aes(x = Sepal.Length,
                        y = Sepal.Width)) +
  
  geom_point()

