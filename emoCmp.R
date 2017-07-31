library(stringr)
emword_list = str_split(mco_arpt.data$emoticonTxt, " ")
wrds<-unlist(emword_list)
asci<-"[[<]][a-z][[digit]][[>]]|[[<]][[digit]][a-z][[>]]|[[<]][a-z][a-z][[>]]|[[<]][[digit]][[digit]][[>]]"
emoTweets<-" "
emoValues<-9999
emo.strg<-" "

for(i in 1:length(emword_list)){
  for(j in 1:length(emword_list[[i]])){
  emvectr<-(emword_list[[i]][j])
    {if(emomatch<-!is.na.data.frame(str_match(emvectr,asci)))
      {emoTweets<-c(emoTweets,emvectr)
      }
  }
  }
}
em.match<-match(emoTweets,emoticons_data$R.encoding)

for(i in 1:length(em.match))
  {
  
    
    {if(emoNotNull<-!is.na.data.frame(em.match[i]))
    {emoValues<-c(emoValues,em.match[i])
    }
    }
}

for(i in 2:length((emoValues))){
  value=emoValues[i]
  emo.desc=emoticons_data[value,]$Description
  trim="842 Levels: AERIAL TRAMWAY AIRPLANE ALARM CLOCK ALIEN MONSTER AMBULANCE AMERICAN FOOTBALL ANCHOR ANGER SYMBOL ... YELLOW HEART"
  emo.strg<-c(emo.strg,gsub(trim," ",emo.desc))
}

