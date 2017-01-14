url<-'https://www.douban.com/doulist/43959521/?start='
web<-readLines(url,encoding="UTF-8")
summary(web)
#grep('        [\u4e00-\u9fa5]',web, value =TRUE)
#首先指寻找网页源代码中有中文的项，发现有点多

#grep('        [\u4e00-\u9fa5]',web, value =TRUE)
#在中文前加上空格，匹配的更精准


#最后取我们想要的那段即可进行数据整理
#可以发现用这种纯正则表达式的方法甚至比利用xpath或者css可能更轻松
#下面是爬到的内容
grep('        [\u4e00-\u9fa5]',web, value =TRUE)[14:163]
