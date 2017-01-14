#计数表
data<-data.frame(total=c(rep(4,13),1,1),left=rep(0,15),right=rep(0,15));
row.names(data)<-c(3:13,1,2,'小','大');
card<-1:15
#你是地主右手第几位
you<-scan('')
#开始
if(you==0){
  for(i in 1:1000){
  input<-scan('');
  if(sum(input)>0){
    for(i in 1:15){
      card[i]<-sum(input==i)
    }
    card_1<-c(card[3:13],card[1:2],card[14:15])
    data$total<-data$total-card_1;
    print(data)
  }



  input<-scan('');
  if(sum(input)>0){
    for(i in 1:15){
      card[i]<-sum(input==i)
    }
    card_1<-c(card[3:13],card[1:2],card[14:15])
    data$total<-data$total-card_1;
    data[[3]]<-data[[3]]+card_1;
    print(data)
  }
  
  
  input<-scan('');
  if(sum(input)>0){
    for(i in 1:15){
      card[i]<-sum(input==i)
    }
    card_1<-c(card[3:13],card[1:2],card[14:15])
    data$total<-data$total-card_1;
    data[[2]]<-data[[2]]+card_1;
    print(data)
  }
  
  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}else if(you==1){
  for(i in 1:1000){
    
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      data[[2]]<-data[[2]]+card_1;
      print(data)
    }
    
    
    
    
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      print(data)
    }
    
    
    
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      data[[3]]<-data[[3]]+card_1;
      print(data)
    }
    
    
    
    
    
  }


    
    
    
    
    
    
    
    
    
  
  
  
  
  
  
  
  
  
  
  
    
}else{
  for(i in 1:1000){
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      data[[3]]<-data[[3]]+card_1;
      print(data)
    }
    
    
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      data[[2]]<-data[[2]]+card_1;
      print(data)
    }
    
    
    
    
    input<-scan('');
    if(sum(input)>0){
      for(i in 1:15){
        card[i]<-sum(input==i)
      }
      card_1<-c(card[3:13],card[1:2],card[14:15])
      data$total<-data$total-card_1;
      print(data)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  }
}

