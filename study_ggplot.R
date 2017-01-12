library(ggplot2)
library(reshape2)
class<-c(1,1,1,1,2,3,3,2,2,2,3,4,4,4,3,2,2,3)
grade<-c(12,324,23,52,23,534,23,534,234,435,234,43,23,34,23,45,23,56)
data<-data.frame(class,grade)
d1<-melt(data,id='class')
d2<-dcast(d1,class~variable,mean)
#点状图
#p<-ggplot(data=mpg,mapping=aes(x=cty,y=hwy))
#p+geom_point(aes(colour=factor(year),size=displ),alpha=0.5,position="jitter")+stat_smooth()+scale_color_manual(values=c('blue2','red4'))+scale_size_continous(range=c(4,10))+coord_cartesian(xlim=c(15,25),ylim=(c(15,40))+facet_wrap(~year,ncol=1)+opts(title=' ')+labs(y=' ',x=' ')+guides(size=guide_legend(title=''),colour=guide_legend(title='',override.aes=list(size=5)))
p<-ggplot(data=d2,mapping=aes(x=class,y=grade))
p+geom_point(aes(size=grade),alpha=0.5)+stat_smooth()

#柱形图
#很简单，单变量就好了
#p<-ggplot(mpg,aes(x=hxy))
#p+geom_histogram(aes(fill=factor(year),y=..density..),alpha=0.3,colour='black')+stat_density(geom='line',position='identity',size=1.5,aes(colour=factor(year)))+facet_wrap(~year,ncol=1)
p<-ggplot(d1,aes(x=class))
p+geom_histogram(alpha=0.3,colour='black')+stat_density(geom='line',position='identity',size=1.5)



#条形图（直方图）
#很简单，单变量就好了，但直方图可以多变量
#p<-ggplot(mpg, aes(x=class))
#p+geom_bar(aes(fill=factor(class2)),position='identity',alpha=0.5)+facet_wrap(~year)
p<-ggplot(d1, aes(x=class))
p+geom_bar(aes(fill=factor(class)),alpha=0.5)
p<-ggplot(d2, aes(x=class,y=grade))
p+geom_bar(aes(fill=factor(class)),alpha=0.5)


ggplot()+geom_bar(aes(x=c(LETTERS[1:3]),y=1:3), stat="identity")

ggplot(d1)+geom_density(aes(x=class, colour='red'))

#饼状图
#p<-ggplot(mpg,aes(x=factor(1),fill=factor(class)))+geom_bar(width=1)
#p+coord_polar(theta="y")
p<-ggplot(mpg,aes(x=factor(1),fill=factor(class)))+geom_bar(width=1)
p+coord_polar(theta="y")

#箱线图
#p<-ggplot(mpg, aes(class,hwy,fill=class))
#p+geom_boxplot()
p<-ggplot(d1, aes(class,value,fill=class))
p+geom_boxplot()

#折线图

#树图

#地图