n=1000
x=rnorm(n)
mu=cumsum(x)/(1:n)
ss=cumsum(x-mu)^2
s=c(ss[1],ss[2:n]/(1:(n-1)))
q=qt(0.975,n-1)
ic1=mu+q*s/sqrt(1:n)
ic2=mu-q*s/sqrt(1:n)
plot(mu,type="l",ylab="moyenne",xlab="taille")
abline(h=0,col="red")
lines(ic1,col="blue",lty="dotted")
lines(ic2,col="blue",lty="dotted")

