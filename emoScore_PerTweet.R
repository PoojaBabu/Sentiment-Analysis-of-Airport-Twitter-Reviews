mco_arpt.data$emoTweetScore=NA
for(a in 1:(dim(mco_arpt.data))[1]){
  library(stringr)
  emo.Tweet.Score=0
  
  emword_list2 = str_split(mco_arpt.data[a,]$emoticonTxt, " ")
  #wrds<-unlist(emword_list2)
  asci<-"[[<]][a-z][[digit]][[>]]|[[<]][[digit]][a-z][[>]]|[[<]][a-z][a-z][[>]]|[[<]][[digit]][[digit]][[>]]"
  emoTweets2<-" "
  emoValues2<-9999
  emo.strg2<-" "
  for(i in 1:length(emword_list2)){
    for(j in 1:length(emword_list2[[i]])){
      emvectr2<-(emword_list2[[i]][j])
      {if(emomatch2<-!is.na.data.frame(str_match(emvectr2,asci)))
      {emoTweets2<-c(emoTweets2,emvectr2)
      }
      }
    }
    
  }
  em.match2<-match(emoTweets2,emoMergeDF$R.encoding)
  for(k in 1:length(em.match2))
  {
    
    
    {if(emoNotNull2<-!is.na.data.frame(em.match2[k]))
    {emoValues2<-c(emoValues2,em.match2[k])
    }
    }
  }
  
  for(l in 2:length((emoValues2))){
    value2=emoValues2[l]
    emo.score=emoMergeDF[value2,]$Emo_score
    trim4="36 Levels: -0.093 -0.209 -0.368 -0.374 -0.397 0.063 0.178 0.221 0.231 0.254 0.269 0.320 ... 0.694"
    emo.score<-(gsub(trim4," ",emo.score))
    if(!is.na(emo.score)){emo.Tweet.Score=as.numeric(emo.score)+as.numeric(emo.Tweet.Score)}
    
  }
  
  mco_arpt.data[a,]$emoTweetScore=emo.Tweet.Score
  
}