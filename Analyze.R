rm(list = ls())

system("./mcsim.TCE.2.10 TCE.2.10.forAbhi-BW.in")

TCA.df <- read.delim("TCE.2.10.forAbhi-BW.out", head = T)

time = c(1,2,6,12,24,36)

Liv.1.1<-c(0.21454641,0.459107744,0.365669663,0.363575634,0.097045295,0.026917249)
Kid.1.1<-c(2.049377208, 1.245486193, 0.310472183, 0.211421705, -1, -1)
Brn.1.1<-c(-1,0.005436334,0.125089663,0.019941764,-1,-1)
Srm.1.1<-c(0.018260375,0.554985219,0.234580911,0.15642455,0.013634181,0.015822992)
Liv.1.2<-c(0.060315365,0.178408603,0.180481165,0.109905788,-1,0.018137806)
Kid.1.2<-c(0.892018762,0.854975385,0.177279269,0.163219933,-1,-1)
Brn.1.2<-c(0.030444173,0.011259165,0.001761082,-1,-1,-1)
Srm.1.2<-c(0.286868002,0.334293476,0.22965677,0.144968331,0.129685476,-1)

Liv.2.1<-c(0.130435364,0.181058372,0.661602561,0.85764557,0.224308243,0.102985162)
Kid.2.1<-c(0.466265583,1.092403114,0.948694191,0.879461523,-1,-1)
Brn.2.1<-c(0.013554991,0.061939697,0.354840477,-1,-1,-1)
Srm.2.1<-c(0.314716903,0.375664749,1.120340637,-1,0.544689367,-1)
Liv.2.2<-c(0.136279052,0.131874042,0.380678931,0.110734929,-1,0.025712079)
Kid.2.2<-c(0.692909505,0.917726186,0.207431935,0.170496301,-1,0.163029608)
Brn.2.2<-c(0.026083658,0.04987165,0.025130688,0.002088463,-1,-1)
Srm.2.2<-c(-1,0.466705746,0.025130688,0.082212446,0.015466652,0.079177805)

AU18042.df<-data.frame(time,Liv.1.1,Kid.1.1,Brn.1.1,Srm.1.1,
                       Liv.1.2,Kid.1.2,Brn.1.2,Srm.1.2)
AU8005.df<-data.frame(time,Liv.2.1,Kid.2.1,Brn.2.1,Srm.2.1,
                       Liv.2.2,Kid.2.2,Brn.2.2,Srm.2.2)

Liv18042M <- which(colnames(TCA.df)=="CLivTCAmol_1.1")
Kid18042M <- which(colnames(TCA.df)=="CKidTCAmol_1.1")
Brn18042M <- which(colnames(TCA.df)=="CBrnTCAmol_1.1")
Srm18042M <- which(colnames(TCA.df)=="CPlasTCAmol_1.1")
Liv18042F <- which(colnames(TCA.df)=="CLivTCAmol_2.1")
Kid18042F <- which(colnames(TCA.df)=="CKidTCAmol_2.1")
Brn18042F <- which(colnames(TCA.df)=="CBrnTCAmol_2.1")
Srm18042F <- which(colnames(TCA.df)=="CPlasTCAmol_2.1")

j1.1 <- Liv18042M:(Liv18042M+5) 
k1.1 <- Kid18042M:(Kid18042M+5)
l1.1 <- Brn18042M:(Brn18042M+5)
m1.1 <- Srm18042M:(Srm18042M+5)

j1.2 <- Liv18042F:(Liv18042F+5) 
k1.2 <- Kid18042F:(Kid18042F+5)
l1.2 <- Brn18042F:(Brn18042F+5)
m1.2 <- Srm18042F:(Srm18042F+5)

Liv8005M <- which(colnames(TCA.df)=="CLivTCAmol_3.1")
Kid8005M <- which(colnames(TCA.df)=="CKidTCAmol_3.1")
Brn8005M <- which(colnames(TCA.df)=="CBrnTCAmol_3.1")
Srm8005M <- which(colnames(TCA.df)=="CPlasTCAmol_3.1")
Liv8005F <- which(colnames(TCA.df)=="CLivTCAmol_4.1")
Kid8005F <- which(colnames(TCA.df)=="CKidTCAmol_4.1")
Brn8005F <- which(colnames(TCA.df)=="CBrnTCAmol_4.1")
Srm8005F <- which(colnames(TCA.df)=="CPlasTCAmol_4.1")
 
j2.1 <- Liv8005M:(Liv8005M+5) 
k2.1 <- Kid8005M:(Kid8005M+5)
l2.1 <- Brn8005M:(Brn8005M+5)
m2.1 <- Srm8005M:(Srm8005M+5)

j2.2 <- Liv8005F:(Liv8005F+5) 
k2.2 <- Kid8005F:(Kid8005F+5)
l2.2 <- Brn8005F:(Brn8005F+5)
m2.2 <- Srm8005F:(Srm8005F+5)

#
source("AU18042TCA.R")
source("AU8005TCA.R")
  