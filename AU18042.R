png(file="AU18042TCA.png",width=2500,height=1600,res=250)
par(mfrow=c(2,4))
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCA.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCA.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCA.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCA.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,2], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCA.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCA.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCA.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCA.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCA.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,3], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^1))
  } else {
    plot(time, df[i,KidTCA.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCA.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,4], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCA.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCA.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCA.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCA.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCA.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,5], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCA.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCA.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCA.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCA.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,6], col = "red" , pch = 20, cex=1.4)


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCA.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,7], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCA.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCA.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,8], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCA.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCA.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCA.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCA.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCA.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,9], col = "red" , pch = 20, cex=1.4)

dev.off()


png(file="AU18042.png",width=2500,height=1600,res=250)
par(mfrow=c(2,4))
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOH.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,10], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,11], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,12], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.1.1], xlab = "Time (hr)", ylab = "",
         main = "M-Serum DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,13], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOH.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCOH.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,14], col = "red" , pch = 20, cex=1.4)


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,15], col = "red" , pch = 20, cex=1.4)


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,16], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.1.2], xlab = "Time (hr)", ylab = "",
         main = "F-Serum DCVC", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,17], col = "red" , pch = 20, cex=1.4)

dev.off()