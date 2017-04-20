#png(file="AU8034M.png",width=2800,height=3200,res=250)
pdf(file="AU8034.pdf", 11, 15)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
              ncol=4, byrow = T),heights=c(1,3,3,3,3,3,3))
plot.new()
text(0.5,0.5,"AU8034 Male - 800 mg/kg TCE",cex=2,font=2)

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
points(AU8034.df[,1], AU8034.df$SrmTCA.3.1, col = "red" , pch = 20, cex=1.4)

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
points(AU8034.df[,1], AU8034.df$LivTCA.3.1, col = "red" , pch = 20, cex=1.4)

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
points(AU8034.df[,1], AU8034.df$KidTCA.3.1, col = "red" , pch = 20, cex=1.4)

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
points(AU8034.df[,1], AU8034.df$BrnTCA.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,TotTCOH.3.1], xlab = " ", ylab = "",
         main = "Serum TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotCTCOH.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.3.1], xlab = " ", ylab = "",
         main = "Liver TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
points(AU8034.df[,1], AU8034.df$TotLivTCOH.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCOH.3.1], xlab = " ", ylab = "",
         main = "Kidney TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCOH.3.1], xlab = " ", ylab = "",
         main = "Brain TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCOH.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotBrnTCOH.3.1, col = "red" , pch = 20, cex=1.4)

# TCOG
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOG.3.1], xlab = " ", ylab = "",
         main = "Serum TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOG.3.1], xlab = " ", ylab = "",
         main = "Liver TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCOG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCOG.3.1], xlab = " ", ylab = "",
         main = "Kidney TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCOG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCOG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCOG.3.1], xlab = " ", ylab = "",
         main = "Brain TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCOG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.3.1], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmDCVG.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivDCVG.3.1], xlab = " ", ylab = "",
         main = "Liver DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,LivDCVG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivDCVG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivDCVG.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidDCVG.3.1], xlab = " ", ylab = "",
         main = "Kidney DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,KidDCVG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidDCVG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidDCVG.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnDCVG.3.1], xlab = " ", ylab = "",
         main = "Brain DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnDCVG.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnDCVG.3.1, col = "red" , pch = 20, cex=1.4)


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
points(AU8034.df[,1], AU8034.df$SrmDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivDCVC.3.1], xlab = " ", ylab = "",
         main = "Liver DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,LivDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidDCVC.3.1], xlab = " ", ylab = "",
         main = "Kidney DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,KidDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnDCVC.3.1], xlab = " ", ylab = "",
         main = "Brain DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmNDCVC.3.1], xlab = " ", ylab = "",
         main = "Serum NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmNDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmNDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivNDCVC.3.1], xlab = " ", ylab = "",
         main = "Liver NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivNDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivNDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidNDCVC.3.1], xlab = " ", ylab = "",
         main = "Kidney NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidNDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidNDCVC.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnNDCVC.3.1], xlab = " ", ylab = "",
         main = "Brain NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnNDCVC.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnNDCVC.3.1, col = "red" , pch = 20, cex=1.4)

par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
              ncol=4, byrow = T),heights=c(1,3,3,3,3,3,3))
plot.new()
text(0.5,0.5,"AU8034 Female - 800 mg/kg TCE",cex=2,font=2)

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
         main = "Serum TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,TotTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,TotTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotCTCOH.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOH.3.2], xlab = " ", ylab = "",
         main = "Liver TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
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
points(AU8034.df[,1], AU8034.df$TotLivTCOH.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCOH.3.2], xlab = " ", ylab = "",
         main = "Kidney TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCOH.3.2], xlab = " ", ylab = "",
         main = "Brain TotTCOH (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^1), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCOH.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^1)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOH.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$TotBrnTCOH.3.2, col = "red" , pch = 20, cex=1.4)

# TCOG
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCOG.3.2], xlab = " ", ylab = "",
         main = "Serum TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCOG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCOG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCOG.3.2], xlab = " ", ylab = "",
         main = "Liver TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCOG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCOG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCOG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCOG.3.2], xlab = " ", ylab = "",
         main = "Kidney TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCOG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCOG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCOG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCOG.3.2], xlab = " ", ylab = "",
         main = "Brain TCOG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-4, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCOG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-4, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCOG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmDCVG.3.2], xlab = " ", ylab = "",
         main = "Serum DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmDCVG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmDCVG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmDCVG.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivDCVG.3.2], xlab = " ", ylab = "",
         main = "Liver DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,LivDCVG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivDCVG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivDCVG.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidDCVG.3.2], xlab = " ", ylab = "",
         main = "Kidney DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,KidDCVG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidDCVG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidDCVG.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnDCVG.3.2], xlab = " ", ylab = "",
         main = "Brain DCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-10, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnDCVG.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-10, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVG.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnDCVG.3.2, col = "red" , pch = 20, cex=1.4)


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

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivDCVC.3.2], xlab = " ", ylab = "",
         main = "Liver DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,LivDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidDCVC.3.2], xlab = " ", ylab = "",
         main = "Kidney DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,KidDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnDCVC.3.2], xlab = " ", ylab = "",
         main = "Brain DCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^-3), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^-3)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmNDCVC.3.2], xlab = " ", ylab = "",
         main = "Serum NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmNDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmNDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmNDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivNDCVC.3.2], xlab = " ", ylab = "",
         main = "Liver NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivNDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivNDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$LivNDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidNDCVC.3.2], xlab = " ", ylab = "",
         main = "Kidney NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidNDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidNDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidNDCVC.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnNDCVC.3.2], xlab = " ", ylab = "",
         main = "Brain NaDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-9, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnNDCVC.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-9, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnNDCVC.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnNDCVC.3.2, col = "red" , pch = 20, cex=1.4)

dev.off()