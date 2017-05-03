if(!require(data.table)) {
  install.packages("data.table"); require(data.table)
}

if(!require(readr)) {
  install.packages("readr"); require(readr)
}

# 
TCE.2.12_v1 <- as.data.frame(read_table2("TCE.2.12.pop_1.out"))
TCE.2.12_v2 <- as.data.frame(read_table2("TCE.2.12.pop_2.out"))