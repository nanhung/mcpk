png(file="Kim09nBfd11.png",width=2800,height=1600,res=250)
par(mar=c(2.5,3.5,1.2,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,6,6,6,7,8,9,10),
              ncol=4, byrow = T),heights=c(1,3,1,3))
plot.new()
text(0.5,0.5,"B6C3F1 Male (Kim et al., 2009) - 2100 mg/kg TCE",cex=2,font=2)

#BldTCA
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Kim09.df[,1], df[i,CBldTCA.11.1], xlab = "Time (hr)", ylab = "",
         main = "BldTCA (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3), xlim=c(1,36))
  } else {
    plot(Kim09.df[,1], df[i,CBldTCA.11.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Kim09.df[,1], apply(df[,CBldTCA.11.1], 2, median), lwd=2)
lines(Kim09.df[,1], apply(df[,CBldTCA.11.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Kim09.df[,1], apply(df[,CBldTCA.11.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Kim09.df[,1], Kim09.df$CBldTCA, col = "red" , pch = 20, cex=1.4)

#CDCVGmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Kim09.df[,1], df[i,CDCVGmol.11.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^0), xlim=c(1,36))
  } else {
    plot(Kim09.df[,1], df[i,CDCVGmol.11.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^0), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Kim09.df[,1], apply(df[,CDCVGmol.11.1], 2, median), lwd=2)
lines(Kim09.df[,1], apply(df[,CDCVGmol.11.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Kim09.df[,1], apply(df[,CDCVGmol.11.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Kim09.df[,1], Kim09.df$CDCVGmol, col = "red" , pch = 20, cex=1.4)

#CDCVCmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Kim09.df[,1], df[i,CDCVCmol.11.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^0), xlim=c(1,36))
  } else {
    plot(Kim09.df[,1], df[i,CDCVCmol.11.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^0), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Kim09.df[,1], apply(df[,CDCVCmol.11.1], 2, median), lwd=2)
lines(Kim09.df[,1], apply(df[,CDCVCmol.11.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Kim09.df[,1], apply(df[,CDCVCmol.11.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Kim09.df[,1], Kim09.df$CDCVCmol, col = "red" , pch = 20, cex=1.4)

#CDCAmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(Kim09.df[,1], df[i,CDCAmol.11.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^-1), xlim=c(1,36))
  } else {
    plot(Kim09.df[,1], df[i,CDCAmol.11.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^-1), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(Kim09.df[,1], apply(df[,CDCAmol.11.1], 2, median), lwd=2)
lines(Kim09.df[,1], apply(df[,CDCAmol.11.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(Kim09.df[,1], apply(df[,CDCAmol.11.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(Kim09.df[,1], Kim09.df$CDCAmol, col = "red" , pch = 20, cex=1.4)

plot.new()
text(0.5,0.5,"129S1/SvlmJ Male (Bradford et al., 2011) - 2100 mg/kg TCE",cex=2,font=2)

#BldTCA
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(S1.df[,1], df[i,CBldTCA.12.1], xlab = "Time (hr)", ylab = "",
         main = "BldTCA (mg/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-3, 10^3), xlim=c(1,36))
  } else {
    plot(S1.df[,1], df[i,CBldTCA.12.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-4, 10^3), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(S1.df[,1], apply(df[,CBldTCA.12.1], 2, median), lwd=2)
lines(S1.df[,1], apply(df[,CBldTCA.12.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(S1.df[,1], apply(df[,CBldTCA.12.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(S1.df[,1], S1.df$CBldTCA, col = "red" , pch = 20, cex=1.4)

#CDCVGmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(S1.df[,1], df[i,CDCVGmol.12.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCVG (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^0), xlim=c(1,36))
  } else {
    plot(S1.df[,1], df[i,CDCVGmol.12.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^0), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(S1.df[,1], apply(df[,CDCVGmol.12.1], 2, median), lwd=2)
lines(S1.df[,1], apply(df[,CDCVGmol.12.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(S1.df[,1], apply(df[,CDCVGmol.12.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(S1.df[,1], S1.df$CDCVGmol, col = "red" , pch = 20, cex=1.4)

#CDCVCmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(S1.df[,1], df[i,CDCVCmol.12.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCVC (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^0), xlim=c(1,36))
  } else {
    plot(S1.df[,1], df[i,CDCVCmol.12.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^0), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(S1.df[,1], apply(df[,CDCVCmol.12.1], 2, median), lwd=2)
lines(S1.df[,1], apply(df[,CDCVCmol.12.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(S1.df[,1], apply(df[,CDCVCmol.12.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(S1.df[,1], S1.df$CDCVCmol, col = "red" , pch = 20, cex=1.4)

#CDCAmol
for (i in 1:dim(df)[1]) {
  if (i == 1) {
    plot(S1.df[,1], df[i,CDCAmol.12.1], xlab = "Time (hr)", ylab = "",
         main = "SrmDCA (mmol/l)", las = 1, col = "grey", pch = 20, cex.lab = 1.2,
         type = "b", cex.main = 1.2, log="xy", ylim=c(10^-8, 10^-1), xlim=c(1,36))
  } else {
    plot(S1.df[,1], df[i,CDCAmol.12.1], xlab = "", ylab = "", xaxt = "n", yaxt = "n",
         main = "", las = 1, col = "grey", pch = 20, ylim=c(10^-8, 10^-1), xlim=c(1,36),
         type = "b", log="xy") 
  }
  par(new=T)
}

lines(S1.df[,1], apply(df[,CDCAmol.12.1], 2, median), lwd=2)
lines(S1.df[,1], apply(df[,CDCAmol.12.1], 2,  quantile, probs= c(.05)),lty=2, lwd=2)
lines(S1.df[,1], apply(df[,CDCAmol.12.1], 2,  quantile, probs= c(.95)),lty=2, lwd=2 )
points(S1.df[,1], S1.df$CDCAmol, col = "red" , pch = 20, cex=1.4)



dev.off()

