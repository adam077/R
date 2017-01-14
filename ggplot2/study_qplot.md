##qplot

library(reshape2)

class<-c(1,1,1,1,2,3,3,2,2,2,3,4,4,4,3,2,2,3)

grade<-c(12,324,23,52,23,534,23,534,234,435,234,43,23,34,23,45,23,56)

data<-data.frame(class,grade)

d1<-melt(data,id='class')

d2<-dcast(d1,class~variable,mean)

d3<-data.frame(class=d1[,1],year=c(1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1),grade=d1[,3])

library(ggplot2)

## example

qplot(x=class,y=grade,data=d3,
      geom = "auto",
      xlim = c(1, 3),ylim = c(0, 1000), 
      main = 'hi',
      xlab = 'deparse(substitute(x))',ylab = 'deparse(substitute(y))', 
      asp = NA,facets=~year)

qplot(x=class,data=d3,
      geom = "bar",
      main = 'hi',
      asp = NA)

## model

qplot(x=class,y=grade,data=d3,
      margins = FALSE,#是否显示边界
      geom = "auto",#point：散点图;line：曲线图;smooth：平滑曲线;jitter：另一种散点图;
      #boxplot：箱线图;histogram：直方图;density：密度分布图;bar：柱状图;
      stat = list(NULL),#
      position = list(NULL),#图形或者数据的位置调整
      xlim = c(NA, NA),ylim = c(NA, NA), 
      main = 'hi',
      xlab = deparse(substitute(x)),ylab = deparse(substitute(y)),
      asp = NA,#y轴数值长度与x轴数值长度的比值
      facets=~year)

## 饼状图 `http://www.cfanz.cn/?c=article&a=read&id=277815`