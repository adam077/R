## 读取与写入

read.table(file,header=FALSE,sep=‘’,filecoding=‘UTF-8’,stringsasfactors=FALSE)  `或者read.csv`

write.table(x,file=‘’,sep=‘ ’,row.names=TRUE,cl.names=TRUE,quote=FALSE)

## 空值

duplicated(loan$member_id) `查看特定列是否有重复，（false就是不重复)`

loan=unique(loan) `删除重复值，返回唯一值列表`

head(is.na(loan),n = 10) `查找数据表中的空值`

loan[is.na(loan)] <- 0 `用0代替空值`

loan<-na.omit(loan) `另外一种很粗暴的方法是删除有空值的行`

loan$loan_status=tolower(loan$loan_status) `**转小写**`

table(loan$loan_status) `按贷款状态进行汇总（比较与summary的区别）`



## 空格

install.packages('raster')

library(raster) `加载这个包`

loan_status=as.vector(loan$loan_status) `把loan_status一列变成向量（可以消除factor化）`

loan_s=trim(loan_status) `这个包:删除向量里面的空格`

loan$loan_status=loan_s

term=as.vector(loan$term) `把term那一列变成向量`

strsplit(term,' ') `然后用空格进行分列，excel也能用于分裂`

month=substr(loan$issue_d,4,6) `把loan_issue这一列的中的元素的第4-6位提取出来设为month`

## 缺失值

na.omit() `会删除行`

## 数据类型转换

as.number() as.logical() as.charactor()

## 字段粘贴

paste(**,**,sep=‘ ‘,collapse=‘ ’)

## 字符截取

substring(**,start,length)

substr

## 抓取

grep(‘ ‘,**) `得到位置`

grepl(      ) `得到逻辑值`

grepl(‘ ‘,**,value=T) `取值`

## 替换

sub(‘’,’’,**) `第一个`

gsub(‘’,’’,**) `所有`

## 其它
append() `加一个`

x[,-3] `减一列`

## `分组裁剪与因子化

cut(**,breaks=3)

factor(**,levels=c(),labels=c())

## list,tag,null

## 名字

names()

col.names()

row.names()

nrow()