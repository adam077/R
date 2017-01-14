##重点用法

for() expr

seq(1,10,by=0.1)

rep(‘hi’,10)

while()expr

next `跳过循环`

break `终止循环`

function(参数){}

ifelse(condition,T,F)


##时间

sample(x,size,replace=FALSE) `抽样`

merge(x,y,by.x=,by.y=) `字段匹配`

posixlt<-as.posixlt(data,format) `日期转换`

format(posixlt,format) `日期格式化`

posixlt$property `日期抽取`


## 结构分析

prob.table(table(tapply()),margin=NULL)

## 相关分析

cor(**,**,**,…) or cor(data[,2:7])


## 简单线性回归

summary(`Im(y~x(+1),data= )`)

predict(ImModel,predictData,level=0.95)

pData<-read.table(…)
