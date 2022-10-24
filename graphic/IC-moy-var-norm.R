
n=500
x=rnorm(n)
mu=(cumsum(x))/(1:n)
ss=cumsum((x-mu)^2)
s=c(ss[1],ss[2:n]/(1:(n-1)))
sd<-sqrt(s)

q=qt(0.975,n-1)
icm1=mu-q*sd/sqrt(1:n)
icm2=mu+q*sd/sqrt(1:n)

l1=qchisq(0.025,n-1)
l2=qchisq(0.975,n-1)
icv1=((n-1)*s^2)/l2
icv2=((n-1)*s^2)/l1

op<-par(mfrow=c(1,2))
plot(mu,type="l",lwd=2,ylab="moyenne",xlab="taille", ylim=c(-0.5,0.5))
abline(h=0,,lty=4,col="red",lwd=2)
lines(icm1,col="blue",lty=3,lwd=2)
lines(icm2,col="blue",lty=3,lwd=2)

plot(s,type="l",lwd=2,ylab="variance",xlab="taille", ylim=c(0.5,1.5))

abline(h=1,lty=4,col="red",lwd=2)
lines(icv1,col="blue",lty=3,lwd=2)
lines(icv2,col="blue",lty=3,lwd=2)

par(op)
 title(main="Population normale")
legend(435,1.55,c("vraie valeur","estimateur","bornes de confiance"),lty=c(4,1,3),lwd=c(2,2,2),col=c("red","black","blue"),cex=0.7)


