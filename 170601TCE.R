pdf(file="TCE.pdf", 11, 15)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,
                6,6,6,6,7,8,9,10,
                11,11,11,11,12,13,14,15,
                16,16,16,16,17,18,19,20),
              ncol=4, byrow = T), heights=c(1,3,1,3,
                                            1,3,1,3,
                                            1,3,1,3,
                                            1,3,1,3))
plot.new()
text(0.5,0.5,"AU18042 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.1.1], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$SrmTCE.1.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.1.1], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.1.1], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$KidTCE.1.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.1.1], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.1.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$BrnTCE.1.1, col = "red" , pch = 20, cex=1.4)

# Female

plot.new()
text(0.5,0.5,"AU18042 Female - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.1.2], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,SrmTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,SrmTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$SrmTCE.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.1.2], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,LivTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.1.2], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,KidTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$KidTCE.1.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.1.2], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.1.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2, median), lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU18042.df[,1], apply(df[,BrnTCE.1.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU18042.df[,1], AU18042.df$BrnTCE.1.2, col = "red" , pch = 20, cex=1.4)


## AU8005
plot.new()
text(0.5,0.5,"AU8005 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.2.1], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.2.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,SrmTCE.2.1], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,SrmTCE.2.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,SrmTCE.2.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$SrmTCE.2.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.2.1], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.2.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,LivTCE.2.1], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,LivTCE.2.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,LivTCE.2.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.2.1], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.2.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,KidTCE.2.1], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,KidTCE.2.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,KidTCE.2.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$KidTCE.2.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.2.1], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.2.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,BrnTCE.2.1], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,BrnTCE.2.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,BrnTCE.2.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$BrnTCE.2.1, col = "red" , pch = 20, cex=1.4)

# Female

plot.new()
text(0.5,0.5,"AU8005 Female - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.2.2], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.2.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,SrmTCE.2.2], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,SrmTCE.2.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,SrmTCE.2.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$SrmTCE.2.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.2.2], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.2.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,LivTCE.2.2], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,LivTCE.2.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,LivTCE.2.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.2.2], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.2.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,KidTCE.2.2], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,KidTCE.2.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,KidTCE.2.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$KidTCE.2.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.2.2], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.2.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8005.df[,1], apply(df[,BrnTCE.2.2], 2, median), lwd=2)
lines(AU8005.df[,1], apply(df[,BrnTCE.2.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8005.df[,1], apply(df[,BrnTCE.2.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8005.df[,1], AU8005.df$BrnTCE.2.2, col = "red" , pch = 20, cex=1.4)


## AU8034
plot.new()
text(0.5,0.5,"AU8034 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.3.1], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmTCE.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.3.1], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.3.1], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidTCE.3.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.3.1], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.3.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnTCE.3.1, col = "red" , pch = 20, cex=1.4)

# Female

plot.new()
text(0.5,0.5,"AU8034 Female - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.3.2], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,SrmTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,SrmTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$SrmTCE.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.3.2], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,LivTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.3.2], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,KidTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$KidTCE.3.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.3.2], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.3.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2, median), lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(AU8034.df[,1], apply(df[,BrnTCE.3.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(AU8034.df[,1], AU8034.df$BrnTCE.3.2, col = "red" , pch = 20, cex=1.4)


## IL1688
plot.new()
text(0.5,0.5,"IL1688 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.4.1], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.4.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,SrmTCE.4.1], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,SrmTCE.4.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,SrmTCE.4.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$SrmTCE.4.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.4.1], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.4.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,LivTCE.4.1], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,LivTCE.4.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,LivTCE.4.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.4.1], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.4.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,KidTCE.4.1], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,KidTCE.4.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,KidTCE.4.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$KidTCE.4.1, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.4.1], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.4.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,BrnTCE.4.1], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,BrnTCE.4.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,BrnTCE.4.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$BrnTCE.4.1, col = "red" , pch = 20, cex=1.4)

# Female

plot.new()
text(0.5,0.5,"IL1688 Female - 800 mg/kg TCE",cex=2,font=2)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,SrmTCE.4.2], xlab = " ", ylab = "",
         main = "Serum TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,SrmTCE.4.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,SrmTCE.4.2], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,SrmTCE.4.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,SrmTCE.4.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$SrmTCE.4.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,LivTCE.4.2], xlab = " ", ylab = "",
         main = "Liver TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,LivTCE.4.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,LivTCE.4.2], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,LivTCE.4.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,LivTCE.4.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,KidTCE.4.2], xlab = " ", ylab = "",
         main = "kidney TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,KidTCE.4.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,KidTCE.4.2], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,KidTCE.4.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,KidTCE.4.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$KidTCE.4.2, col = "red" , pch = 20, cex=1.4)

for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(time, df[i,BrnTCE.4.2], xlab = " ", ylab = "",
         main = "Brain TCE (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", log="xy", ylim=c(10^-5, 10^0), cex.main = 1.2)
  } else {
    plot(time, df[i,BrnTCE.4.2], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20,
         type = "b", log="xy", ylim=c(10^-5, 10^0)) 
  }
  par(new=T)
}
lines(IL1688.df[,1], apply(df[,BrnTCE.4.2], 2, median), lwd=2)
lines(IL1688.df[,1], apply(df[,BrnTCE.4.2], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(IL1688.df[,1], apply(df[,BrnTCE.4.2], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(IL1688.df[,1], IL1688.df$BrnTCE.4.2, col = "red" , pch = 20, cex=1.4)

dev.off()