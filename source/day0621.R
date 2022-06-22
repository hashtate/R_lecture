#5장 


#데이터 불러오기 
#경로 설정이 매우 중요 
getwd()
mpg1 <- read.csv("mpg1.csv",stringsAsFactors = F) #mpg1 소환술
str(mpg1)
#manufacturer 제조회사 trans 변속기 drv 구동방식 cty 시내연비 hwy 고속연비

#교차분석 : table(데이터세트$변수1, 데이터세트$변수2)
#아래 표는 TRANS 와 DRV 의 교차분석 
table(mpg1$trans,mpg1$drv)

#통계 공부 방법
#빈도 주의자 vs 베이지안 주의자 
#일반적으로 빈도주의 / 숫자를 셈 

#통계 언어 
mean(mtcars$mpg) #평균
var(mtcars$mpg) #분산
sd(mtcars$mpg) #표준편차
#표준편차는 비교 대상이 있어야 가치가 있고 활용 가능 

#사분위수 
#전체 수를 4등분한 수 
# IQR : 1사분위와 3사분위수 사이의거리 
#소득분위
#통계분석 / 머신러닝 -> 이상치를 제거했을때 

quantile(mtcars$mpg)

#통계요약 구하기 
summary(iris)

#중간값 : 100명중 50번째 키순의 값 
#평균 : 전체 키 합의 /100
#두 개가 같을 수 없다 

summary(iris$Sepal.Length)
 
#빈도 분석 
#범주별 빈도  --> 문자 
str(mpg1)
~#개별 값
table(mpg1$trans)
table(mpg1$manufacturer)
table(mpg1$drv)
#비교
table(mpg1$cty, mpg1$hwy)

#빈도의 비율 구하기
a <- table(mpg1$trans)
prop.table(a)

b <- table(mpg1$trans, mpg1$drv)
prop.table(b)

prop.table(table(mpg1$manufacturer))

#행과 열의 비율 형식 맞춘다 

prop.table(b, margin = 1)
prop.table(b, margin = 2)

#소숫점 아래 자리 지정  (0.32323 , 2번째 자리까지 맞춰라)
round(0.32321151315312,2)

round(prop.table(table(mpg1$trans)),2)

#https://gt.rstudio.com/ 참고용 테이블 이미지 템플릿 

