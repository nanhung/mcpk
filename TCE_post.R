if(!require(data.table)) {
  install.packages("data.table"); require(data.table)
}

if(!require(readr)) {
  install.packages("readr"); require(readr)
}

# 
#TCE.2.12_v1 <- as.data.frame(fread("TCE.2.12.pop_1.csv"))
#TCE.2.12_v2 <- as.data.frame(fread("TCE.2.12.pop_2.csv"))

TCE.2.13_v1 <- read_table2("TCE.2.14.pop_1.1.out")
TCE.2.13_v2 <- read_table2("TCE.2.14.pop_1.2.out")
TCE.2.13_v3 <- read_table2("TCE.2.14.pop_1.3.out")
TCE.2.13_v4 <- read_table2("TCE.2.14.pop_1.4.out")
