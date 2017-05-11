library("fitdistrplus")

alpha<-c(5.152,2.595,4.744,5.727,13.519,2.170,8.017,
         3.948,1.486,10.572,0.249,9.116,6.186,9.942,5.423,4.108)
beta<-c(0.130,0.114,0.171,0.141,0.241,0.168,0.166,
        0.162,0.139,0.138,0.098,0.104,0.242,0.194,0.177,0.166)
ke<-c(0.149,0.119,0.359,0.267,0.750,0.181,0.361,
      0.247,0.143,0.159,0.121,0.283,0.539,0.595,0.574,0.174)
df<-data.frame(alpha,beta,ke)
df$k21<-df$alpha*df$beta/df$ke
df$k12<-df$alpha+df$beta-df$ke-df$k21

fke <- fitdist(df$ke, "lnorm")
summary(fke)
plot(fke)

fk21 <- fitdist(df$k21, "lnorm")
summary(fk21)
plot(fk21)

fk12 <- fitdist(df$k12, "lnorm")
summary(fk12)
plot(fk12)

png(file="CDFQQ.png",width=3000,height=2000,res=300)
par(mfrow=c(2,3))
cdfcomp(fke, legendtext="ke")
cdfcomp(fk12, legendtext="k12")
cdfcomp(fk21, legendtext="k21")
qqcomp(fke, addlegend=FALSE)
qqcomp(fk12, addlegend=FALSE)
qqcomp(fk21, addlegend=FALSE)
dev.off()