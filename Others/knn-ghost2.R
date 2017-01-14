https://www.kaggle.com/c/ghouls-goblins-and-ghosts-boo/data

library(class)
#数据导入
train<-read.csv('/Users/adam077/Downloads/train.csv')

head(train)
head(test)

#整理数据并标准化
train1<-data.frame(train[2:5])
for(i in 1:4){
  max<-max(train1[i])
  min<-min(train1[i])
  train1[i]<-(train1[i]-min)/(max-min)
}


#筛选训练集train11和测试集train12
total <- nrow(train1);
index <-sample(1:total, total*0.7)

train11 <- train1[index, ]
train12 <- train1[-index, ]
sum<-c(NA)
for(i in 1:39){
  result<-knn(
    train11, 
    train12, 
    cl=train[index,]$type, k=i
  )
  t<-table(train[-index,]$type, result)
  sum[i]<-t[1]+t[5]+t[9]
}


#比赛预测
test<-read.csv('/Users/adam077/Downloads/test.csv')
#test1<-data.frame(test[2:5],color=as.numeric(factor(test[[6]])))
test1<-data.frame(test[2:5])
result<-knn(
  train1, 
  test1, 
  cl=train$type, k=7
)
