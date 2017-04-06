rm(list = ls())

system("./mcsim.TCE.2.10 TCE.2.10.forAbhi-BW.in")

TCA.df <- read.delim("TCE.2.10.forAbhi-BW.out", head = T)

time = c(1,2,6,12,24,36)

which(colnames(TCE.df)=="CKidTCAmol_1.1")

x<-c(1, 2, 6, 12)
y<-c(2.049377208, 1.245486193, 0.310472183, 0.211421705)
kid.df<-data.frame(x,y)

j = 157:(157+5) 

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,j], xlab = "", ylab = "",
         main = "Kidney", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 3), cex.main = 1.4)
    mtext("APAP (ug/ml)", 2, 4, cex = 1)
  } else {
    plot(time, TCA.df[i,j], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 3)) 
  }
  par(new=T)
}
points(kid.df$x, kid.df$y, col = "red" , pch = 20)