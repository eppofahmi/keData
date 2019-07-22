library(tidyverse)

kedataTwit <- read_delim("data-raw/kedataTwit.csv", 
                       ",", escape_double = FALSE, col_names = FALSE)

colnames(kedataTwit) <- c("created_at", "time", "username", "text", "is_retweet", 
                        "reply", "retweet", "favorite", "source")

kedataTwit <- kedataTwit %>% 
  filter(source != "NA") %>% 
  filter(!str_detect(time, "yayasan pemerhati kanker"))

kedataTwit <- kedataTwit[-c(1:3), ]

# glimpse(kemenkes)
write_csv(kedataTwit, "data-raw/kedataTwit.csv")
save(kedataTwit, file = "data/kedataTwit.rda", compress = "xz")
