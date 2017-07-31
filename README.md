# Sentiment Analysis of Airport Twitter Reviews
First we create an .R script to authorize R to use twitter API. The script is in the authentication.r file. The R script is run in the R console-asking to enter the pin to authorize R.The R console opens a web page in a browser. After clicking on the authorize app button, the pin is displayed in the browser. Copy the pin to the R console at the cursor. Saving the authorization credential object into a file.

Collecting and Storing Orlando airport twitter dataset into a data frame. The script is in twitterSeacrh.r file

Converting the dataset stored in the data frame "mco_arpt.data" into JSON format using "jsonlite" package . The script is in dfToJson.r file.

For applying sentiment analysis, download hu-liu opinion lexicon and store in the R project directory.

Store the positive and negative lexicon files in R objects and upgrade the lexicon with more industry specific words. The script is in opinionLexicon.r file.

Clean the data-by creating a new column that converts the odd characters into ASCII format to map them out to their corresponding ASCII code of emoticons in a csv file. This is in dataClean_2.r

Clean the data-by removing the strings starting with "https". The script is in dataClean_3.r file.

Clean the data by removing punctuation, control characters and digits. The script is in dataClean_4.r file.

Now we start splitting the sentence to list of words. The script is in SplitSentToWrd.r file.

The obtained word list is compared to the lexicons and then positive and negative matches are recorded for each tweet and scored. The script is available in cmprWrd_PosNeg.R  file.

Clean data for emoticon sentiment analysis . The script is available in EmoClean.R file.

Using regular expressions, extracted the ASCII encoded emoticons in each tweet. After capturing the ASCII coded emojis, matched them with encodings of emoticon_dataframe and obtained positions of those emojis.Extracted the underlying definition of emojis. The script is available in emoCmp.R file.

Web Scraping the table data that has the scored sentiment of different emojis.Matching the underlying definitions of emojis to extract the score for each emoji definition from tweets. The script is available in scorEmoRead.R file.

Merging "empNameScore" dataframe with "emoticons_data" dataframe. The script is available in mergeEmoTabls.R file.

Scoring each tweet based on the emoji usage. The script is available in emoScore_PerTweet.R  file.
