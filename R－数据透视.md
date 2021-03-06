# 数据透视表
library(reshape2)

## 产生一个成绩表
first_grade<-round(runif(12,min=0,max=99))

second_grade<-round(runif(12,min=0,max=99))

grades<-data.frame(id=1:12,class=c(1,1,1,2,2,2,3,3,3,4,4,4),first_grade,second_grade,sex=c('F','F','M','M','M','F','F','F','M','M','M','F'))

head(grades,5)


## 以班级为第一排序条件，对第一成绩进行倒序
grades[order(grades$class,-grades$first_grade),][2:3]

## 筛选第一次考试中成绩大于50的人
grades[grades$first_grade>50,][3]

grades[grades$first_grade>50,][[3]]#这个是用于产生vector
## 统计班级个数（按班级名排序，虽然这里看不出来）
table(grades[2])

## 查看每个班级第一次考试的平均分
tapply(grades$first_grade,list(grades$class),mean)

tapply(grades$first_grade,list(grades$class,grades$sex),mean)

## 查看每个班级第一次考试的倒数第二名
seco<-function(x){sort(x)[2]}

## 查看每个班级不同性别第一次考试的平均分
tapply(grades$first_grade,list(grades$class),seco)

## 查看每个班级不同性别学生的平均值
t<-melt(grades,id.vars = c('class','sex'))

dcast(t,class+sex~variable,mean)

## 用更加暴力的`aggregate`方法

aggregate(data=grades,cbind(first_grade,second_grade)~class+sex,mean)

aggregate(grades,by=list(class,sex),FUN=mean)
