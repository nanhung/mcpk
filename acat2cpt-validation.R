rm(list = ls())

if(!require(data.table)) {
  install.packages("data.table"); require(data.table)
}

theoph_v1.c1 <- read_table2("acat.2cpt.theoph_v1.c1.out")
theoph_v1.c2 <- read_table2("acat.2cpt.theoph_v1.c2.out")
theoph_v1.c3 <- read_table2("acat.2cpt.theoph_v1.c3.out")
theoph_v1.c4 <- read_table2("acat.2cpt.theoph_v1.c4.out")

data<-which(colnames(theoph_v1.c1)=="lnPC_duod(1.1.1)")

a<-theoph_v1.c1[902:1001, data:(data+6)]
b<-theoph_v1.c1[902:1001, data:(data+6)] 
c<-theoph_v1.c1[902:1001, data:(data+6)] 
d<-theoph_v1.c1[902:1001, data:(data+6)] 
df<-do.call(rbind, list(a, b, c, d))
df2<-do.call(cbind, list(79.6, df)) 
write.table(df2, file="acat2cpt-setpoint.dat", row.names=TRUE, sep="\t")
system("./mcsim.acat2cpt_v1 acat2cpt-setpoint.in")
sim <- read_table2("acat2cpt-setpoint.out")
