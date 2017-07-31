#cleaning odd charecters
mco_arpt.data<-cbind(mco_arpt.data,mco_arpt.data$textcon<-iconv(mco_arpt.data$text,"latin1", "ASCII", "byte"))
emoticons_data<-read.csv2(url("https://raw.githubusercontent.com/today-is-a-good-day/emojis/43217b7368b4e57f5b3290895083bfafce5ee0b4/emDict.csv"))


