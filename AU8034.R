png(file="AU8034M.png",width=2800,height=2400,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17),
              ncol=4, byrow = T),heights=c(1,3,3,3,3))
plot.new()
text(0.5,0.5,"AU8034 Male - 800 mg/kg TCE",cex=2,font=2)
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.3.1], xlab = " ", ylab = "",
         main = "Venous TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,VenTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,VenTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,VenTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,VenTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.3.1], xlab = " ", ylab = "",
         main = "Liver TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.3.1], xlab = " ", ylab = "",
         main = "Kidney TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,FatTCE.3.1], xlab = " ", ylab = "",
         main = "Fat TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,FatTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,FatTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,FatTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,FatTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.3.1], xlab = " ", ylab = "",
         main = "Brain TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LngTCE.3.1], xlab = " ", ylab = "",
         main = "Lung TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LngTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LngTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LngTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LngTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SlwTCE.3.1], xlab = " ", ylab = "",
         main = "Slw TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,SlwTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}

lines(AU8034.df[,1], apply(df[,SlwTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SlwTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SlwTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.3.1], xlab = " ", ylab = "",
         main = "Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCA.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCA.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCA.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCA.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,2], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCA.3.1], xlab = " ", ylab = "",
         main = "Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCA.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCA.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCA.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCA.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,3], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.3.1], xlab = " ", ylab = "",
         main = "Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^1))
  } else {
    plot(time, df[i,KidTCA.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCA.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCA.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCA.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,4], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCA.3.1], xlab = " ", ylab = "",
         main = "Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCA.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCA.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCA.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCA.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,5], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,TotTCOH.3.1], xlab = " ", ylab = "",
         main = "CTCOH+CTCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotTCOH.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.3.1], xlab = " ", ylab = "",
         main = "Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )


for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.3.1], xlab = " ", ylab = "",
         main = "Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,11], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.3.1], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,12], col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.3.1], xlab = " ", ylab = "",
         main = "Serum DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df[,13], col = "red" , pch = 20, cex=1.4)

dev.off()


## Female ------
png(file="AU8034F.png",width=2800,height=2400,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17),
              ncol=4, byrow = T),heights=c(1,3,3,3,3))
plot.new()
text(0.5,0.5,"AU8034 Female - 800 mg/kg TCE",cex=2,font=2)
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.3.2], xlab = " ", ylab = "",
         main = "Venous TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,VenTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,VenTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,VenTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,VenTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,VenTCE.3.2], xlab = " ", ylab = "",
         main = "Liver TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.3.2], xlab = " ", ylab = "",
         main = "Kidney TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,FatTCE.3.2], xlab = " ", ylab = "",
         main = "Fat TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,FatTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,FatTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,FatTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,FatTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.3.2], xlab = " ", ylab = "",
         main = "Brain TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LngTCE.3.2], xlab = " ", ylab = "",
         main = "Lung TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,LngTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LngTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LngTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LngTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SlwTCE.3.2], xlab = " ", ylab = "",
         main = "Slw TCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^4), cex.main = 1.2)
  } else {
    plot(time, df[i,SlwTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^4)) 
  }
  par(new=T)
}

lines(AU8034.df[,1], apply(df[,SlwTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SlwTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SlwTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCA.3.2], xlab = " ", ylab = "",
         main = "Serum TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCA.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCA.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCA.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCA.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmTCA.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCA.3.2], xlab = " ", ylab = "",
         main = "Liver TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCA.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCA.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCA.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCA.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivTCA.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCA.3.2], xlab = " ", ylab = "",
         main = "Kidney TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^1))
  } else {
    plot(time, df[i,KidTCA.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCA.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCA.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCA.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidTCA.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCA.3.2], xlab = " ", ylab = "",
         main = "Brain TCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-3, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCA.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-3, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCA.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCA.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCA.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnTCA.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,TotTCOH.3.2], xlab = " ", ylab = "",
         main = "CTCOH+CTCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-6, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-6, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotTCOH.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOH.3.2], xlab = " ", ylab = "",
         main = "Serum TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.3.2], xlab = " ", ylab = "",
         main = "Liver TCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivTCOH.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.3.2], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmDCVG.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVC.3.2], xlab = " ", ylab = "",
         main = "Serum DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmDCVC.3.2, col = "red" , pch = 20, cex=1.4)

dev.off()
