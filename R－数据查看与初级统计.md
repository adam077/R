## 数据查看

getwd() `查看默认目录`

setwd("C:\\Users\\ r") `设置默认目录`

loandata=data.frame(read.csv('loan_data.csv',header = 1)) `把csv文件读取为frame`

dim(loandata) `行数和列数`

names(loandata) `看列名称`

fix(loandata) `可视化表格`

head(loandata,n=10) `查看前10行，默认是前五行`

tail(loandata,n=10) `查看末10行`

typeof(loandata$loan_amnt) `查看类型`

is.integer(loandata$loan_amnt) `验证类型`

## 数据初级统计

loandata$loan_amnt=as.integer(loandata$loan_amnt) `转换类型`

summary(loandata) `统计表格，一般是最值，个数等等`

summary(loandata$loan_amnt) `统计某一列`

sum(loandata$loan_amnt) `求和`

length(loandata$member_id) `对该列字段进行计数`

length(unique(loandata$member_id)) `查看某列不同值的个数`

loan_int=round((loandata$total_rec_int)/(loandata$loan_amnt),digits = 2) `计算，并取两位小数`

head(cbind(loandata,loan_int)) `合并，并显示前5行`

loan_percent=round((loandata$loan_amnt)/sum(loandata$loan_amnt),digits =2) `计算，并取两位小数`

loandata=cbind(loandata,loan_percent) `合并，并放到loaddata里面`