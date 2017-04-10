rm(list = ls())
#
system("./mcsim.TCE.2.10 TCE.2.10.forAbhi-BW.in")

df <- read.delim("TCE.2.10.forAbhi-BW.out", head = T)

time = c(1,2,6,12,24,36)

# AU18042.df
LivTCA.1.1<-c(0.21454641,0.459107744,0.365669663,0.363575634,0.097045295,0.026917249)
KidTCA.1.1<-c(2.049377208, 1.245486193, 0.310472183, 0.211421705, NA, NA)
BrnTCA.1.1<-c(NA,0.005436334,0.125089663,0.019941764,NA,NA)
SrmTCA.1.1<-c(0.018260375,0.554985219,0.234580911,0.15642455,0.013634181,0.015822992)
LivTCA.1.2<-c(0.060315365,0.178408603,0.180481165,0.109905788,NA,0.018137806)
KidTCA.1.2<-c(0.892018762,0.854975385,0.177279269,0.163219933,NA,NA)
BrnTCA.1.2<-c(0.030444173,0.011259165,0.001761082,NA,NA,NA)
SrmTCA.1.2<-c(0.286868002,0.334293476,0.22965677,0.144968331,0.129685476,NA)
SrmTCOH.1.1<-c(390.6720823,362.6174293,55.04310472,43.10036857,NA,NA)/1000
LivTCOH.1.1<-c(1273.811447,958.3573414,NA,NA,NA,NA)/1000
SrmDCVG.1.1<-c(3.550288789,2.086333375,NA,NA,NA,NA)/10^6
SrmDCVC.1.1<-c(10.10557327,NA,NA,NA,NA,NA)/10^6
SrmTCOH.1.2<-c(145.8130908,212.5731004,47.66636534,48.68164282,NA,NA)/1000
LivTCOH.1.2<-c(663.2963883,525.6638401,NA,NA,NA,NA)/1000
SrmDCVG.1.2<-c(3.629341575,2.783421779,NA,NA,NA,NA)/10^6
SrmDCVC.1.2<-c(NA,NA,NA,NA,NA,NA)/10^6

AU18042.df<-data.frame(time,SrmTCA.1.1,LivTCA.1.1,KidTCA.1.1,BrnTCA.1.1,
                       SrmTCA.1.2, LivTCA.1.2,KidTCA.1.2,BrnTCA.1.2,
                       SrmTCOH.1.1,LivTCOH.1.1,SrmDCVG.1.1,SrmDCVC.1.1,
                       SrmTCOH.1.2,LivTCOH.1.2,SrmDCVG.1.2,SrmDCVC.1.2)

# df AU18042
SrmTCA18042M <- which(colnames(df)=="CPlasTCAmol_1.1")
LivTCA18042M <- which(colnames(df)=="CLivTCAmol_1.1")
KidTCA18042M <- which(colnames(df)=="CKidTCAmol_1.1")
BrnTCA18042M <- which(colnames(df)=="CBrnTCAmol_1.1")
SrmTCOH18042M <- which(colnames(df)=="CTCOHmol_1.1")
LivTCOH18042M <- which(colnames(df)=="CLivTCOHmol_1.1")
SrmDCVG18042M <- which(colnames(df)=="CDCVGmol_1.1")
SrmDCVC18042M <- which(colnames(df)=="CDCVCmol_1.1")

SrmTCA18042F <- which(colnames(df)=="CPlasTCAmol_2.1")
LivTCA18042F <- which(colnames(df)=="CLivTCAmol_2.1")
KidTCA18042F <- which(colnames(df)=="CKidTCAmol_2.1")
BrnTCA18042F <- which(colnames(df)=="CBrnTCAmol_2.1")
SrmTCOH18042F <- which(colnames(df)=="CTCOHmol_2.1")
LivTCOH18042F <- which(colnames(df)=="CLivTCOHmol_2.1")
SrmDCVG18042F <- which(colnames(df)=="CDCVGmol_2.1")
SrmDCVC18042F <- which(colnames(df)=="CDCVCmol_2.1")

SrmTCA.1.1 <- SrmTCA18042M:(SrmTCA18042M+5)
LivTCA.1.1 <- LivTCA18042M:(LivTCA18042M+5) 
KidTCA.1.1 <- KidTCA18042M:(KidTCA18042M+5)
BrnTCA.1.1 <- BrnTCA18042M:(BrnTCA18042M+5)
SrmTCOH.1.1 <- SrmTCOH18042M:(SrmTCOH18042M+5)
LivTCOH.1.1 <- LivTCOH18042M:(LivTCOH18042M+5)
SrmDCVG.1.1 <- SrmDCVG18042M:(SrmDCVG18042M+5)
SrmDCVC.1.1 <- SrmDCVC18042M:(SrmDCVC18042M+5)

SrmTCA.1.2 <- SrmTCA18042F:(SrmTCA18042F+5)
LivTCA.1.2 <- LivTCA18042F:(LivTCA18042F+5) 
KidTCA.1.2 <- KidTCA18042F:(KidTCA18042F+5)
BrnTCA.1.2 <- BrnTCA18042F:(BrnTCA18042F+5)
SrmTCOH.1.2 <- SrmTCOH18042F:(SrmTCOH18042F+5)
LivTCOH.1.2 <- LivTCOH18042F:(LivTCOH18042F+5)
SrmDCVG.1.2 <- SrmDCVG18042F:(SrmDCVG18042F+5)
SrmDCVC.1.2 <- SrmDCVC18042F:(SrmDCVC18042F+5)

source("AU18042.R")

#
tVen<-c(0.083, 0.17, 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 8, 12, 16, 24 );
CVen<-c(165.87, 191.31, 123.52, 86.9, 70.9, 43.08, 35.17, 20.36, 8.97, 7.5, 1.64, 0.72, 0.47, 0.52 );
tLiv<-c(0.083, 0.17, 0.25, 0.5, 0.75, 1, 1.5, 2, 4, 6, 8, 16, 24 );
CLiv<-c(522.6, 585.3, 499.4, 408, 289.8, 228.8, 63.04, 38.97, 26.5, 15.37, 14.97, 12.86, 1.79 );
tKid<-c(0.083, 0.17, 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 6, 8, 16, 24 );
CKid<-c(144.9, 171.3, 265.6, 282.6, 1095.6, 690.1, 303.8, 109.8, 32.4, 40.2, 17.3, 3.6, 2.2 );
tFat<-c(0.083, 0.17, 0.25, 0.5, 0.75, 1.5, 2, 3, 4, 6, 8, 16, 24 );
CFat<-c(61.53, 156.7, 567.2, 826, 865.3, 1199.9, 1050.5, 550.2, 485, 219.2, 293.7, 4.4, 1.446 );

tBldTCA<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8, 16, 24, 30, 40 );
CBldTCA<-c(16.5, 23.1, 29.2, 36.1, 41.8, 59.1, 64, 70.2, 94.1, 90.8, 65.2, 43.86, 41.48, 9.15 );
tLivTCA<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8, 16, 24, 30, 40 );
CLivTCA<-c(11.09, 16.95, 20.09, 26.02, 29.44, 35.65, 37.76, 42.07, 43.92, 57.83, 27.71, 18.801, 22.67, 6.34 );
tTCOH<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 12 );
CTCOH<-c(18.83, 27.73, 31.36, 35.42, 28.26, 41.86, 21.54, 24.64, 4.589, 4.487 );
tLivTCOH<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8, 16 );
CLivTCOH<-c(65.35, 75.33, 98.28, 105.3, 88.25, 92.24, 55.03, 57.64, 35.96, 37.45, 10.12 );

tTCOGTCOH<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8, 16 );
CTCOGTCOH<-c(62.12, 63.13, 67.59, 50.86, 64.31, 95.02, 41.5, 46.7, 51.86, 40.88, 10.11 );
tLivTCOGTCOH<-c(0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8 );
CLivTCOGTCOH<-c(23.67, 23.3, 19.03, 34.89, 54.87, 62.31, 74.66, 76.92, 26.66, 55.43 );

Abbas97a.Ven.1.1<-data.frame(tVen,CVen)
Abbas97a.Liv.1.1<-data.frame(tLiv,CLiv)
Abbas97a.Kid.1.1<-data.frame(tKid,CKid)
Abbas97a.Fat.1.1<-data.frame(tFat,CFat)
Abbas97a.BldTCA.1.1<-data.frame(tBldTCA,CBldTCA)
Abbas97a.LivTCA.1.1<-data.frame(tLivTCA,CLivTCA)
Abbas97a.BldTCOH.1.1<-data.frame(tTCOH,CTCOH)
Abbas97a.LivTCOH.1.1<-data.frame(tLivTCOH,CLivTCOH)
Abbas97a.BldTCOGTCOH.1.1<-data.frame(tTCOGTCOH,CTCOGTCOH)
Abbas97a.LivTCOGTCOH.1.1<-data.frame(tLivTCOGTCOH,CLivTCOGTCOH)

VenAbbas97a.1.1 <- which(colnames(df)=="CVen_9.1")
LivAbbas97a.1.1 <- which(colnames(df)=="CLiv_9.1")
KidAbbas97a.1.1 <- which(colnames(df)=="CKid_9.1")
FatAbbas97a.1.1 <- which(colnames(df)=="CFat_9.1")
BldTCAAbbas97a.1.1 <- which(colnames(df)=="CBldTCA_9.1")
LivTCAAbbas97a.1.1 <- which(colnames(df)=="CLivTCA_9.1")
BldTCOHAbbas97a.1.1 <- which(colnames(df)=="CTCOH_9.1")
LivTCOHAbbas97a.1.1 <- which(colnames(df)=="CLivTCOH_9.1")
BldTCOGTCOHAbbas97a.1.1 <- which(colnames(df)=="CTCOGTCOH_9.1")
LivTCOGTCOHAbbas97a.1.1 <- which(colnames(df)=="CLivTCOGTCOH_9.1")

Ven.9.1 <-VenAbbas97a.1.1:(VenAbbas97a.1.1+nrow(Abbas97a.Ven.1.1)-1)
Liv.9.1 <-LivAbbas97a.1.1:(LivAbbas97a.1.1+nrow(Abbas97a.Liv.1.1)-1)
Kid.9.1 <-KidAbbas97a.1.1:(KidAbbas97a.1.1+nrow(Abbas97a.Kid.1.1)-1)
Fat.9.1 <-FatAbbas97a.1.1:(FatAbbas97a.1.1+nrow(Abbas97a.Fat.1.1)-1)
BldTCA.9.1 <-BldTCAAbbas97a.1.1:(BldTCAAbbas97a.1.1+nrow(Abbas97a.BldTCA.1.1)-1)
LivTCA.9.1 <-LivTCAAbbas97a.1.1:(LivTCAAbbas97a.1.1+nrow(Abbas97a.LivTCA.1.1)-1)
BldTCOH.9.1 <-BldTCOHAbbas97a.1.1:(BldTCOHAbbas97a.1.1+nrow(Abbas97a.BldTCOH.1.1)-1)
LivTCOH.9.1 <-LivTCOHAbbas97a.1.1:(LivTCOHAbbas97a.1.1+nrow(Abbas97a.LivTCOH.1.1)-1)
BldTCOGTCOH.9.1 <-BldTCOGTCOHAbbas97a.1.1:(BldTCOGTCOHAbbas97a.1.1+nrow(Abbas97a.BldTCOGTCOH.1.1)-1)
LivTCOGTCOH.9.1 <-LivTCOGTCOHAbbas97a.1.1:(LivTCOGTCOHAbbas97a.1.1+nrow(Abbas97a.LivTCOGTCOH.1.1)-1)




# AU8005

LivTCA.2.1<-c(0.130435364,0.181058372,0.661602561,0.85764557,0.224308243,0.102985162)
KidTCA.2.1<-c(0.466265583,1.092403114,0.948694191,0.879461523,-1,-1)
BrnTCA.2.1<-c(0.013554991,0.061939697,0.354840477,-1,-1,-1)
SrmTCA.2.1<-c(0.314716903,0.375664749,1.120340637,-1,0.544689367,-1)
LivTCA.2.2<-c(0.136279052,0.131874042,0.380678931,0.110734929,-1,0.025712079)
KidTCA.2.2<-c(0.692909505,0.917726186,0.207431935,0.170496301,-1,0.163029608)
BrnTCA.2.2<-c(0.026083658,0.04987165,0.025130688,0.002088463,-1,-1)
SrmTCA.2.2<-c(-1,0.466705746,0.025130688,0.082212446,0.015466652,0.079177805)

LivTCA.3.1<-c(-1,0.225197019,0.38296809,-1,-1,-1)
KidTCA.3.1<-c(-1,0.978743645,1.099106374,-1,-1,-1)
BrnTCA.3.1<-c(-1,-1,-1,-1,-1,-1)
SrmTCA.3.1<-c(-1,-1,0.36776802,-1,-1,-1)
LivTCA.3.2<-c(0.113130958,0.206075854,0.254597048,0.065611086,0.034263746,-1)
KidTCA.3.2<-c(1.027007041,1.325921687,0.500620102,0.304057025,0.344793609,0.253608981)
BrnTCA.3.2<-c(0.031822318,0.053101858,0.021853332,0.014047521,0.034621327,-1)
SrmTCA.3.2<-c(0.239123294,0.067425301,0.379710014,0.196506725,0.079449001,-1)

LivTCA.4.1<-c(0.308653149,0.442219622,0.576564029,0.27807191,0.223536225,0.078017152)
KidTCA.4.1<-c(1.444219855,0.762626163,0.27120351,-1,0.161617287,-1)
BrnTCA.4.1<-c(0.008704019,-1,-1,0.009537826,0.001097061,-1)
SrmTCA.4.1<-c(-1,0.254823205,0.519661415,0.614855093,0.093973491,-1)
LivTCA.4.2<-c(0.149686332,0.211716415,0.331298664,0.376952167,0.04165003,0.073432872)
KidTCA.4.2<-c(0.891266027,0.656255204,1.519105535,0.27757936,-1,-1)
BrnTCA.4.2<-c(0.024622213,0.00287851,0.012954662,0.219170025,-1,-1)
SrmTCA.4.2<-c(0.235523168,0.593317257,0.488445642,0.580061466,0.108920027,0.052595634)

AU8005.df<-data.frame(time,SrmTCA.2.1,LivTCA.2.1,KidTCA.2.1,BrnTCA.2.1,
                      SrmTCA.2.2, LivTCA.2.2,KidTCA.2.2,BrnTCA.2.2)
AU8034.df<-data.frame(time,SrmTCA.3.1, LivTCA.3.1,KidTCA.3.1,BrnTCA.3.1,
                      SrmTCA.3.2, LivTCA.3.2,KidTCA.3.2,BrnTCA.3.2)
IL1688.df<-data.frame(time,SrmTCA.4.1, LivTCA.4.1,KidTCA.4.1,BrnTCA.4.1,
                      SrmTCA.4.2, LivTCA.4.2,KidTCA.4.2,BrnTCA.4.2,SrmTCA.4.2)


Srm8005M <- which(colnames(df)=="CPlasTCAmol_3.1")
Liv8005M <- which(colnames(df)=="CLivTCAmol_3.1")
Kid8005M <- which(colnames(df)=="CKidTCAmol_3.1")
Brn8005M <- which(colnames(df)=="CBrnTCAmol_3.1")
Srm8005F <- which(colnames(df)=="CPlasTCAmol_4.1")
Liv8005F <- which(colnames(df)=="CLivTCAmol_4.1")
Kid8005F <- which(colnames(df)=="CKidTCAmol_4.1")
Brn8005F <- which(colnames(df)=="CBrnTCAmol_4.1")
 
j2.1 <- Srm8005M:(Srm8005M+5)
k2.1 <- Liv8005M:(Liv8005M+5) 
l2.1 <- Kid8005M:(Kid8005M+5)
m2.1 <- Brn8005M:(Brn8005M+5)

j2.2 <- Srm8005F:(Srm8005F+5)
k2.2 <- Liv8005F:(Liv8005F+5) 
l2.2 <- Kid8005F:(Kid8005F+5)
m2.2 <- Brn8005F:(Brn8005F+5)

Srm8034M <- which(colnames(df)=="CPlasTCAmol_5.1")
Liv8034M <- which(colnames(df)=="CLivTCAmol_5.1")
Kid8034M <- which(colnames(df)=="CKidTCAmol_5.1")
Brn8034M <- which(colnames(df)=="CBrnTCAmol_5.1")
Srm8034F <- which(colnames(df)=="CPlasTCAmol_6.1")
Liv8034F <- which(colnames(df)=="CLivTCAmol_6.1")
Kid8034F <- which(colnames(df)=="CKidTCAmol_6.1")
Brn8034F <- which(colnames(df)=="CBrnTCAmol_6.1")

j3.1 <- Srm8034M:(Srm8034M+5)
k3.1 <- Liv8034M:(Liv8034M+5) 
l3.1 <- Kid8034M:(Kid8034M+5)
m3.1 <- Brn8034M:(Brn8034M+5)

j3.2 <- Srm8034F:(Srm8034F+5)
k3.2 <- Liv8034F:(Liv8034F+5) 
l3.2 <- Kid8034F:(Kid8034F+5)
m3.2 <- Brn8034F:(Brn8034F+5)

Liv1688M <- which(colnames(df)=="CLivTCAmol_7.1")
Kid1688M <- which(colnames(df)=="CKidTCAmol_7.1")
Brn1688M <- which(colnames(df)=="CBrnTCAmol_7.1")
Srm1688M <- which(colnames(df)=="CPlasTCAmol_7.1")
Liv1688F <- which(colnames(df)=="CLivTCAmol_8.1")
Kid1688F <- which(colnames(df)=="CKidTCAmol_8.1")
Brn1688F <- which(colnames(df)=="CBrnTCAmol_8.1")
Srm1688F <- which(colnames(df)=="CPlasTCAmol_8.1")

j4.1 <- Srm1688M:(Srm1688M+5)
k4.1 <- Liv1688M:(Liv1688M+5) 
l4.1 <- Kid1688M:(Kid1688M+5)
m4.1 <- Brn1688M:(Brn1688M+5)

j4.2 <- Srm1688F:(Srm1688F+5)
k4.2 <- Liv1688F:(Liv1688F+5) 
l4.2 <- Kid1688F:(Kid1688F+5)
m4.2 <- Brn1688F:(Brn1688F+5)

#


#
source("AU8005.R")
source("AU8034.R")
source("IL1688.R")
  