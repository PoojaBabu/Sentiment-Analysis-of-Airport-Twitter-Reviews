#cleaning odd charecters
mco_arpt.data$emoticonTxt<-iconv(mco_arpt.data$emoticonTxt,"latin1", "ASCII", "byte")


#removing strings starting with "https"
tweettxt<-mco_arpt.data$emoticonTxt
tweet_list<-lapply(tweettxt,function(x) gsub("htt.*"," ",x))
tweet_list=unlist(tweet_list)
mco_arpt.data$emoticonTxt=tweet_list
