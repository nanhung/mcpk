rm(list = ls())

# 0521
source("TCE_post.R")

png(file="1.1.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkDCVCC(1.1)`, type = "l", col="red", main = "AU18042")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkDCVCC(1.2)`, type = "l", col="darkorange", main = "AU8034")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkDCVCC(1.3)`, type = "l", col="darkgreen", main = "AU8005")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkDCVCC(1.4)`, type = "l", col="blue", main = "IL1688")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`M_lnkDCVCC(1)`, type = "l", cex= 1.5, main = "Population")
dev.off()

png(file="1.2.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnISkNDCVC(1.1)`, type = "l", col="red", main = "AU18042")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnISkNDCVC(1.2)`, type = "l", col="darkorange", main = "AU8034")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnISkNDCVC(1.3)`, type = "l", col="darkgreen", main = "AU8005")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnISkNDCVC(1.4)`, type = "l", col="blue", main = "IL1688")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`M_lnISkNDCVC(1)`, type = "l", cex= 1.5, main = "Population")
dev.off()

png(file="1.3.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkElimNDCVCC(1.1)`, type = "l", col="red", main = "AU18042")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkElimNDCVCC(1.2)`, type = "l", col="darkorange", main = "AU8034")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkElimNDCVCC(1.3)`, type = "l", col="darkgreen", main = "AU8005")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`lnkElimNDCVCC(1.4)`, type = "l", col="blue", main = "IL1688")
plot(TCE.2.13_v1$iter, TCE.2.13_v1$`M_lnkElimNDCVCC(1)`, type = "l", cex= 1.5, main = "Population")
dev.off()

# Parameter distribution check
pop<-as.data.frame(TCE.2.13_v1[702:1001, c(13,14,15)])
strain.1<-as.data.frame(TCE.2.13_v1[702:1001, c(19,20,21)])
strain.2<-as.data.frame(TCE.2.13_v1[702:1001, c(22,23,24)])
strain.3<-as.data.frame(TCE.2.13_v1[702:1001, c(25,26,27)])
strain.4<-as.data.frame(TCE.2.13_v1[702:1001, c(28,29,30)])

colnames(pop)<-c("lnkDCVCC", "lnkElimNDCVCC", "lnISkNDCVC")

png(file="2.1.png",width=3000,height=1500,res=300)
par(mfrow=c(1,3), oma=c(0.5,0,0,0))
for (i in 1:3) {
  plot(density(pop[,i]),col="maroon", main=names(pop)[i], xlab = " ", lwd = 1.5, type = "l")
  lines(density(strain.1[,i]),col="red", las = 1, lwd = 1.5, lty=2)
  lines(density(strain.2[,i]),col="green", las = 1, lwd = 1.5, lty=2)
  lines(density(strain.3[,i]),col="blue", las = 1, lwd = 1.5, lty=2)
  lines(density(strain.4[,i]),col="purple", las = 1, lwd = 1.5, lty=2)
}
par(xpd=NA)
legend(x=-30, y=-0.03, legend=c("Population", "AU18042", "AU8005", "AU8034", "IL1688"), ncol=5,
       col=c("black", "red", "darkorange", "darkgreen", "blue"), lty = c(1,2,2,2,2), lwd = 1, cex = 1,bg="transparent",  bty = "n")
dev.off()

# Validation test
df <- read.table("TCE.2.13.pop_2.1.out", head = T)

png(file="Validation.png",width=3000,height=2000,res=300)
par(mfrow = c(1,1), mar = c(5,5,1,1))
plot(df$Prediction ~ df$Data, xlim=c(1e-8, 1e-3), ylim=c(1e-8, 1e-3),
     xlab = "Data", ylab= "Prediction",
     col = df$Simulation, log="xy", pch=20, cex=0.5)
text(df$Data, df$Prediction*1.2, labels= df$Output_Var, cex = 0.6, col = df$Simulation)

legend("bottomright", legend = c("AU18042","AU8034","AU8005","IL1688"), col=c(1:4) , cex=0.8,  pch=20)
abline(0,1, col="maroon", lwd=2)
dev.off()

# Strain 1 PK

df$main<-c("","","","","","Serum DCVG",
        "","","","","","Liver DCVG",
        "","","","","","Kidney DCVG",
        "","","","","","Brain DCVG",
        "","","","","","Serum DCVC",
        "","","","","","Kidney DCVC",
        "","","","","","Brain DCVC",
        "","","","","","Serum NaDCVC",
        "","","","","","Liver NaDCVC",
        "","","","","","kidney NaDCVC",
        "","","","","","Brain NaDCVC")

df$main2<-c("","","","","","Serum DCVG",
           "","","","","","Serum DCVC",
           "","","","","","Serum NDCVC",
           "","","","","","Liver DCVG",
           "","","","","","Liver NDCVC",
           "","","","","","Kidney DCVG",
           "","","","","","kidney DCVC",
           "","","","","","kidney NaDCVC",
           "","","","","","Brain DCVG",
           "","","","","","Brain DCVC",
           "","","","","","Brain NaDCVC")

png(file="s1v.png",width=3000,height=1800,res=300)
par(mar=c(2,3,0.8,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13),
              ncol=4, byrow = T),heights=c(1,3,3,3))
plot.new()
text(0.5,0.5,"AU18042 Male - 800 mg/kg TCE",cex=2,font=2)
for (i in 0:10){
  plot(df[1:6,4], df[i*6+c(1:6), 6],
       main = df[i*6+c(1:6), 7], las = 1,
       ylim=c(1e-9,1e-3), log="xy", type="l")
  points(df[1:6,4], df[i*6+c(1:6), 5], col = "red" , pch = 20, cex=1.4)
}
dev.off()

# Strain 2 PK

png(file="s2v.png",width=3000,height=1800,res=300)
par(mar=c(2,3,0.8,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13),
              ncol=4, byrow = T),heights=c(1,3,3,3))
plot.new()
text(0.5,0.5,"AU8005 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 11:21){
  plot(df[1:6,4], df[i*6+c(1:6), 6],
       main = df[i*6+c(1:6), 8], las = 1,
       ylim=c(1e-9,1e-3), log="xy", type="l")
  points(df[1:6,4], df[i*6+c(1:6), 5], col = "red" , pch = 20, cex=1.4)
}
dev.off()

# Strain 3 PK

png(file="s3v.png",width=3000,height=1800,res=300)
par(mar=c(2,3,0.8,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13),
              ncol=4, byrow = T),heights=c(1,3,3,3))
plot.new()
text(0.5,0.5,"AU8034 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 22:32){
  plot(df[1:6,4], df[i*6+c(1:6), 6],
       main = df[i*6+c(1:6), 8], las = 1,
       ylim=c(1e-9,1e-3), log="xy", type="l")
  points(df[1:6,4], df[i*6+c(1:6), 5], col = "red" , pch = 20, cex=1.4)
}
dev.off()

# Strain 4 PK

png(file="s4v.png",width=3000,height=1800,res=300)
par(mar=c(2,3,0.8,1))
layout(matrix(c(1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13),
              ncol=4, byrow = T),heights=c(1,3,3,3))
plot.new()
text(0.5,0.5,"IL1688 Male - 800 mg/kg TCE",cex=2,font=2)

for (i in 33:43){
  plot(df[1:6,4], df[i*6+c(1:6), 6],
       main = df[i*6+c(1:6), 8], las = 1,
       ylim=c(1e-9,1e-3), log="xy", type="l")
  points(df[1:6,4], df[i*6+c(1:6), 5], col = "red" , pch = 20, cex=1.4)
}
dev.off()

# Setpoint test
TCE.setpoint.v1<-TCE.2.13_v1[802:1001,2:18]
write.table(TCE.setpoint.v1, file = "TCE.2.13.setpoint.dat", row.names = F, sep="\t")
system("./mcsim.TCE.2.13 TCE.2.13.setpoint.in")

df<-read.csv("TCE.2.13.setpoint.csv", header = T, sep="")




# 0511

df <- read.table("TCE.2.12.pop_2.out", head = T)

png(file="1.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(df$iter, df$lnkDCVCC.1.1., type = "l", col="red", main = "AU18042")
plot(df$iter, df$lnkDCVCC.1.2., type = "l", col="darkorange", main = "AU8034")
plot(df$iter, df$lnkDCVCC.1.3., type = "l", col="darkgreen", main = "AU8005")
plot(df$iter, df$lnkDCVCC.1.4., type = "l", col="blue", main = "IL1688")
plot(df$iter, df$M_lnkDCVCC.1., type = "l", cex= 1.5, main = "Population")
dev.off()

png(file="2.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(df$iter, df$lnISkNDCVC.1.1., type = "l", col="red", main = "AU18042")
plot(df$iter, df$lnISkNDCVC.1.2., type = "l", col="darkorange", main = "AU8034")
plot(df$iter, df$lnISkNDCVC.1.3., type = "l", col="darkgreen", main = "AU8005")
plot(df$iter, df$lnISkNDCVC.1.4., type = "l", col="blue", main = "IL1688")
plot(df$iter, df$M_lnISkNDCVC.1., type = "l", cex= 1.5, main = "Population")
dev.off()

png(file="3.png",width=3000,height=2000,res=300)
par(mfrow = c(3,2))
plot(df$iter, df$lnkElimNDCVCC.1.1., type = "l", col="red", main = "AU18042")
plot(df$iter, df$lnkElimNDCVCC.1.2., type = "l", col="darkorange", main = "AU8034")
plot(df$iter, df$lnkElimNDCVCC.1.3., type = "l", col="darkgreen", main = "AU8005")
plot(df$iter, df$lnkElimNDCVCC.1.4., type = "l", col="blue", main = "IL1688")
plot(df$iter, df$M_lnkElimNDCVCC.1., type = "l", cex= 1.5, main = "Population")
dev.off()

df <- read.table("TCE.2.12.pop_2.1.out", head = T)

png(file="Validation.png",width=3000,height=2000,res=300)
par(mfrow = c(1,1), mar = c(5,5,1,1))
plot(df$Prediction ~ df$Data, xlim=c(1e-8, 1e-3), ylim=c(1e-8, 1e-3),
     xlab = "Data", ylab= "Prediction",
     col = df$Simulation, log="xy", pch=20, cex=0.5)
text(df$Data, df$Prediction*1.2, labels= df$Output_Var, cex = 0.6, col = df$Simulation)

legend("bottomright", legend = c("AU18042","AU8034","AU8005","IL1688"), col=c(1:4) , cex=0.8,  pch=20)
abline(0,1, col="maroon", lwd=2)
dev.off()



# 0503 MCMC
# Read posterior result
source("TCE_post.R")

chain.1<-TCE.2.12_v1[402:501,]
chain.2<-TCE.2.12_v1[502:601,]
chain.3<-TCE.2.12_v2[402:501,]
chain.4<-TCE.2.12_v2[502:601,]

library(boa)
boa.menu()

# Fix the value to run MCMC
# system("./mcsim.TCE.2.12 TCE.2.12.forAbhi-BW.in")

df <- read.delim("TCE.2.12.forAbhi-BW.out", head = T)

Ve_CInhPPM <- which(colnames(df)=="Ve_CInhPPM")
Ve_CVen <- which(colnames(df)=="Ve_CVen")
Ve_CBldMix <- which(colnames(df)=="Ve_CBldMix")
Ve_CFat <- which(colnames(df)=="Ve_CFat")
Ve_CKid <- which(colnames(df)=="Ve_CKid")
Ve_CLiv <- which(colnames(df)=="Ve_CLiv")
Ve_zAExhpost <- which(colnames(df)=="Ve_zAExhpost")
Ve_CTCOH <- which(colnames(df)=="Ve_CTCOH")
Ve_CLivTCOH <- which(colnames(df)=="Ve_CLivTCOH")
Ve_CPlasTCA <- which(colnames(df)=="Ve_CPlasTCA")
Ve_CBldTCA <- which(colnames(df)=="Ve_CBldTCA")
Ve_CLivTCA <- which(colnames(df)=="Ve_CLivTCA")
Ve_zAUrnTCA <- which(colnames(df)=="Ve_zAUrnTCA")
Ve_CTCOGTCOH <- which(colnames(df)=="Ve_CTCOGTCOH")
Ve_CLivTCOGTCOH <- which(colnames(df)=="Ve_CLivTCOGTCOH")
Ve_AUrnTCOGTCOH <- which(colnames(df)=="Ve_AUrnTCOGTCOH")
Ve_CDCVGmol <- which(colnames(df)=="Ve_CDCVGmol")
Ve_CDCVCmol <- which(colnames(df)=="Ve_CDCVCmol")
Ve_CDCAmol <- which(colnames(df)=="Ve_CDCAmol")
Ve_TotCTCOH <- which(colnames(df)=="Ve_TotCTCOH")

M_lnQCC <- which(colnames(df)=="M_lnQCC")
M_lnVPRC <- which(colnames(df)=="M_lnVPRC")
M_lnDRespC <- which(colnames(df)=="M_lnDRespC")
M_lnPRBCPlasTCAC <- which(colnames(df)=="M_lnPRBCPlasTCAC")
M_lnkDissocC <- which(colnames(df)=="M_lnkDissocC")
M_lnBMaxkDC <- which(colnames(df)=="M_lnBMaxkDC")
M_lnkTSD <- which(colnames(df)=="M_lnkTSD")
M_lnkAS <- which(colnames(df)=="M_lnkAS")
M_lnkAD <- which(colnames(df)=="M_lnkAD")
M_lnkASTCA <- which(colnames(df)=="M_lnkASTCA")
M_lnkASTCOH <- which(colnames(df)=="M_lnkASTCOH")
M_lnVMaxC <- which(colnames(df)=="M_lnVMaxC")
M_lnKMC <- which(colnames(df)=="M_lnKMC")
M_lnFracOtherC <- which(colnames(df)=="M_lnFracOtherC")
M_lnFracTCAC <- which(colnames(df)=="M_lnFracTCAC")
M_lnVMaxDCVGC <- which(colnames(df)=="M_lnVMaxDCVGC")
M_lnClDCVGC <- which(colnames(df)=="M_lnClDCVGC")
M_lnVMaxLungLivC <- which(colnames(df)=="M_lnVMaxLungLivC")
M_lnKMClara <- which(colnames(df)=="M_lnKMClara")
M_lnFracLungSysC <- which(colnames(df)=="M_lnFracLungSysC")
M_lnVMaxTCOHC <- which(colnames(df)=="M_lnVMaxTCOHC")
M_lnKMTCOH <- which(colnames(df)=="M_lnKMTCOH")
M_lnVMaxGlucC <- which(colnames(df)=="M_lnVMaxGlucC")
M_lnKMGluc <- which(colnames(df)=="M_lnKMGluc")
M_lnkMetTCOHC <- which(colnames(df)=="M_lnkMetTCOHC")
M_lnkUrnTCAC <- which(colnames(df)=="M_lnkUrnTCAC")
M_lnkMetTCAC <- which(colnames(df)=="M_lnkMetTCAC")
M_lnkBileC <- which(colnames(df)=="M_lnkBileC")
M_lnkEHRC <- which(colnames(df)=="M_lnkEHRC")
M_lnkUrnTCOGC <- which(colnames(df)=="M_lnkUrnTCOGC")
M_lnPeffDCVG <- which(colnames(df)=="M_lnPeffDCVG")
M_lnPeffDCVC <- which(colnames(df)=="M_lnPeffDCVC")
M_lnPeffDCA <- which(colnames(df)=="M_lnPeffDCA")
M_lnkDCVGC <- which(colnames(df)=="M_lnkDCVGC")
M_lnkElimDCVCC <- which(colnames(df)=="M_lnkElimDCVCC")
M_lnkClearDCAC <- which(colnames(df)=="M_lnkClearDCAC")
M_lnkDCAcen_perC <- which(colnames(df)=="M_lnkDCAcen_perC")
M_lnkDCAper_cenC <- which(colnames(df)=="M_lnkDCAper_cenC")
 
M_lnISOx <- which(colnames(df)=="M_lnISOx")
M_lnISTCA <- which(colnames(df)=="M_lnISTCA")
M_lnISDCA <- which(colnames(df)=="M_lnISDCA")
M_lnISConj <- which(colnames(df)=="M_lnISConj")
M_lnISkTCA <- which(colnames(df)=="M_lnISkTCA")
M_lnISkDCVG <- which(colnames(df)=="M_lnISkDCVG")
M_lnISkDCVC <- which(colnames(df)=="M_lnISkDCVC")

apply(df[,2:66], 2, median)

