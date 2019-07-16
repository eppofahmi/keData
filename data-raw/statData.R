# stat data

library(readr)

logistikmultinomial <- read_csv("data-raw/logistikmultinomial.csv", 
                                trim_ws = FALSE)

datapanel <- read_delim("data-raw/datapanel.csv", 
                        ";", escape_double = FALSE)

logistik <- read_delim("data-raw/logistik.csv", 
                       ";", escape_double = FALSE)

regresiDummy <- read_delim("data-raw/regresiDummy.csv", 
                           ";", escape_double = FALSE)

RegresiBerganda <- read_delim("data-raw/RegresiBerganda.csv", 
                              ";", escape_double = FALSE)

regresilinier <- read_delim("data-raw/regresilinier.csv", 
                            ";", escape_double = FALSE)

statData <- list(logistikMultinomial = logistikmultinomial, dataPanel = datapanel, 
                 logistik = logistik, regresiDummy = regresiDummy, regresiBerganda = RegresiBerganda, 
                 regresiLinier = regresilinier)

save(statData, file = "data/statData.rda", compress = "xz")
