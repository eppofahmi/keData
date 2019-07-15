library(readr)
normaliselexicon <- read_csv("data-raw/normaliselexicon.csv", 
                    trim_ws = FALSE)

write_csv(normaliselexicon, "data-raw/normaliselexicon.csv")
save(normaliselexicon, file = "data/normaliselexicon.rda", compress = "xz")
