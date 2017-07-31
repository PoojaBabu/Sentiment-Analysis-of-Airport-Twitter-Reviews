library(stringr)
word_list = str_split(mco_arpt.data$textASCII, " ")
words = unlist(word_list)