library(tidyverse)

dataAnime <- read_csv("data-raw/dataAnime.csv", 
                       trim_ws = FALSE)

# glimpse(dataanime)

write_csv(dataAnime, "data-raw/dataAnime.csv")
save(dataAnime, file = "data/dataAnime.rda", compress = "xz")
