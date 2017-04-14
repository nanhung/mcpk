png(file="AU18042M.png",width=2800,height=2400,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17),
              ncol=4, byrow = T),heights=c(1,3,3,3,3))
plot.new()
text(0.5,0.5,"AU18042 Male - 800 mg/kg TCE",cex=2,font=2)
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.1.1], xlab = " ", ylab = "",
         main = "Venous TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,VenTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,VenTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,VenTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,VenTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.1.1], xlab = " ", ylab = "",
         main = "Liver TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.1.1], xlab = " ", ylab = "",
         main = "Kidney TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,FatTCE.1.1], xlab = " ", ylab = "",
         main = "Fat TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,FatTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,FatTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,FatTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,FatTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.1.1], xlab = " ", ylab = "",
         main = "Brain TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LngTCE.1.1], xlab = " ", ylab = "",
         main = "Lung TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LngTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LngTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LngTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LngTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SlwTCE.1.1], xlab = " ", ylab = "",
         main = "Slw TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,SlwTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}

lines(AU18042.df[,1], apply(df[,SlwTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SlwTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SlwTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.1.1], xlab = " ", ylab = "",
         main = "Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
    plot(time, df[i,LivTCA.1.1], xlab = " ", ylab = "",
         main = "Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
    plot(time, df[i,KidTCA.1.1], xlab = " ", ylab = "",
         main = "Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
    plot(time, df[i,BrnTCA.1.1], xlab = " ", ylab = "",
         main = "Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
    plot(time, df[i,TotTCOH.1.1], xlab = " ", ylab = "",
         main = "CTCOH+CTCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,TotTCOH.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,TotTCOH.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,TotTCOH.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.1.1], xlab = " ", ylab = "",
         main = "Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
    plot(time, df[i,LivTCOH.1.1], xlab = " ", ylab = "",
         main = "Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,11], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.1.1], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,12], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.1.1], xlab = " ", ylab = "",
         main = "Serum DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df[,13], col = "red" , pch = 20, cex=1.4)

dev.off()


## Female ------
png(file="AU18042F.png",width=2800,height=2400,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17),
              ncol=4, byrow = T),heights=c(1,3,3,3,3))
plot.new()
text(0.5,0.5,"AU18042 Female - 800 mg/kg TCE",cex=2,font=2)
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.1.2], xlab = " ", ylab = "",
         main = "Venous TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,VenTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,VenTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,VenTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,VenTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.1.2], xlab = " ", ylab = "",
         main = "Liver TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.1.2], xlab = " ", ylab = "",
         main = "Kidney TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,FatTCE.1.2], xlab = " ", ylab = "",
         main = "Fat TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,FatTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,FatTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,FatTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,FatTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.1.2], xlab = " ", ylab = "",
         main = "Brain TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LngTCE.1.2], xlab = " ", ylab = "",
         main = "Lung TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LngTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LngTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LngTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LngTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SlwTCE.1.2], xlab = " ", ylab = "",
         main = "Slw TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,SlwTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}

lines(AU18042.df[,1], apply(df[,SlwTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SlwTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SlwTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.1.2], xlab = " ", ylab = "",
         main = "Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
points(AU18042.df[,1], AU18042.df$SrmTCA.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCA.1.2], xlab = " ", ylab = "",
         main = "Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCA.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCA.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCA.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCA.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$LivTCA.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.1.2], xlab = " ", ylab = "",
         main = "Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^1))
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
points(AU18042.df[,1], AU18042.df$KidTCA.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCA.1.2], xlab = " ", ylab = "",
         main = "Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
points(AU18042.df[,1], AU18042.df$BrnTCA.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,TotTCOH.1.2], xlab = " ", ylab = "",
         main = "CTCOH+CTCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,TotTCOH.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,TotTCOH.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,TotTCOH.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.1.2], xlab = " ", ylab = "",
         main = "Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
points(AU18042.df[,1], AU18042.df$SrmTCOH.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.1.2], xlab = " ", ylab = "",
         main = "Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCOH.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$LivTCOH.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.1.2], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVG.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$SrmDCVG.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.1.2], xlab = " ", ylab = "",
         main = "Serum DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmDCVC.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$SrmDCVC.1.2, col = "red" , pch = 20, cex=1.4)

dev.off()
