#removing strings starting with "https"
tweettxt<-mco_arpt.data$textASCII
tweet_list<-lapply(tweettxt,function(x) gsub("htt.*"," ",x))
tweet_list=unlist(tweet_list)
mco_arpt.data$textASCII=tweet_list