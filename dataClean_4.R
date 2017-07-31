tweet_list<-lapply(tweet_list,function(x)  gsub("[[:punct:]]", "", x))
tweet_list<-lapply(tweet_list,function(x)  gsub("[[:cntrl:]]", "", x))
tweet_list<-lapply(tweet_list,function(x)  gsub("[[digit:]]:","", x))
tweet_list<-lapply(tweet_list,function(x)  gsub("[[\t]{2,}]]:","", x))
tweet_list=unlist(tweet_list)
mco_arpt.data$textASCII=tweet_list

