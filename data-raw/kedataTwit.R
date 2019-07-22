library(tidyverse)

kedataTwit <- read_csv("data-raw/kedataTwit.csv", 
                    trim_ws = FALSE)

colnames(kedataTwit) <- c("created_at", "time", "username", "text", "is_retweet", 
                        "reply", "retweet", "favorite", "source")

kedataTwit <- kedataTwit %>% 
  filter(source != "NA") %>% 
  filter(!str_detect(time, "yayasan pemerhati kanker"))

kedataTwit <- kedataTwit[-c(1:3), ]

# teks_clean <- tweet_cleaner(data = kedataTwit$text)

kedataTwit <- bind_cols(kedataTwit, teks_clean)

# glimpse(kemenkes)
write_csv(kedataTwit, "data-raw/kedataTwit.csv")
save(kedataTwit, file = "data/kedataTwit.rda", compress = "xz")
