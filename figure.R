setwd("C:/Users/Nuole/Dropbox/metaketa_taxation/Power Analysis Code")

load("parms.rda")
View(parms)

parm50<-subset(parms, n==50)
parm120<-subset(parms, n==120)
parm220<-subset(parms,n==220)

png("power.png")
plot(parm50$tau, parm50$pow, type="b", pch=16, col = "red",ylab="Power", 
     xlab= expression(tau), main= "Figure 1. Power Analysis with Covariance Adjustment", cex.main=.9)
points(parm120$tau, parm120$pow, type="b", pch = 16, col="blue")
points(parm220$tau, parm220$pow, type="b", pch = 16, col="gray")
abline(a=.8, b = 0, col="black", lty=2)
legend("bottomright", inset=c(.03,.03), c("50", "120", "220"), 
       title="Sample Size", col=c("red", "blue", "gray"), pch=16, lty=1, cex=0.75)
dev.off()
