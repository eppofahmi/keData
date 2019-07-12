library(tidyverse)

pendapatan <- read_csv("data-raw/pendapatan.csv", 
                       trim_ws = FALSE)

# glimpse(kemenkes)
write_csv(pendapatan, "data-raw/pendapatan.csv")
save(pendapatan, file = "data/pendapatan.rda")
