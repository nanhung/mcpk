if(!require(data.table)) {
  install.packages("data.table"); require(data.table)
}

if(!require(readr)) {
  install.packages("readr"); require(readr)
}

# 
TCE.2.12_v1 <- as.data.frame(fread("TCE.2.12.pop_1.csv"))
TCE.2.12_v2 <- as.data.frame(fread("TCE.2.12.pop_2.csv"))
TCE.2.12_v3 <- as.data.frame(fread("TCE.2.12.pop_3.csv"))
TCE.2.12_v4 <- as.data.frame(fread("TCE.2.12.pop_4.csv"))