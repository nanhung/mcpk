rm(list = ls())

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

