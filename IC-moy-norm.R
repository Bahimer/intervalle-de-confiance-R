n=500
x=rnorm(n)
mu=(cumsum(x))/(1:n)

q=qt(0.975,n-1)
icm1=mu-q*sd/sqrt(1:n)
icm2=mu+q*sd/sqrt(1:n)



op<-par(mfrow=c(1,1))
plot(mu,type="l",lwd=2,ylab="moyenne",xlab="taille", ylim=c(-0.5,0.5))
abline(h=0,,lty=4,col="red",lwd=2)
lines(icm1,col="blue",lty=3,lwd=2)
lines(icm2,col="blue",lty=3,lwd=2)


par(op)
 title(main="Population normale")
legend(400,0.5,c("vraie valeur","estimateur","bornes de confiance"),lty=c(4,1,3),lwd=c(2,2,2),col=c("red","black","blue"),cex=0.7)
