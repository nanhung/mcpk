if(!require(data.table)) {
  install.packages("data.table"); require(data.table)
}

if(!require(readr)) {
  install.packages("readr"); require(readr)
}

# 
#TCE.2.12_v1 <- as.data.frame(fread("TCE.2.12.pop_1.csv"))
#TCE.2.12_v2 <- as.data.frame(fread("TCE.2.12.pop_2.csv"))

TCE.2.13_v1 <- read_table2("TCE.2.13.pop_1.5.out")
TCE.2.13_v2 <- read_table2("TCE.2.13.pop_1.6.out")
TCE.2.13_v3 <- read_table2("TCE.2.13.pop_1.7.out")
#TCE.2.13_v4 <- read_table2("TCE.2.13.pop_2.4.out")
