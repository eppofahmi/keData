library(tidyverse)
library(RCurl)

stopwords_id <- read.delim(text=getURL("https://raw.githubusercontent.com/eppofahmi/ID-Stopwords/master/id.stopwords.02.01.2016.txt"), 
                           header=F)
write_csv(stopwords_id, "data-raw/stopwords_id.csv")
save(stopwords_id, file = "data/stopwords_id.rda", compress = "xz")
