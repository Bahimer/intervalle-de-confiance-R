
n=500
x1=rexp(n)
x2=rpois(n,1)
mu1=(cumsum(x1))/(1:n)
mu2=(cumsum(x2))/(1:n)
ss1=cumsum((x1-mu1)^2)
s1=c(ss1[1],ss1[2:n]/(1:(n-1)))
sd1<-sqrt(s1)

ss2=cumsum((x2-mu2)^2)
s2=c(ss2[1],ss2[2:n]/(1:(n-1)))
sd2<-sqrt(s2)

q=qt(0.975,n-1)

ice1=mu1-q*sd1/sqrt(1:n)
ice2=mu1+q*sd1/sqrt(1:n)

icp1=mu2-q*sd2/sqrt(1:n)
icp2=mu2+q*sd2/sqrt(1:n)


op<-par(mfrow=c(1,2))
plot(mu1,type="l",ylab="moyenne",xlab="taille",ylim=c(0.5,1.5),lwd=2,main="Exponentielle")
abline(h=1,lty=4,col="red",lwd=2)
lines(ice1,col="blue",lty=3,lwd=2)
lines(ice2,col="blue",lty=3,lwd=2)

plot(mu2,type="l",ylab="moyenne",xlab="taille",ylim=c(0.5,1.5),lwd=2,main="Poisson")
abline(h=1,,lty=4,col="red",lwd=2)
lines(icp1,col="blue",lty=3,lwd=2)
lines(icp2,col="blue",lty=3,lwd=2)
par(op)

legend(435,1.55,c("vraie valeur","estimateur","bornes de confiance"),lwd=c(2,2,2),lty=c(4,1,3),col=c("red","black","blue"),cex=0.7)

