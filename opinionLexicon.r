hu.liu.pos = scan('~/R/MCOTwitterSentimAnalysis/positive-words.txt', what='character', comment.char=';')
hu.liu.neg = scan('~/R/MCOTwitterSentimAnalysis/negative-words.txt', what='character', comment.char=';')
pos.words=c(hu.liu.pos,'upgrade','great ride')
neg.words=c(hu.liu.neg,'wtf','hell','rude service','mechanial','old','outdated','shoot','epicfail')

