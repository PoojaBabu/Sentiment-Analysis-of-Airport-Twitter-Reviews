require(XML)
emoScoreTabl=readHTMLTable("http://kt.ijs.si/data/Emoji_sentiment_ranking/index.html",header=TRUE,as.data.frame = TRUE)
emoScoreDF<-as.data.frame(emoScoreTabl,row.names = NULL,optional=FALSE,cut.names=FALSE,col.names=names(emoScoreTabl))
emoScoreMatch=match(emo.strg,emoScoreDF$myTable.Unicode.name)
emoScorePos=9999
for(i in 1:length(emoScoreMatch))
if(!is.na(emoScoreMatch[i])){emoScorePos=c(emoScorePos,emoScorePos=emoScoreMatch[i])}
emoScoreD<-NA
emoScoreN<-NA
for(a in 2:length(emoScorePos)){
  emoData=emoScorePos[a]
  emoScoreDesc<-(emoScoreDF[(emoData),]$myTable.Sentiment.score..1....1.)
  emoScoreName<-(emoScoreDF[(emoData),]$myTable.Unicode.name)
  trim="410 Levels: -0.011 -0.017 -0.020 -0.023 -0.030 -0.032 -0.033 -0.037 -0.038 -0.045 ... 0.958"
  trim2="751 Levels: AIRPLANE ALARM CLOCK ALIEN MONSTER AMBULANCE AMERICAN FOOTBALL ... YIN YANG"
  emoScoreDesc<-(gsub(trim," ",emoScoreDesc))
  emoScoreName<-(gsub(trim2," ",emoScoreName))
  emoScoreD<-c(emoScoreD,emoScoreDesc)
  emoScoreN<-c(emoScoreN,emoScoreName)
 
  
}

emoNameScore<-(cbind.data.frame(emoScoreD[2:length(emoScoreD)],emoScoreN[2:length(emoScoreN)]))

  
  
