library(tidyverse)

dataAnime <- read_csv("data-raw/dataAnime.csv", 
                       trim_ws = FALSE)

dataAnime <- dataAnime[1:1000, ]

write_csv(dataAnime, "data-raw/dataAnime.csv")
save(dataAnime, file = "data/dataAnime.rda", compress = "xz")
