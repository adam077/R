library(rvest)
#library(data.table)
fun<-function(i,url){
	#realurl<-paste(url,(i-1)*25)
	#realurl<-sub(' ','',realurl)
	realurl<-paste(url,(i-1)*25,sep='')
	web<-read_html(realurl,encoding="UTF-8")
	a<-web %>% html_nodes("div.bd.doulist-subject > div.title > a") %>% html_text()
	#a<-sub('\n        |\n      ','',a)
	a<-sub('\n        ','',a)
	a<-sub('\n      ','',a)
	data.frame(a)
}
final<- data.frame()
url<-'https://www.douban.com/doulist/43959521/?start='
for (i in 1:4){
	final<-rbind(final,fun(i,url))
}

write.table(final,"final.csv",fileEncoding="GB2312")