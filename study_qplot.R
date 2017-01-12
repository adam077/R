#qplot

library(reshape2)
class<-c(1,1,1,1,2,3,3,2,2,2,3,4,4,4,3,2,2,3)
grade<-c(12,324,23,52,23,534,23,534,234,435,234,43,23,34,23,45,23,56)
data<-data.frame(class,grade)
d1<-melt(data,id='class')
d2<-dcast(d1,class~variable,mean)
d3<-data.frame(class=d1[,1],year=c(1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1),grade=d1[,3])
library(ggplot2)



#example
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

#model
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

#饼状图http://www.cfanz.cn/?c=article&a=read&id=277815










#ggplot
#点状图
#step1: p<-ggplot(data=mpg,mapping=aes(x=cty,y=hwy))
#step2: p+geom_point(aes(colour=factor(year),size=displ),alpha=0.5,position="jitter")
#       +stat_smooth()+scale_color_manual(values=c('blue2','red4'))
#       +scale_size_continous(range=c(4,10))
#       +coord_cartesian(xlim=c(15,25),ylim=(c(15,40))+facet_wrap(~year,ncol=1)
#       +opts(title=' ')+labs(y=' ',x=' ')
#       +guides(size=guide_legend(title=''),colour=guide_legend(title='',override.aes=list(size=5)))

#柱形图
#很简单，单变量就好了
#step1: p<-ggplot(mpg,aes(x=hxy))
#step2: p+geom_histogram(aes(fill=factor(year),y=..density..),alpha=0.3,colour='black')
#       +stat_density(geom='line',position='identity',size=1.5,aes(colour=factor(year)))
#       +facet_wrap(~year,ncol=1)

#条形图（直方图）
#很简单，单变量就好了，但直方图可以多变量
#p<-ggplot(mpg, aes(x=class))
#p+geom_bar(aes(fill=factor(class2)),position='identity',alpha=0.5)+facet_wrap(~year)

#饼状图
#p<-ggplot(mpg,aes(x=factor(1),fill=factor(class)))+geom_bar(width=1)
#p+coord_polar(theta="y")

#箱线图
#p<-ggplot(mpg, aes(class,hwy,fill=class))
#p+geom_boxplot()

#折线图
#树图
#地图