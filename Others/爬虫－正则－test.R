https://movie.douban.com/top250?start=0
view-source:https://movie.douban.com/top250?start=0


url<-'https://movie.douban.com/top250?start=0'
web<-readLines(url,encoding="UTF-8")


web1<-readLines(url,encoding="UTF-8",n=1)
grepl('[<img alt=\"]*[\" src=]',web)













grep('\\',c('\"','asdf'))
Error in grep("\\", c("\"", "asdf")) : 
  正规表现’\'不对，原因是'Trailing backslash'
> grep('[\\]',c('\"','asdf'))
integer(0)
> grep('[\]',c('\"','asdf'))
错误: 由"'[\]"开头的字符串中存在'\]'，但没有这种逸出号
> grep('[\\]',c('\"','asdf'))
integer(0)
> grep('[\\]',c('\"asd','asdf'))
integer(0)
> grep('[\\]',c('\asd','asdf'))
integer(0)
> grep('[\\]',c('asd\asd','asdf'))
integer(0)
> grep('\b[\u4e00-\u9fa5]',web,value = T)
character(0)
> grep('\bhi\b.*\bLucy\b','hi asdaghLucyasdg')
integer(0)
> grep('\bhi\b.*\bLucy\b','hi asdaghLucy')
integer(0)
> grep('\bhi\b.*\bLucy\b','hiasdaLucy')
integer(0)
> grep('\bhi\b.*\bLucy\b','hiaLucy')
integer(0)
> grep('\bhi\b.*\bLucy\b','hiaLucyasd')
integer(0)
> grep('[\bhi\b.*\bLucy\b]','hiaLucyasd')
[1] 1
> grep('[\bhi\b.*\bLucy\b]','dfshiaLucyasd')
[1] 1
> grep('\b[\u4e00-\u9fa5]','你好',value = T)
character(0)
> grep('[\u4e00-\u9fa5]','你好',value = T)
[1] "你好"
> grep('[\u4e00-\u9fa5]','asd\你好',value = T)
错误: 由"'asd\�"开头的字符串中存在'\�'，但没有这种逸出号
> grep('[\u4e00-\u9fa5]','asd\asd你好',value = T)
[1] "asd\asd你好"
> grep('[\\\u4e00-\u9fa5]','asd\你好',value = T)
错误: 由"'asd\�"开头的字符串中存在'\�'，但没有这种逸出号
> grep('[>\u4e00-\u9fa5]','>你好',value = T)
[1] ">你好"
> grep('[>\u4e00-\u9fa5]','你好',value = T)
[1] "你好"
> grep('[>\u4e00-\u9fa5]8','你好',value = T)
character(0)
> grep('[>\u4e00-\u9fa5]8','你好8',value = T)
[1] "你好8"
> grep('title\\\">[\u4e00-\u9fa5]',web,value = T)
[1] "            <p class=\"appintro-title\">豆瓣</p>"                           
[2] "                            <span class=\"title\">肖申克的救赎</span>"      
[3] "                            <span class=\"title\">这个杀手不太冷</span>"    
[4] "                            <span class=\"title\">霸王别姬</span>"          
[5] "                            <span class=\"title\">阿甘正传</span>"          
[6] "                            <span class=\"title\">美丽人生</span>"          
[7] "                            <span class=\"title\">千与千寻</span>"          
[8] "                            <span class=\"title\">辛德勒的名单</span>"      
[9] "                            <span class=\"title\">泰坦尼克号</span>"        
[10] "                            <span class=\"title\">海上钢琴师</span>"        
[11] "                            <span class=\"title\">盗梦空间</span>"          
[12] "                            <span class=\"title\">机器人总动员</span>"      
[13] "                            <span class=\"title\">三傻大闹宝莱坞</span>"    
[14] "                            <span class=\"title\">放牛班的春天</span>"      
[15] "                            <span class=\"title\">忠犬八公的故事</span>"    
[16] "                            <span class=\"title\">大话西游之大圣娶亲</span>"
[17] "                            <span class=\"title\">龙猫</span>"              
[18] "                            <span class=\"title\">教父</span>"              
[19] "                            <span class=\"title\">乱世佳人</span>"          
[20] "                            <span class=\"title\">天堂电影院</span>"        
[21] "                            <span class=\"title\">楚门的世界</span>"        
[22] "                            <span class=\"title\">当幸福来敲门</span>"      
[23] "                            <span class=\"title\">搏击俱乐部</span>"        
[24] "                            <span class=\"title\">触不可及</span>"          
[25] "                            <span class=\"title\">指环王3：王者无敌</span>" 
[26] "                            <span class=\"title\">十二怒汉</span>"          
[27] "            <span class=\"main-title\">豆瓣</span>"                         
[28] "            <span class=\"sub-title\">让好电影来找你</span>" 


> grep('\\\"',c('\"','asdf'))
[1] 1
> grep('>[\u4e00-\u9fa5]a','asd>好<asd',value = T)
character(0)
> grep('>[\u4e00-\u9fa5].*a','asd>好<asd',value = T)
[1] "asd>好<asd"
> grep('average\">.*<',web,value = T)
 [1] "                                <span class=\"rating_num\" property=\"v:average\">9.6</span>"
 [2] "                                <span class=\"rating_num\" property=\"v:average\">9.4</span>"
 [3] "                                <span class=\"rating_num\" property=\"v:average\">9.5</span>"
 [4] "                                <span class=\"rating_num\" property=\"v:average\">9.4</span>"
 [5] "                                <span class=\"rating_num\" property=\"v:average\">9.5</span>"
 [6] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
 [7] "                                <span class=\"rating_num\" property=\"v:average\">9.4</span>"
 [8] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
 [9] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[10] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[11] "                                <span class=\"rating_num\" property=\"v:average\">9.3</span>"
[12] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[13] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[14] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[15] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[16] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[17] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[18] "                                <span class=\"rating_num\" property=\"v:average\">9.2</span>"
[19] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[20] "                                <span class=\"rating_num\" property=\"v:average\">9.0</span>"
[21] "                                <span class=\"rating_num\" property=\"v:average\">8.9</span>"
[22] "                                <span class=\"rating_num\" property=\"v:average\">9.0</span>"
[23] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[24] "                                <span class=\"rating_num\" property=\"v:average\">9.1</span>"
[25] "                                <span class=\"rating_num\" property=\"v:average\">9.3</span>"
> 





JSON用于传递数据（毕竟数据可能会变）
如：
＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
library(rjson);
#Error in library(rjson) : 不存在叫‘rjson’这个名字的程辑包
#install.packages("rjson")

#Warning message:
#  程辑包‘rjson’是用R版本3.2.2 来建造的 

file <- readLines("json.json")

employees <- fromJSON(paste(file, collapse=""))

for(employee in employees[[1]]) {
  print(paste(employee$firstName, employee$lastName));
  print("-------------------------------")
}

＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃


chrome js（from network）：但是要找到它的数据接口不是很烦吗（找到接口，在新页面打开）