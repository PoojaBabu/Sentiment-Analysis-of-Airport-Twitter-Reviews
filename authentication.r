library(ROAuth)
library(twitteR)
download.file(url='https://curl.haxx.se/ca/cacert.pem', destfile='cacert.pem')
consumer_key<-"NU3uppmlcFeV1e8rc3NGyqSU2"
consumer_secret<-"T6kmYIQ51klp6J62OdJ45LVirjz2iyD1xBB8CQ1Wex7x2OAf9z"
access_tokenURL<-"https://api.twitter.com/oauth/access_token"
request_tokenURL<-"https://api.twitter.com/oauth/request_token"
authorize_URL<-"https://api.twitter.com/oauth/authorize"
accessToken<-"3148034154-7COWnFQAMsx6iWUeg4PwBwmd7cevuNFz6N"
accessSecret<-"PcCwoyVSYkaG2DGgrPErnb8gpNzhLMYPllmikq4BR"
setup_twitter_oauth(consumer_key,consumer_secret,accessToken,accessSecret)
twitcred<-OAuthFactory$new(consumerKey=consumer_key,consumerSecret=consumer_secret,requestURL=request_tokenURL,authURL=authorize_URL,accessURL=access_tokenURL)
twitcred$handshake(cainfo="cacert.pem")