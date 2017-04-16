rm(list = ls())

system("./mcsim.TCE.2.10 TCE.2.10.forAbhi-BW.in")

df <- read.delim("TCE.2.10.forAbhi-BW.out", head = T)

time = c(1,2,6,12,24,36)

# AU18042.df
M.b.wt<-c(24.5,25.2,25.7,25.5,23.7,26.3,25)
F.b.wt<-c(17.5,17.5,20.6,20.3,18.9,19.1,17.7)
M.Liv.wt<-c(1.16,1.68,1.83,1.73,1.3,1.82,1.54)
F.Liv.wt<-c(1.16,1.21,1.28,1.3,1.09,1.3,1.04)
M.Kid.wt<-c(0.24,0.38,0.37,0.4,0.35,0.4,0.39)
F.Kid.wt<-c(0.24,0.23,0.28,0.28,0.25,0.25,0.26)
M.Lng.wt<-c(0.12,0.16,0.16,0.16,0.15,0.15,0.16)
F.Lng.wt<-c(0.15,0.11,0.15,0.14,0.13,0.13,0.13)
M.Brn.wt<-c(0.4,0.42,0.41,0.42,0.42,0.42,0.4)
F.Brn.wt<-c(0.4,0.37,0.44,0.42,0.42,0.36,0.39)

M.VLivC <- mean(M.Liv.wt/M.b.wt/0.055)
M.VKidC <- mean(M.Kid.wt/M.b.wt/0.017)
M.VBrnC <- mean(M.Brn.wt/M.b.wt/0.017)
F.VLivC <- mean(F.Liv.wt/F.b.wt/0.055)
F.VKidC <- mean(F.Kid.wt/F.b.wt/0.017)
F.VBrnC <- mean(F.Brn.wt/F.b.wt/0.017)


LivTCA.1.1<-c(0.21454641,0.459107744,0.365669663,0.363575634,0.097045295,0.026917249)
KidTCA.1.1<-c(2.049377208, 1.245486193, 0.310472183, 0.211421705, NA, NA)
BrnTCA.1.1<-c(NA,0.005436334,0.125089663,0.019941764,NA,NA)
SrmTCA.1.1<-c(0.018260375,0.554985219,0.234580911,0.15642455,0.013634181,0.015822992)
LivTCA.1.2<-c(0.060315365,0.178408603,0.180481165,0.109905788,NA,0.018137806)
KidTCA.1.2<-c(0.892018762,0.854975385,0.177279269,0.163219933,NA,NA)
BrnTCA.1.2<-c(0.030444173,0.011259165,0.001761082,NA,NA,NA)
SrmTCA.1.2<-c(0.286868002,0.334293476,0.22965677,0.144968331,0.129685476,NA)
TotTCOH.1.1<-c(390.6720823,362.6174293,55.04310472,43.10036857,NA,NA)/1000
LivTCOH.1.1<-c(1273.811447,958.3573414,NA,NA,NA,NA)/1000
BrnTCOH.1.1<-c(238.8855281,249.6489993,NA,NA,NA,NA)/1000
SrmDCVG.1.1<-c(3.550288789,2.086333375,NA,NA,NA,NA)/10^6
SrmDCVC.1.1<-c(10.10557327,NA,NA,NA,NA,NA)/10^6
TotTCOH.1.2<-c(145.8130908,212.5731004,47.66636534,48.68164282,NA,NA)/1000
LivTCOH.1.2<-c(663.2963883,525.6638401,NA,NA,NA,NA)/1000
BrnTCOH.1.2<-c(178.7402689,218.6729318,NA,NA,NA,NA)/1000
SrmDCVG.1.2<-c(3.629341575,2.783421779,NA,NA,NA,NA)/10^6
SrmDCVC.1.2<-c(NA,NA,NA,NA,NA,NA)/10^6

AU18042.df<-data.frame(time,SrmTCA.1.1,LivTCA.1.1,KidTCA.1.1,BrnTCA.1.1,
                       SrmTCA.1.2, LivTCA.1.2,KidTCA.1.2,BrnTCA.1.2,
                       TotTCOH.1.1,LivTCOH.1.1,SrmDCVG.1.1,SrmDCVC.1.1,
                       TotTCOH.1.2,LivTCOH.1.2,SrmDCVG.1.2,SrmDCVC.1.2)

# df AU18042
VenTCE18042M <- which(colnames(df)=="CVen_1.1")
LivTCE18042M <- which(colnames(df)=="CLiv_1.1")
KidTCE18042M <- which(colnames(df)=="CKid_1.1")
FatTCE18042M <- which(colnames(df)=="CFat_1.1")
BrnTCE18042M <- which(colnames(df)=="CBrn_1.1")
LngTCE18042M <- which(colnames(df)=="CLung_1.1")
SlwTCE18042M <- which(colnames(df)=="CSlw_1.1")
SrmTCA18042M <- which(colnames(df)=="CPlasTCAmol_1.1")
LivTCA18042M <- which(colnames(df)=="CLivTCAmol_1.1")
KidTCA18042M <- which(colnames(df)=="CKidTCAmol_1.1")
BrnTCA18042M <- which(colnames(df)=="CBrnTCAmol_1.1")
TotTCOH18042M <- which(colnames(df)=="TotCTCOHmol_1.1")
SrmTCOH18042M <- which(colnames(df)=="CTCOHmol_1.1")
LivTCOH18042M <- which(colnames(df)=="CLivTCOHmol_1.1")
SrmDCVG18042M <- which(colnames(df)=="CDCVGmol_1.1")
SrmDCVC18042M <- which(colnames(df)=="CDCVCmol_1.1")

VenTCE18042F <- which(colnames(df)=="CVen_2.1")
LivTCE18042F <- which(colnames(df)=="CLiv_2.1")
KidTCE18042F <- which(colnames(df)=="CKid_2.1")
FatTCE18042F <- which(colnames(df)=="CFat_2.1")
BrnTCE18042F <- which(colnames(df)=="CBrn_2.1")
LngTCE18042F <- which(colnames(df)=="CLung_2.1")
SlwTCE18042F <- which(colnames(df)=="CSlw_2.1")
SrmTCA18042F <- which(colnames(df)=="CPlasTCAmol_2.1")
LivTCA18042F <- which(colnames(df)=="CLivTCAmol_2.1")
KidTCA18042F <- which(colnames(df)=="CKidTCAmol_2.1")
BrnTCA18042F <- which(colnames(df)=="CBrnTCAmol_2.1")
TotTCOH18042F <- which(colnames(df)=="TotCTCOHmol_2.1")
SrmTCOH18042F <- which(colnames(df)=="CTCOHmol_2.1")
LivTCOH18042F <- which(colnames(df)=="CLivTCOHmol_2.1")
SrmDCVG18042F <- which(colnames(df)=="CDCVGmol_2.1")
SrmDCVC18042F <- which(colnames(df)=="CDCVCmol_2.1")

#
VenTCE.1.1 <- VenTCE18042M:(VenTCE18042M+5) # col no. for male
LivTCE.1.1 <- LivTCE18042M:(LivTCE18042M+5)
KidTCE.1.1 <- KidTCE18042M:(KidTCE18042M+5)
FatTCE.1.1 <- FatTCE18042M:(FatTCE18042M+5)
BrnTCE.1.1 <- BrnTCE18042M:(BrnTCE18042M+5)
LngTCE.1.1 <- LngTCE18042M:(LngTCE18042M+5)
SlwTCE.1.1 <- SlwTCE18042M:(SlwTCE18042M+5)
SrmTCA.1.1 <- SrmTCA18042M:(SrmTCA18042M+5)
LivTCA.1.1 <- LivTCA18042M:(LivTCA18042M+5) 
KidTCA.1.1 <- KidTCA18042M:(KidTCA18042M+5)
BrnTCA.1.1 <- BrnTCA18042M:(BrnTCA18042M+5)
TotTCOH.1.1 <- TotTCOH18042M:(TotTCOH18042M+5)
SrmTCOH.1.1 <- SrmTCOH18042M:(SrmTCOH18042M+5)
LivTCOH.1.1 <- LivTCOH18042M:(LivTCOH18042M+5)
SrmDCVG.1.1 <- SrmDCVG18042M:(SrmDCVG18042M+5)
SrmDCVC.1.1 <- SrmDCVC18042M:(SrmDCVC18042M+5)

VenTCE.1.2 <- VenTCE18042F:(VenTCE18042F+5) # col no. for Female
LivTCE.1.2 <- LivTCE18042F:(LivTCE18042F+5)
KidTCE.1.2 <- KidTCE18042F:(KidTCE18042F+5)
FatTCE.1.2 <- FatTCE18042F:(FatTCE18042F+5)
BrnTCE.1.2 <- BrnTCE18042F:(BrnTCE18042F+5)
LngTCE.1.2 <- LngTCE18042F:(LngTCE18042F+5)
SlwTCE.1.2 <- SlwTCE18042F:(SlwTCE18042F+5)
SrmTCA.1.2 <- SrmTCA18042F:(SrmTCA18042F+5)
LivTCA.1.2 <- LivTCA18042F:(LivTCA18042F+5) 
KidTCA.1.2 <- KidTCA18042F:(KidTCA18042F+5)
BrnTCA.1.2 <- BrnTCA18042F:(BrnTCA18042F+5)
TotTCOH.1.2 <- TotTCOH18042F:(TotTCOH18042F+5)
SrmTCOH.1.2 <- SrmTCOH18042F:(SrmTCOH18042F+5)
LivTCOH.1.2 <- LivTCOH18042F:(LivTCOH18042F+5)
SrmDCVG.1.2 <- SrmDCVG18042F:(SrmDCVG18042F+5)
SrmDCVC.1.2 <- SrmDCVC18042F:(SrmDCVC18042F+5)

source("AU18042.R")


## AU8005 df ----
M.b.wt<-c(25.5,26.6,25,20.6,21,19.8,20.1)
F.b.wt<-c(20,16,20,17,17.2,16.7,16.8)
M.Liv.wt<-c(1.32,1.46,1.43,1.08,0.88,0.98,0.98)
F.Liv.wt<-c(1.12,0.82,1.21,0.93,0.84,1.01,0.94)
M.Kid.wt<-c(0.31,0.38,0.37,0.28,0.25,0.28,0.22)
F.Kid.wt<-c(0.27,0.24,0.31,0.2,0.24,0.26,0.24)
M.Lng.wt<-c(0.12,0.17,0.17,0.11,0.13,0.1,0.15)
F.Lng.wt<-c(0.19,0.16,0.18,0.13,0.14,0.14,0.14)
M.Brn.wt<-c(0.35,0.32,0.4,0.3,0.35,0.34,0.34)
F.Brn.wt<-c(0.38,0.42,0.39,0.31,0.36,0.33,0.32)

M.VLivC <- mean(M.Liv.wt/M.b.wt/0.055)
M.VKidC <- mean(M.Kid.wt/M.b.wt/0.017)
M.VBrnC <- mean(M.Brn.wt/M.b.wt/0.017)
F.VLivC <- mean(F.Liv.wt/F.b.wt/0.055)
F.VKidC <- mean(F.Kid.wt/F.b.wt/0.017)
F.VBrnC <- mean(F.Brn.wt/F.b.wt/0.017)

SrmTCA.2.1<-c(0.314716903,0.375664749,1.120340637,NA,0.544689367,NA)
LivTCA.2.1<-c(0.130435364,0.181058372,0.661602561,0.85764557,0.224308243,0.102985162)
KidTCA.2.1<-c(0.466265583,1.092403114,0.948694191,0.879461523,NA,NA)
BrnTCA.2.1<-c(0.013554991,0.061939697,0.354840477,-NA,NA,NA)
SrmTCA.2.2<-c(NA,0.466705746,0.025130688,0.082212446,0.015466652,0.079177805)
LivTCA.2.2<-c(0.136279052,0.131874042,0.380678931,0.110734929,NA,0.025712079)
KidTCA.2.2<-c(0.692909505,0.917726186,0.207431935,0.170496301,NA,0.163029608)
BrnTCA.2.2<-c(0.026083658,0.04987165,0.025130688,0.002088463,NA,NA)
TotTCOH.2.1<-c(53.47633231,186.467775,332.9022111,349.0165423,NA,NA)/1000
LivTCOH.2.1<-c(1149.443923,1184.948021,1314.689554,170.4230798,NA,NA)/1000
BrnTCOH.2.1<-c(355.7664596,358.9886592,156.1451444,NA,NA,NA)/1000
SrmDCVG.2.1<-c(4.729200908,3.28157303,1.629898515,1.902690377,NA,NA)/10^6
SrmDCVC.2.1<-c(NA,14.38197883,10.73947603,10.54803359,9.940698993,NA)/10^6
TotTCOH.2.2<-c(NA,223.127659,104.2596051,56.98866722,NA,NA)/1000
LivTCOH.2.2<-c(NA,401.9116267,129.4916799,NA,NA,NA)/1000
BrnTCOH.2.2<-c(244.1705254,274.5119531,NA,NA,NA,NA)/1000
SrmDCVG.2.2<-c(5.38120384,3.775100342,NA,NA,NA,NA)/10^6
SrmDCVC.2.2<-c(NA,16.06088764,12.9580701,NA,NA,NA)/10^6

AU8005.df<-data.frame(time,SrmTCA.2.1,LivTCA.2.1,KidTCA.2.1,BrnTCA.2.1,
                       SrmTCA.2.2, LivTCA.2.2,KidTCA.2.2,BrnTCA.2.2,
                       TotTCOH.2.1,LivTCOH.2.1,SrmDCVG.2.1,SrmDCVC.2.1,
                       TotTCOH.2.2,LivTCOH.2.2,SrmDCVG.2.2,SrmDCVC.2.2)

VenTCE8005M <- which(colnames(df)=="CVen_3.1")
LivTCE8005M <- which(colnames(df)=="CLiv_3.1")
KidTCE8005M <- which(colnames(df)=="CKid_3.1")
FatTCE8005M <- which(colnames(df)=="CFat_3.1")
BrnTCE8005M <- which(colnames(df)=="CBrn_3.1")
LngTCE8005M <- which(colnames(df)=="CLung_3.1")
SlwTCE8005M <- which(colnames(df)=="CSlw_3.1")
SrmTCA8005M <- which(colnames(df)=="CPlasTCAmol_3.1")
LivTCA8005M <- which(colnames(df)=="CLivTCAmol_3.1")
KidTCA8005M <- which(colnames(df)=="CKidTCAmol_3.1")
BrnTCA8005M <- which(colnames(df)=="CBrnTCAmol_3.1")
TotTCOH8005M <- which(colnames(df)=="TotCTCOHmol_3.1")
SrmTCOH8005M <- which(colnames(df)=="CTCOHmol_3.1")
LivTCOH8005M <- which(colnames(df)=="CLivTCOHmol_3.1")
SrmDCVG8005M <- which(colnames(df)=="CDCVGmol_3.1")
SrmDCVC8005M <- which(colnames(df)=="CDCVCmol_3.1")

VenTCE8005F <- which(colnames(df)=="CVen_4.1")
LivTCE8005F <- which(colnames(df)=="CLiv_4.1")
KidTCE8005F <- which(colnames(df)=="CKid_4.1")
FatTCE8005F <- which(colnames(df)=="CFat_4.1")
BrnTCE8005F <- which(colnames(df)=="CBrn_4.1")
LngTCE8005F <- which(colnames(df)=="CLung_4.1")
SlwTCE8005F <- which(colnames(df)=="CSlw_4.1")
SrmTCA8005F <- which(colnames(df)=="CPlasTCAmol_4.1")
LivTCA8005F <- which(colnames(df)=="CLivTCAmol_4.1")
KidTCA8005F <- which(colnames(df)=="CKidTCAmol_4.1")
BrnTCA8005F <- which(colnames(df)=="CBrnTCAmol_4.1")
TotTCOH8005F <- which(colnames(df)=="TotCTCOHmol_4.1")
SrmTCOH8005F <- which(colnames(df)=="CTCOHmol_4.1")
LivTCOH8005F <- which(colnames(df)=="CLivTCOHmol_4.1")
SrmDCVG8005F <- which(colnames(df)=="CDCVGmol_4.1")
SrmDCVC8005F <- which(colnames(df)=="CDCVCmol_4.1")

#
VenTCE.2.1 <- VenTCE8005M:(VenTCE8005M+5) # col no. for male
LivTCE.2.1 <- LivTCE8005M:(LivTCE8005M+5)
KidTCE.2.1 <- KidTCE8005M:(KidTCE8005M+5)
FatTCE.2.1 <- FatTCE8005M:(FatTCE8005M+5)
BrnTCE.2.1 <- BrnTCE8005M:(BrnTCE8005M+5)
LngTCE.2.1 <- LngTCE8005M:(LngTCE8005M+5)
SlwTCE.2.1 <- SlwTCE8005M:(SlwTCE8005M+5)
SrmTCA.2.1 <- SrmTCA8005M:(SrmTCA8005M+5)
LivTCA.2.1 <- LivTCA8005M:(LivTCA8005M+5) 
KidTCA.2.1 <- KidTCA8005M:(KidTCA8005M+5)
BrnTCA.2.1 <- BrnTCA8005M:(BrnTCA8005M+5)
TotTCOH.2.1 <- TotTCOH8005M:(TotTCOH8005M+5)
SrmTCOH.2.1 <- SrmTCOH8005M:(SrmTCOH8005M+5)
LivTCOH.2.1 <- LivTCOH8005M:(LivTCOH8005M+5)
SrmDCVG.2.1 <- SrmDCVG8005M:(SrmDCVG8005M+5)
SrmDCVC.2.1 <- SrmDCVC8005M:(SrmDCVC8005M+5)

VenTCE.2.2 <- VenTCE8005F:(VenTCE8005F+5) # col no. for Female
LivTCE.2.2 <- LivTCE8005F:(LivTCE8005F+5)
KidTCE.2.2 <- KidTCE8005F:(KidTCE8005F+5)
FatTCE.2.2 <- FatTCE8005F:(FatTCE8005F+5)
BrnTCE.2.2 <- BrnTCE8005F:(BrnTCE8005F+5)
LngTCE.2.2 <- LngTCE8005F:(LngTCE8005F+5)
SlwTCE.2.2 <- SlwTCE8005F:(SlwTCE8005F+5)
SrmTCA.2.2 <- SrmTCA8005F:(SrmTCA8005F+5)
LivTCA.2.2 <- LivTCA8005F:(LivTCA8005F+5) 
KidTCA.2.2 <- KidTCA8005F:(KidTCA8005F+5)
BrnTCA.2.2 <- BrnTCA8005F:(BrnTCA8005F+5)
TotTCOH.2.2 <- TotTCOH8005F:(TotTCOH8005F+5)
SrmTCOH.2.2 <- SrmTCOH8005F:(SrmTCOH8005F+5)
LivTCOH.2.2 <- LivTCOH8005F:(LivTCOH8005F+5)
SrmDCVG.2.2 <- SrmDCVG8005F:(SrmDCVG8005F+5)
SrmDCVC.2.2 <- SrmDCVC8005F:(SrmDCVC8005F+5)

#
source("AU8005.R")


# AU8034 df
M.b.wt<-c(29.8,27,25)
F.b.wt<-c(20,16,20,17,17.2,16.7,16.8)
M.Liv.wt<-c(1.76,1.65,1.24)
F.Liv.wt<-c(1.36,1.05,1.12,0.83,1.67,1.06,1.11)
M.Kid.wt<-c(0.41,0.4,0.35)
F.Kid.wt<-c(0.33,0.32,0.29,0.23,0.42,0.31,0.34)
M.Lng.wt<-c(0.18,0.16,0.15)
F.Lng.wt<-c(0.16,0.15,0.16,0.14,0.17,0.15,0.18)
M.Brn.wt<-c(0.4,0.4,0.39)
F.Brn.wt<-c(0.37,0.35,0.36,0.33,0.39,0.36,0.39)

M.VLivC <- mean(M.Liv.wt/M.b.wt/0.055)
M.VKidC <- mean(M.Kid.wt/M.b.wt/0.017)
M.VBrnC <- mean(M.Brn.wt/M.b.wt/0.017)
F.VLivC <- mean(F.Liv.wt/F.b.wt/0.055)
F.VKidC <- mean(F.Kid.wt/F.b.wt/0.017)
F.VBrnC <- mean(F.Brn.wt/F.b.wt/0.017)

LivTCA.3.1<-c(NA,0.225197019,0.38296809,NA,NA,NA)
KidTCA.3.1<-c(NA,0.978743645,1.099106374,NA,NA,NA)
BrnTCA.3.1<-c(NA,NA,NA,NA,NA,NA)
SrmTCA.3.1<-c(NA,NA,0.36776802,NA,NA,NA)
LivTCA.3.2<-c(0.113130958,0.206075854,0.254597048,0.065611086,0.034263746,NA)
KidTCA.3.2<-c(1.027007041,1.325921687,0.500620102,0.304057025,0.344793609,0.253608981)
BrnTCA.3.2<-c(0.031822318,0.053101858,0.021853332,0.014047521,0.034621327,NA)
SrmTCA.3.2<-c(0.239123294,0.067425301,0.379710014,0.196506725,0.079449001,NA)
TotTCOH.3.1<-c(NA,462.681472,358.2108607,NA,NA,NA)/1000
LivTCOH.3.1<-c(NA,1667.884426,679.0710322,NA,NA,NA)/1000
BrnTCOH.3.1<-c(NA,256.4566011,256.6154272,NA,NA,NA)/1000
SrmDCVG.3.1<-c(NA,2.943114826,2.067961822,NA,NA,NA)/10^6
SrmDCVC.3.1<-c(NA,10.82937244,7.965178961,NA,NA,NA)/10^6
TotTCOH.3.2<-c(303.741902,253.6510885,NA,61.72293565,41.95918161,NA)/1000
LivTCOH.3.2<-c(645.7647744,479.2398426,79.86100225,NA,NA,NA)/1000
BrnTCOH.3.2<-c(NA,340.7344368,61.35940699,NA,NA,NA)/1000
SrmDCVG.3.2<-c(5.586348366,2.184190254,NA,NA,NA,NA)/10^6
SrmDCVC.3.2<-c(10.78122857,NA,9.905050076,NA,NA,NA)/10^6

AU8034.df<-data.frame(time,SrmTCA.3.1, LivTCA.3.1,KidTCA.3.1,BrnTCA.3.1,
                      SrmTCA.3.2, LivTCA.3.2,KidTCA.3.2,BrnTCA.3.2,
                      TotTCOH.3.1,LivTCOH.3.1,SrmDCVG.3.1,SrmDCVC.3.1,
                      TotTCOH.3.2,LivTCOH.3.2,SrmDCVG.3.2,SrmDCVC.3.2)


# df AU8034
M.b.wt<-c(29.8,27,25)
F.b.wt<-c(20,16,20,17,17.2,16.7,16.8)
M.Liv.wt<-c(1.76,1.65,1.24)
F.Liv.wt<-c(1.36,1.05,1.12,0.83,1.67,1.06,1.11)
M.Kid.wt<-c(0.41,0.4,0.35)
F.Kid.wt<-c(0.33,0.32,0.29,0.23,0.42,0.31,0.34)
M.Lng.wt<-c(0.18,0.16,0.15)
F.Lng.wt<-c(0.16,0.15,0.16,0.14,0.17,0.15,0.18)
M.Brn.wt<-c(0.4,0.4,0.39)
F.Brn.wt<-c(0.37,0.35,0.36,0.33,0.39,0.36,0.39)

M.VLivC <- mean(M.Liv.wt/M.b.wt/0.055)
M.VKidC <- mean(M.Kid.wt/M.b.wt/0.017)
M.VBrnC <- mean(M.Brn.wt/M.b.wt/0.017)
F.VLivC <- mean(F.Liv.wt/F.b.wt/0.055)
F.VKidC <- mean(F.Kid.wt/F.b.wt/0.017)
F.VBrnC <- mean(F.Brn.wt/F.b.wt/0.017)

VenTCE8034M <- which(colnames(df)=="CVen_5.1")
LivTCE8034M <- which(colnames(df)=="CLiv_5.1")
KidTCE8034M <- which(colnames(df)=="CKid_5.1")
FatTCE8034M <- which(colnames(df)=="CFat_5.1")
BrnTCE8034M <- which(colnames(df)=="CBrn_5.1")
LngTCE8034M <- which(colnames(df)=="CLung_5.1")
SlwTCE8034M <- which(colnames(df)=="CSlw_5.1")
SrmTCA8034M <- which(colnames(df)=="CPlasTCAmol_5.1")
LivTCA8034M <- which(colnames(df)=="CLivTCAmol_5.1")
KidTCA8034M <- which(colnames(df)=="CKidTCAmol_5.1")
BrnTCA8034M <- which(colnames(df)=="CBrnTCAmol_5.1")
TotTCOH8034M <- which(colnames(df)=="TotCTCOHmol_5.1")
SrmTCOH8034M <- which(colnames(df)=="CTCOHmol_5.1")
LivTCOH8034M <- which(colnames(df)=="CLivTCOHmol_5.1")
SrmDCVG8034M <- which(colnames(df)=="CDCVGmol_5.1")
SrmDCVC8034M <- which(colnames(df)=="CDCVCmol_5.1")

VenTCE8034F <- which(colnames(df)=="CVen_6.1")
LivTCE8034F <- which(colnames(df)=="CLiv_6.1")
KidTCE8034F <- which(colnames(df)=="CKid_6.1")
FatTCE8034F <- which(colnames(df)=="CFat_6.1")
BrnTCE8034F <- which(colnames(df)=="CBrn_6.1")
LngTCE8034F <- which(colnames(df)=="CLung_6.1")
SlwTCE8034F <- which(colnames(df)=="CSlw_6.1")
SrmTCA8034F <- which(colnames(df)=="CPlasTCAmol_6.1")
LivTCA8034F <- which(colnames(df)=="CLivTCAmol_6.1")
KidTCA8034F <- which(colnames(df)=="CKidTCAmol_6.1")
BrnTCA8034F <- which(colnames(df)=="CBrnTCAmol_6.1")
TotTCOH8034F <- which(colnames(df)=="TotCTCOHmol_6.1")
SrmTCOH8034F <- which(colnames(df)=="CTCOHmol_6.1")
LivTCOH8034F <- which(colnames(df)=="CLivTCOHmol_6.1")
SrmDCVG8034F <- which(colnames(df)=="CDCVGmol_6.1")
SrmDCVC8034F <- which(colnames(df)=="CDCVCmol_6.1")

#
VenTCE.3.1 <- VenTCE8034M:(VenTCE8034M+5) # col no. for male
LivTCE.3.1 <- LivTCE8034M:(LivTCE8034M+5)
KidTCE.3.1 <- KidTCE8034M:(KidTCE8034M+5)
FatTCE.3.1 <- FatTCE8034M:(FatTCE8034M+5)
BrnTCE.3.1 <- BrnTCE8034M:(BrnTCE8034M+5)
LngTCE.3.1 <- LngTCE8034M:(LngTCE8034M+5)
SlwTCE.3.1 <- SlwTCE8034M:(SlwTCE8034M+5)
SrmTCA.3.1 <- SrmTCA8034M:(SrmTCA8034M+5)
LivTCA.3.1 <- LivTCA8034M:(LivTCA8034M+5) 
KidTCA.3.1 <- KidTCA8034M:(KidTCA8034M+5)
BrnTCA.3.1 <- BrnTCA8034M:(BrnTCA8034M+5)
TotTCOH.3.1 <- TotTCOH8034M:(TotTCOH8034M+5)
SrmTCOH.3.1 <- SrmTCOH8034M:(SrmTCOH8034M+5)
LivTCOH.3.1 <- LivTCOH8034M:(LivTCOH8034M+5)
SrmDCVG.3.1 <- SrmDCVG8034M:(SrmDCVG8034M+5)
SrmDCVC.3.1 <- SrmDCVC8034M:(SrmDCVC8034M+5)

VenTCE.3.2 <- VenTCE8034F:(VenTCE8034F+5) # col no. for Female
LivTCE.3.2 <- LivTCE8034F:(LivTCE8034F+5)
KidTCE.3.2 <- KidTCE8034F:(KidTCE8034F+5)
FatTCE.3.2 <- FatTCE8034F:(FatTCE8034F+5)
BrnTCE.3.2 <- BrnTCE8034F:(BrnTCE8034F+5)
LngTCE.3.2 <- LngTCE8034F:(LngTCE8034F+5)
SlwTCE.3.2 <- SlwTCE8034F:(SlwTCE8034F+5)
SrmTCA.3.2 <- SrmTCA8034F:(SrmTCA8034F+5)
LivTCA.3.2 <- LivTCA8034F:(LivTCA8034F+5) 
KidTCA.3.2 <- KidTCA8034F:(KidTCA8034F+5)
BrnTCA.3.2 <- BrnTCA8034F:(BrnTCA8034F+5)
TotTCOH.3.2 <- TotTCOH8034F:(TotTCOH8034F+5)
SrmTCOH.3.2 <- SrmTCOH8034F:(SrmTCOH8034F+5)
LivTCOH.3.2 <- LivTCOH8034F:(LivTCOH8034F+5)
SrmDCVG.3.2 <- SrmDCVG8034F:(SrmDCVG8034F+5)
SrmDCVC.3.2 <- SrmDCVC8034F:(SrmDCVC8034F+5)

source("AU8034.R")


# IL1688 df
M.b.wt<-30.4
F.b.wt<-c(25.5,28.3,21.9)
M.Liv.wt<-1.2
F.Liv.wt<-c(1.22,1.45,0.97)
M.Kid.wt<-0.29
F.Kid.wt<-c(0.3,0.27,0.23)
M.Lng.wt<-0.12
F.Lng.wt<-c(0.17,0.16,0.12)
M.Brn.wt<-NA
F.Brn.wt<-c(0.42,0.45,0.43)

M.VLivC <- mean(M.Liv.wt/M.b.wt/0.055)
M.VKidC <- mean(M.Kid.wt/M.b.wt/0.017)
M.VBrnC <- mean(M.Brn.wt/M.b.wt/0.017)
F.VLivC <- mean(F.Liv.wt/F.b.wt/0.055)
F.VKidC <- mean(F.Kid.wt/F.b.wt/0.017)
F.VBrnC <- mean(F.Brn.wt/F.b.wt/0.017)

LivTCA.4.1<-c(0.308653149,0.442219622,0.576564029,0.27807191,0.223536225,0.078017152)
KidTCA.4.1<-c(1.444219855,0.762626163,0.27120351,NA,0.161617287,NA)
BrnTCA.4.1<-c(0.008704019,NA,NA,0.009537826,0.001097061,NA)
SrmTCA.4.1<-c(NA,0.254823205,0.519661415,0.614855093,0.093973491,NA)
LivTCA.4.2<-c(0.149686332,0.211716415,0.331298664,0.376952167,0.04165003,0.073432872)
KidTCA.4.2<-c(0.891266027,0.656255204,1.519105535,0.27757936,NA,NA)
BrnTCA.4.2<-c(0.024622213,0.00287851,0.012954662,0.219170025,NA,NA)
SrmTCA.4.2<-c(0.235523168,0.593317257,0.488445642,0.580061466,0.108920027,0.052595634)
TotTCOH.4.1<-c(212.9452133,279.7975857,162.8063515,NA,48.59263582,NA)/1000
LivTCOH.4.1<-c(504.8000838,490.4475173,149.8596583,NA,NA,NA)/1000
BrnTCOH.4.1<-c(168.3013178,126.0362971,49.09015311,NA,NA,NA)/1000
SrmDCVG.4.1<-c(2.871740811,2.121202771,NA,NA,NA,2.275912478)/10^6
SrmDCVC.4.1<-c(NA,NA,NA,NA,9.775075593,NA)/10^6
TotTCOH.4.2<-c(188.2530667,204.8981809,63.79321083,54.61456685,59.77950619,NA)/1000
LivTCOH.4.2<-c(228.599884,217.0305118,274.5096664,NA,NA,NA)/1000
BrnTCOH.4.2<-c(121.1087223,183.2524479,NA,NA,NA,NA)/1000
SrmDCVG.4.2<-c(3.344981765,2.370466832,1.625900767,NA,NA,NA)/10^6
SrmDCVC.4.2<-c(NA,NA,NA,NA,NA,NA)/10^6

IL1688.df<-data.frame(time,SrmTCA.4.1, LivTCA.4.1,KidTCA.4.1,BrnTCA.4.1,
                      SrmTCA.4.2, LivTCA.4.2,KidTCA.4.2,BrnTCA.4.2,SrmTCA.4.2,
                      TotTCOH.4.1,LivTCOH.4.1,SrmDCVG.4.1,SrmDCVC.4.1,
                      TotTCOH.4.2,LivTCOH.4.2,SrmDCVG.4.2,SrmDCVC.4.2)

VenTCE1688M <- which(colnames(df)=="CVen_7.1")
LivTCE1688M <- which(colnames(df)=="CLiv_7.1")
KidTCE1688M <- which(colnames(df)=="CKid_7.1")
FatTCE1688M <- which(colnames(df)=="CFat_7.1")
BrnTCE1688M <- which(colnames(df)=="CBrn_7.1")
LngTCE1688M <- which(colnames(df)=="CLung_7.1")
SlwTCE1688M <- which(colnames(df)=="CSlw_7.1")
SrmTCA1688M <- which(colnames(df)=="CPlasTCAmol_7.1")
LivTCA1688M <- which(colnames(df)=="CLivTCAmol_7.1")
KidTCA1688M <- which(colnames(df)=="CKidTCAmol_7.1")
BrnTCA1688M <- which(colnames(df)=="CBrnTCAmol_7.1")
TotTCOH1688M <- which(colnames(df)=="TotCTCOHmol_7.1")
SrmTCOH1688M <- which(colnames(df)=="CTCOHmol_7.1")
LivTCOH1688M <- which(colnames(df)=="CLivTCOHmol_7.1")
SrmDCVG1688M <- which(colnames(df)=="CDCVGmol_7.1")
SrmDCVC1688M <- which(colnames(df)=="CDCVCmol_7.1")

VenTCE1688F <- which(colnames(df)=="CVen_8.1")
LivTCE1688F <- which(colnames(df)=="CLiv_8.1")
KidTCE1688F <- which(colnames(df)=="CKid_8.1")
FatTCE1688F <- which(colnames(df)=="CFat_8.1")
BrnTCE1688F <- which(colnames(df)=="CBrn_8.1")
LngTCE1688F <- which(colnames(df)=="CLung_8.1")
SlwTCE1688F <- which(colnames(df)=="CSlw_8.1")
SrmTCA1688F <- which(colnames(df)=="CPlasTCAmol_8.1")
LivTCA1688F <- which(colnames(df)=="CLivTCAmol_8.1")
KidTCA1688F <- which(colnames(df)=="CKidTCAmol_8.1")
BrnTCA1688F <- which(colnames(df)=="CBrnTCAmol_8.1")
TotTCOH1688F <- which(colnames(df)=="TotCTCOHmol_8.1")
SrmTCOH1688F <- which(colnames(df)=="CTCOHmol_8.1")
LivTCOH1688F <- which(colnames(df)=="CLivTCOHmol_8.1")
SrmDCVG1688F <- which(colnames(df)=="CDCVGmol_8.1")
SrmDCVC1688F <- which(colnames(df)=="CDCVCmol_8.1")

VenTCE.4.1 <- VenTCE1688M:(VenTCE1688M+5) # col no. for male
LivTCE.4.1 <- LivTCE1688M:(LivTCE1688M+5)
KidTCE.4.1 <- KidTCE1688M:(KidTCE1688M+5)
FatTCE.4.1 <- FatTCE1688M:(FatTCE1688M+5)
BrnTCE.4.1 <- BrnTCE1688M:(BrnTCE1688M+5)
LngTCE.4.1 <- LngTCE1688M:(LngTCE1688M+5)
SlwTCE.4.1 <- SlwTCE1688M:(SlwTCE1688M+5)
SrmTCA.4.1 <- SrmTCA1688M:(SrmTCA1688M+5)
LivTCA.4.1 <- LivTCA1688M:(LivTCA1688M+5) 
KidTCA.4.1 <- KidTCA1688M:(KidTCA1688M+5)
BrnTCA.4.1 <- BrnTCA1688M:(BrnTCA1688M+5)
TotTCOH.4.1 <- TotTCOH1688M:(TotTCOH1688M+5)
SrmTCOH.4.1 <- SrmTCOH1688M:(SrmTCOH1688M+5)
LivTCOH.4.1 <- LivTCOH1688M:(LivTCOH1688M+5)
SrmDCVG.4.1 <- SrmDCVG1688M:(SrmDCVG1688M+5)
SrmDCVC.4.1 <- SrmDCVC1688M:(SrmDCVC1688M+5)

VenTCE.4.2 <- VenTCE1688F:(VenTCE1688F+5) # col no. for Female
LivTCE.4.2 <- LivTCE1688F:(LivTCE1688F+5)
KidTCE.4.2 <- KidTCE1688F:(KidTCE1688F+5)
FatTCE.4.2 <- FatTCE1688F:(FatTCE1688F+5)
BrnTCE.4.2 <- BrnTCE1688F:(BrnTCE1688F+5)
LngTCE.4.2 <- LngTCE1688F:(LngTCE1688F+5)
SlwTCE.4.2 <- SlwTCE1688F:(SlwTCE1688F+5)
SrmTCA.4.2 <- SrmTCA1688F:(SrmTCA1688F+5)
LivTCA.4.2 <- LivTCA1688F:(LivTCA1688F+5) 
KidTCA.4.2 <- KidTCA1688F:(KidTCA1688F+5)
BrnTCA.4.2 <- BrnTCA1688F:(BrnTCA1688F+5)
TotTCOH.4.2 <- TotTCOH1688F:(TotTCOH1688F+5)
SrmTCOH.4.2 <- SrmTCOH1688F:(SrmTCOH1688F+5)
LivTCOH.4.2 <- LivTCOH1688F:(LivTCOH1688F+5)
SrmDCVG.4.2 <- SrmDCVG1688F:(SrmDCVG1688F+5)
SrmDCVC.4.2 <- SrmDCVC1688F:(SrmDCVC1688F+5)

source("IL1688.R")

# Abbas97a_600 ----
tVen<-c(0.25, 0.5, 2, 4, 8);
CVen<-c(81.9, 71.3, 5.71, 1.94, 0.965);
tLiv<-c(0.25, 0.5, 2, 4, 8, 24);
CLiv<-c(213.5, 163.8, 19.43, 10.63, 0.71, 0.339);
tKid<-c(0.25, 0.5, 2, 4, 8, 24);
CKid<-c(83.08, 135.5, 15.98, 10.89, 5.4, 0.42);
tFat<-c(0.25, 0.5, 2, 4, 8, 16, 24);
CFat<-c( 278.5, 659, 468.91, 46.76, 9.48, 0.71, 0.32);

tBldTCA<-c(0.25, 0.5, 2, 4, 8, 16, 24, 40);
CBldTCA<-c(11.18, 14.26, 26.98, 31.73, 31.87, 29.48, 24.81, 21.1 );
tLivTCA<-c(0.25, 0.5, 2, 4, 8, 16, 24, 30, 40);
CLivTCA<-c(11.2, 22.9, 33.5, 39.9, 54.99, 39.06, 28.2, 15.2, 7.6);
tTCOH<-c(0.25, 0.5, 2, 4, 8, 12);
CTCOH<-c(18.8, 26.76, 24.01, 8.23, 2.16, 1.02);
tLivTCOH<-c(0.25, 0.5, 2, 4, 8, 12);
CLivTCOH<-c(50.25, 46.83, 36.29, 21.06, 11.24, 4.29);

tTCOGTCOH<-c(0.25, 0.5, 2, 4, 8, 12);
CTCOGTCOH<-c(10.51, 39.66, 27.01, 23.55, 14.76, 6.89);
tLivTCOGTCOH<-c(0.25, 0.5, 2, 4, 8);
CLivTCOGTCOH<-c(18.45, 20.07, 39.44, 19.59, 46.06);

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

source("Abbas97a_600.R")


# Abbas97a_1200 ----
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

Abbas97a.Ven.1.2<-data.frame(tVen,CVen)
Abbas97a.Liv.1.2<-data.frame(tLiv,CLiv)
Abbas97a.Kid.1.2<-data.frame(tKid,CKid)
Abbas97a.Fat.1.2<-data.frame(tFat,CFat)
Abbas97a.BldTCA.1.2<-data.frame(tBldTCA,CBldTCA)
Abbas97a.LivTCA.1.2<-data.frame(tLivTCA,CLivTCA)
Abbas97a.BldTCOH.1.2<-data.frame(tTCOH,CTCOH)
Abbas97a.LivTCOH.1.2<-data.frame(tLivTCOH,CLivTCOH)
Abbas97a.BldTCOGTCOH.1.2<-data.frame(tTCOGTCOH,CTCOGTCOH)
Abbas97a.LivTCOGTCOH.1.2<-data.frame(tLivTCOGTCOH,CLivTCOGTCOH)

VenAbbas97a.1.2 <- which(colnames(df)=="CVen_10.1")
LivAbbas97a.1.2 <- which(colnames(df)=="CLiv_10.1")
KidAbbas97a.1.2 <- which(colnames(df)=="CKid_10.1")
FatAbbas97a.1.2 <- which(colnames(df)=="CFat_10.1")
BldTCAAbbas97a.1.2 <- which(colnames(df)=="CBldTCA_10.1")
LivTCAAbbas97a.1.2 <- which(colnames(df)=="CLivTCA_10.1")
BldTCOHAbbas97a.1.2 <- which(colnames(df)=="CTCOH_10.1")
LivTCOHAbbas97a.1.2 <- which(colnames(df)=="CLivTCOH_10.1")
BldTCOGTCOHAbbas97a.1.2 <- which(colnames(df)=="CTCOGTCOH_10.1")
LivTCOGTCOHAbbas97a.1.2 <- which(colnames(df)=="CLivTCOGTCOH_10.1")

Ven.10.1 <-VenAbbas97a.1.2:(VenAbbas97a.1.2+nrow(Abbas97a.Ven.1.2)-1)
Liv.10.1 <-LivAbbas97a.1.2:(LivAbbas97a.1.2+nrow(Abbas97a.Liv.1.2)-1)
Kid.10.1 <-KidAbbas97a.1.2:(KidAbbas97a.1.2+nrow(Abbas97a.Kid.1.2)-1)
Fat.10.1 <-FatAbbas97a.1.2:(FatAbbas97a.1.2+nrow(Abbas97a.Fat.1.2)-1)
BldTCA.10.1 <-BldTCAAbbas97a.1.2:(BldTCAAbbas97a.1.2+nrow(Abbas97a.BldTCA.1.2)-1)
LivTCA.10.1 <-LivTCAAbbas97a.1.2:(LivTCAAbbas97a.1.2+nrow(Abbas97a.LivTCA.1.2)-1)
BldTCOH.10.1 <-BldTCOHAbbas97a.1.2:(BldTCOHAbbas97a.1.2+nrow(Abbas97a.BldTCOH.1.2)-1)
LivTCOH.10.1 <-LivTCOHAbbas97a.1.2:(LivTCOHAbbas97a.1.2+nrow(Abbas97a.LivTCOH.1.2)-1)
BldTCOGTCOH.10.1 <-BldTCOGTCOHAbbas97a.1.2:(BldTCOGTCOHAbbas97a.1.2+nrow(Abbas97a.BldTCOGTCOH.1.2)-1)
LivTCOGTCOH.10.1 <-LivTCOGTCOHAbbas97a.1.2:(LivTCOGTCOHAbbas97a.1.2+nrow(Abbas97a.LivTCOGTCOH.1.2)-1)

source("Abbas97a_1200.R")

# Kim
t<-c(0.1, 0.5, 0.501, 0.502, 1, 1.001, 1.002, 1.5, 2, 2.001, 2.002, 2.5, 3.5, 4.5, 5.5, 6, 6.001, 6.002, 6.5, 7.5, 8, 8.001, 8.002, 8.5, 9.5, 10.5, 11.5, 12, 12.001, 12.002, 12.5, 13.5, 14.5, 15.5, 16.5, 17.5, 18.5, 19.5, 20.5, 21.5, 22.5, 23.5, 24, 24.001, 24.002)
CBldTCA<-c(NA, 20.1511583, 23.7230087, 23.0428202, 24.8080619, 34.3938822, 27.1081576, NA, 46.3552755, 41.7219906, 36.6405543, NA, NA, NA, NA, 53.5910665, 55.4010544, 56.0361143, NA, NA, 60.1085502, 63.7969197, 66.4811927, NA, NA, NA, NA, 57.9056609, 52.0512058, 47.9442471, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 37.05584, 31.1496671, 35.7024858)
CDCVGmol<-c(NA, 0.00002243, 0.00003947, 0.00005477, 0.00003085, 0.00003645, 0.00002944, NA, 0.00003038, 0.00005421, 0.00002721, NA, NA, NA, NA, 0.00002357, 0.0000388, 0.00002156, NA, NA, 0.00001896, 0.00002049, 0.00001746, NA, NA, NA, NA, NA, 0.00000143, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 0.00000059)
CDCVCmol<-c(NA, 0.00000043, 0.0000003, 0.00000022, 0.00000058, 0.00000155, 0.00000103, NA, 0.00000145, 0.00000313, 0.00000271, NA, NA, NA, NA, 0.00000097, 0.00000025, 0.00000118, NA, NA, 0.00000295, 0.00000269, 0.00000053, NA, NA, NA, NA, 0.00000115, 0.00000027, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 0.00000061, NA, 0.0000001)
CDCAmol<-c(NA, 0.0000867, 0.0001007, 0.0000761, 0.0000759, 0.0000829, 0.0000726, NA, 0.0000695, 0.0000525, 0.0000805, NA, NA, NA, NA, 0.000089, 0.0000875, 0.0000634, NA, NA, 0.0000463, 0.0000857, 0.0000405, NA, NA, NA, NA, 0.0000788, 0.0000398, 0.0000989, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 0.0000694, 0.0000513, 0.0000034)
Kim09.df<-data.frame(t,CBldTCA,CDCVGmol,CDCVCmol,CDCAmol)

BldTCA.Kim09 <- which(colnames(df)=="CBldTCA_11.1")
CDCVGmol.Kim09 <- which(colnames(df)=="CDCVGmol_11.1")
CDCVCmol.Kim09 <- which(colnames(df)=="CDCVCmol_11.1")
CDCAmol.Kim09 <- which(colnames(df)=="CDCAmol_11.1")

CBldTCA.11.1 <-BldTCA.Kim09:(BldTCA.Kim09+nrow(Kim09.df)-1)
CDCVGmol.11.1 <-CDCVGmol.Kim09:(CDCVGmol.Kim09+nrow(Kim09.df)-1)
CDCVCmol.11.1 <-CDCVCmol.Kim09:(CDCVCmol.Kim09+nrow(Kim09.df)-1)
CDCAmol.11.1 <-CDCAmol.Kim09:(CDCAmol.Kim09+nrow(Kim09.df)-1)

t<-c(0.1, 0.5, 1.5, 2, 2.001, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8, 8.001, 8.002, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5, 14.5, 15.5, 16.5, 17.5, 18.5, 19.5, 20.5, 21.5, 22.5, 23.5, 24)
CBldTCA<-c(NA, NA, NA, 51.91357, 17.69533, NA, NA, NA, NA, NA, NA, 92.07352, 56.62904, 98.62414, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 67.52876)
CDCVGmol<-c(NA, NA, NA, 5.28372e-06, 1.08168e-07, NA, NA, NA, NA, NA, NA, 3.23481e-07, 4.21901e-06, 1.06958e-06, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 1.07729e-07)
CDCVCmol<-c(NA, NA, NA, 3.06659e-06, 7.30229e-07, NA, NA, NA, NA, NA, NA, 3.11124e-06, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
CDCAmol<-c(NA, NA, NA, 5.40229e-05, 1.22684e-05, NA, NA, NA, NA, NA, NA, NA, 2.50683e-06, 4.03941e-05, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 0.000174975)
S1.df <-data.frame(t,CBldTCA,CDCVGmol,CDCVCmol,CDCAmol)

BldTCA.Bfd11 <- which(colnames(df)=="CBldTCA_12.1")
CDCVGmol.Bfd11 <- which(colnames(df)=="CDCVGmol_12.1")
CDCVCmol.Bfd11 <- which(colnames(df)=="CDCVCmol_12.1")
CDCAmol.Bfd11 <- which(colnames(df)=="CDCAmol_12.1")

CBldTCA.12.1 <-BldTCA.Bfd11:(BldTCA.Bfd11+nrow(S1.df)-1)
CDCVGmol.12.1 <-CDCVGmol.Bfd11:(CDCVGmol.Bfd11+nrow(S1.df)-1)
CDCVCmol.12.1 <-CDCVCmol.Bfd11:(CDCVCmol.Bfd11+nrow(S1.df)-1)
CDCAmol.12.1 <-CDCAmol.Bfd11:(CDCAmol.Bfd11+nrow(S1.df)-1)

source("Kim09nBfd11.R")
