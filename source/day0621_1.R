#98p
install.packages("dpl.yr")
library(dplyr)

mpg1 <- read.csv("r/mpg1.csv", stringsAsFactors = F) #설치 위치 확인 

data2 <- mpg1 %>% 
  select(drv, cty, hwy) %>%
  filter(drv == "f")

data3 <- select(mpg1, drv, cty, hwy)
data3 <- filter(data3, drv == "f")

#변수 이름 바꾸기 
mpg1_byhash <- mpg1%>%
  rename(transmissions= trans,
         drive_method = drv,
         city = cty,
         highway = hwy)
str(mpg1_byhash).

mpg1_byhash_1 <- rename(mpg1 , transmission = trans,
                       drivemethod = drv,
                       city = cty,
                       highway = hwy)

#빈도분석 : count 
count(mpg1,trans)
table(mpg1$trans)


class(count(mpg1,trans)) #데이터 프레임 
class(table(mpg1$trans)) #테이블

#필요한 열 추출
box <- mpg1 %>%select(manufacturer,trans,cty)
artbox <- mpg1 %>% select(trans,hwy)

#불필요 열 삭제 
artbox2 <- mpg1 %>% select(-trans)
artbox3 <- select(artbox2,-hwy)

#행 추출 
mpg1%>%slice(1,2)
slice(mpg1,1,2)

#데이터 미리보기 
glimpse(iris)
iris%>%filter(Species == "setosa")

iris%>% 
  filter(Species != "virginica") %>%
  select(Sepal.Length, Sepal.Width) %>%
  filter(Sepal.Length > 5.0) %>%
  mutate(total = Sepal.Length + Sepal.Width) -> datahash 

#121p
mpg1 %>%
  summarise(avg = mean(cty) , #평균 
            total = sum(cty) , #총합
            med = median(cty) , #분석값
            count = n()) #중간값

            

#mutate 파생변수 
mpg2 <- mpg1 %>%
  mutate(total = cty + hwy) %>% glimpse()

mpg3 <- mpg1 %>%
  mutate(total = cty - hwy) %>% glimpse()

#집단분류 
mpg1%>%group_by(trans)

#집단 통계 
mpg1 %>% summarise(m=mean(cty)) #mpg1 에 있는 cty의 평균을 구해라
mean(mpg1$cty)
