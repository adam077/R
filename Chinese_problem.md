#中文显示问题
read.csv('',fileEncoding = 'GB2312')
write.csv(x,'',fileEncoding = )


#关于plot
par(family='STKaiti')
plot(a[[1]],a[[2]])
#or
plot(a[[1]],a[[2]],family='STKaiti')


#另一种是因子化factor
a<-1:3;b<-factor(a,1:3,labels = c('一','二','三'))
plot(b,2:4)

#第三种是利用textshow
family='STKaiti'
showtext.begin()
ggplot(a,aes(x=地区,y=利润总额)+geom_point()
showtext.end();
asd<-read.csv('/Users/adam077/Desktop/SPSS数据.csv',fileEncoding = 'GB2312')
a<-na.omit(asd[,1:(length(names((asd)))-2)])

#第四种
library(ggplot2)
ggplot(data.frame(x = rnorm(100))) +
  geom_histogram(aes(x), fill = 'purple', alpha = 0.6) +
  labs(x = 'X 取值', y = '频数 Count') +
  theme(text = element_text(family = 'STKaiti'))