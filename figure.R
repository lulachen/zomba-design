setwd("C:/Users/Nuole/Dropbox/metaketa_taxation/from_zomba-design")

load("parms.rda")
View(parms)

parm60<-subset(parms, n==60)
parm70<-subset(parms, n==70)
parm80<-subset(parms,n==80)

png("morepower_cluster.png")
plot(parm60$tau, parm60$pow, type="b", pch=16, col = "red",ylab="Power", 
     xlab= expression(tau), main= "Figure 1. Power Analysis with Covariance Adjustment", cex.main=.9)
points(parm70$tau, parm70$pow, type="b", pch = 16, col="blue")
points(parm80$tau, parm80$pow, type="b", pch = 16, col="gray")
abline(a=.8, b = 0, col="black", lty=2)
legend("bottomright", inset=c(.03,.03), c("60", "70", "80"), 
       title="Sample Size", col=c("red", "blue", "gray"), pch=16, lty=1, cex=0.75)
dev.off()
