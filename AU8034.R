png(file="AU8034.png",width=2500,height=1600,res=250)
par(mfrow=c(2,4))
for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,j3.1], xlab = "Time (Hr)", ylab = "",
         main = "M-Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 1.5), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,j3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 1.5)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,2], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,k3.1], xlab = "Time (Hr)", ylab = "",
         main = "M-Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 3), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,k3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 3)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,3], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,l3.1], xlab = "Time (Hr)", ylab = "",
         main = "M-Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 0.15), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,l3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 0.15)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,4], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,m3.1], xlab = "Time (Hr)", ylab = "",
         main = "M-Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 1.5), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,m3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 1.5)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,5], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,j3.2], xlab = "Time (Hr)", ylab = "",
         main = "F-Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 1.5), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,j3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 1.5)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,6], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,k3.2], xlab = "Time (Hr)", ylab = "",
         main = "F-Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 3), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,k3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 3)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,7], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,l3.2], xlab = "Time (Hr)", ylab = "",
         main = "F-Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 0.15), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,l3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 0.15)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,8], col = "red" , pch = 20)

for (i in 1:dim(TCA.df)[1]) {
  if (i == 1) {
    plot(time, TCA.df[i,m3.2], xlab = "Time (Hr)", ylab = "",
         main = "F-Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", ylim = c(0, 1.5), cex.main = 1.2)
  } else {
    plot(time, TCA.df[i,m3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", ylim = c(0, 1.5)) 
  }
  par(new=T)
}
points(AU8034.df[,1], AU8034.df[,9], col = "red" , pch = 20)
dev.off()