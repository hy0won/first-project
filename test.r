data<-readLines("C:/Users/kimhy/Desktop/kakao/talk.txt", encoding="UTF-8")

head(data)

library(wordcloud)
library(RColorBrewer)
library(KoNLP)

useSejongDic()

data <- sapply(data, extractNoun, USE.NAMES = F)

data_unlist <- unlist(data)
head(data_unlist)

data_unlist

wordcount_top <-head(sort(wordcount, decreasing = T),100)

wordcloud(names(wordcount_top), wordcount_top)