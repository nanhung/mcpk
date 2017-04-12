png(file="Abbas97a1.1.png",width=2800,height=2400,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17),
              ncol=4, byrow = T),heights=c(1,3,3,3,3))
plot.new()
text(0.5,0.5,"Abbas and Fisher 1997 Male (B6C3F1) - 1200 mg/kg TCE",cex=2,font=2)
#Ven
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.Ven.1.1[,1], df[i,Ven.9.1], xlab = "Time (hr)", ylab = "",
         main = "VenTCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.Ven.1.1[,1], df[i,Ven.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.Ven.1.1[,1], apply(df[,Ven.9.1], 2, median), lwd=2)
lines(Abbas97a.Ven.1.1[,1], apply(df[,Ven.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.Ven.1.1[,1], apply(df[,Ven.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.Ven.1.1[,1], Abbas97a.Ven.1.1[,2], col = "red" , pch = 20, cex=1.4)

#Liv
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.Liv.1.1[,1], df[i,Liv.9.1], xlab = "Time (hr)", ylab = "",
         main = "LivTCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.Liv.1.1[,1], df[i,Liv.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.Liv.1.1[,1], apply(df[,Liv.9.1], 2, median), lwd=2)
lines(Abbas97a.Liv.1.1[,1], apply(df[,Liv.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.Liv.1.1[,1], apply(df[,Liv.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.Liv.1.1[,1], Abbas97a.Liv.1.1[,2], col = "red" , pch = 20, cex=1.4)

#Kid
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.Kid.1.1[,1], df[i,Kid.9.1], xlab = "Time (hr)", ylab = "",
         main = "KidTCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.Kid.1.1[,1], df[i,Kid.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.Kid.1.1[,1], apply(df[,Kid.9.1], 2, median), lwd=2)
lines(Abbas97a.Kid.1.1[,1], apply(df[,Kid.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.Kid.1.1[,1], apply(df[,Kid.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.Kid.1.1[,1], Abbas97a.Kid.1.1[,2], col = "red" , pch = 20, cex=1.4)

#Fat
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.Fat.1.1[,1], df[i,Fat.9.1], xlab = "Time (hr)", ylab = "",
         main = "FatTCE (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.Fat.1.1[,1], df[i,Fat.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.Fat.1.1[,1], apply(df[,Fat.9.1], 2, median), lwd=2)
lines(Abbas97a.Fat.1.1[,1], apply(df[,Fat.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.Fat.1.1[,1], apply(df[,Fat.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.Fat.1.1[,1], Abbas97a.Fat.1.1[,2], col = "red" , pch = 20, cex=1.4)

#BldTCA
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.BldTCA.1.1[,1], df[i,BldTCA.9.1], xlab = "Time (hr)", ylab = "",
         main = "BldTCA (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.BldTCA.1.1[,1], df[i,BldTCA.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.BldTCA.1.1[,1], apply(df[,BldTCA.9.1], 2, median), lwd=2)
lines(Abbas97a.BldTCA.1.1[,1], apply(df[,BldTCA.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.BldTCA.1.1[,1], apply(df[,BldTCA.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.BldTCA.1.1[,1], Abbas97a.BldTCA.1.1[,2], col = "red" , pch = 20, cex=1.4)

#LivTCA
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.LivTCA.1.1[,1], df[i,LivTCA.9.1], xlab = "Time (hr)", ylab = "",
         main = "LivTCA (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.LivTCA.1.1[,1], df[i,LivTCA.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.LivTCA.1.1[,1], apply(df[,LivTCA.9.1], 2, median), lwd=2)
lines(Abbas97a.LivTCA.1.1[,1], apply(df[,LivTCA.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.LivTCA.1.1[,1], apply(df[,LivTCA.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.LivTCA.1.1[,1], Abbas97a.LivTCA.1.1[,2], col = "red" , pch = 20, cex=1.4)

#BldTCOH
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.BldTCOH.1.1[,1], df[i,BldTCOH.9.1], xlab = "Time (hr)", ylab = "",
         main = "BldTCOH (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.BldTCOH.1.1[,1], df[i,BldTCOH.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.BldTCOH.1.1[,1], apply(df[,BldTCOH.9.1], 2, median), lwd=2)
lines(Abbas97a.BldTCOH.1.1[,1], apply(df[,BldTCOH.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.BldTCOH.1.1[,1], apply(df[,BldTCOH.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.BldTCOH.1.1[,1], Abbas97a.BldTCOH.1.1[,2], col = "red" , pch = 20, cex=1.4)

#LivTCOH
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.LivTCOH.1.1[,1], df[i,LivTCOH.9.1], xlab = "Time (hr)", ylab = "",
         main = "LivTCOH (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.LivTCOH.1.1[,1], df[i,LivTCOH.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.LivTCOH.1.1[,1], apply(df[,LivTCOH.9.1], 2, median), lwd=2)
lines(Abbas97a.LivTCOH.1.1[,1], apply(df[,LivTCOH.9.1], 2, quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.LivTCOH.1.1[,1], apply(df[,LivTCOH.9.1], 2, quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.LivTCOH.1.1[,1], Abbas97a.LivTCOH.1.1[,2], col = "red" , pch = 20, cex=1.4)

#BldTCOGTCOH
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.BldTCOGTCOH.1.1[,1], df[i,BldTCOGTCOH.9.1], xlab = "Time (hr)", ylab = "",
         main = "BldTCOGTCOH (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.BldTCOGTCOH.1.1[,1], df[i,BldTCOGTCOH.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.BldTCOGTCOH.1.1[,1], apply(df[,BldTCOGTCOH.9.1], 2, median), lwd=2)
lines(Abbas97a.BldTCOGTCOH.1.1[,1], apply(df[,BldTCOGTCOH.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.BldTCOGTCOH.1.1[,1], apply(df[,BldTCOGTCOH.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.BldTCOGTCOH.1.1[,1], Abbas97a.BldTCOGTCOH.1.1[,2], col = "red" , pch = 20, cex=1.4)

#LivTCOH
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Abbas97a.LivTCOGTCOH.1.1[,1], df[i,LivTCOGTCOH.9.1], xlab = "Time (hr)", ylab = "",
         main = "LivTCOGTCOH (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3))
  } else {
    plot(Abbas97a.LivTCOGTCOH.1.1[,1], df[i,LivTCOGTCOH.9.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Abbas97a.LivTCOGTCOH.1.1[,1], apply(df[,LivTCOGTCOH.9.1], 2, median), lwd=2)
lines(Abbas97a.LivTCOGTCOH.1.1[,1], apply(df[,LivTCOGTCOH.9.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Abbas97a.LivTCOGTCOH.1.1[,1], apply(df[,LivTCOGTCOH.9.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Abbas97a.LivTCOGTCOH.1.1[,1], Abbas97a.LivTCOGTCOH.1.1[,2], col = "red" , pch = 20, cex=1.4)

dev.off()

