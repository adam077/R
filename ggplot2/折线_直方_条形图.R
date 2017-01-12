#首先是数据
grade2<-round(runif(16,min=60,max=99))
grade1<-round(runif(16,min=60,max=99))
grades<-data.frame(id=1:16,class=c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4),grade1,grade2,sex=c('F','M','F','M','F','M','F','M','F','M','F','M','F','M','F','M'))
#折线图＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
p<-ggplot(data=grades, aes(x=id,y=grade1))#给p赋予数据

ggplot(g1,aes(x=id,y=value,color=factor(variable)))+geom_point()+geom_line()#只要把point改成line就好啦
ggplot(g1,aes(x=id,y=value,color=factor(variable)))+geom_line(linetype="dotted")#散点图。。
ggplot(g1,aes(x=id,y=value,color=factor(variable)))+geom_point()+geom_line(position='jitter')#jitter就是给个小扰动，防止重合不好观察，好像放点图那里比较好


#直方图＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃


p<-ggplot(grades,aes(x=class))#给p赋予数据
p+geom_histogram(binwidth = 0.2)#画散点图,太窄了可以调
p+geom_histogram(alpha=0.5)#透明度（这个配合stat的sum可以观察点图的密集程度，position也可以）
p+geom_histogram(aes(fill=sex),position='jitter')#因为是柱图，所以用fill填充内部比用color描轮廓来的明智
p+geom_histogram(aes(fill=sex),position='dodge')#position还有fill和stack


#条形图＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
#注意柱形图用来统计单变量的个数的
p<-ggplot(grades, aes(x=grade1))给p赋予数据
p+geom_bar(aes(fill=factor(class)),position='jitter',alpha=0.5)
p+geom_bar(aes(fill=factor(class)),alpha=0.5,width=3)+facet_wrap(~class)
