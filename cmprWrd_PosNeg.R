library(stringr)


for (i in 1:(dim(mco_arpt.data))[1]){
  words<-unlist(word_list[i])
  pos.count=0
  neg.count=0
  pos.matches<-lapply(words,function(x)match(words,pos.words))
  neg.matches<-lapply(words,function(x)match(words,neg.words))
  for(j in 1:length(pos.matches[[1]])){
    if(!is.na(pos.matches[[1]])[j]) {
      pos.count=pos.count+1
      }
  }
  mco_arpt.data$posCount[i]<-pos.count
  for(k in 1:length(neg.matches[[1]])){
    if(!is.na(neg.matches[[1]])[k]) {
      neg.count=neg.count+1
    }
  }
  
  mco_arpt.data$negCount[i]<-neg.count
  
}
