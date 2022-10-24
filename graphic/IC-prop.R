n=500
x=rbinom(n,1,0.5)
kn=cumsum(x)/(1:n)
q=qnorm(0.975)

ic1=kn-q*sqrt(kn*(1-kn))/sqrt(1:n)
ic2=kn+q*sqrt(kn*(1-kn))/sqrt(1:n)

plot(kn,type="l",ylab="proportion",xlab="taille",ylim=c(0,1),lwd=2)
abline(h=0.5,lty=4,,lwd=2,col="red")
lines(ic1,col="blue",lty=2,lwd=2)
lines(ic2,col="blue",lty=2,lwd=2)

title(main="Proportion de succès")
legend(420,1,c("vraie valeur","estimateur","bornes de confiance"),lty=c(4,1,3),lwd=c(2,2,2),col=c("red","black","blue"),cex=0.7)
